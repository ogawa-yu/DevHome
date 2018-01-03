package com.goticks

import akka.actor.ActorSystem
import akka.testkit.{ImplicitSender, TestKit}
import akka.util.Timeout
import com.goticks.BoxOffice._
import org.scalatest.{MustMatchers, WordSpecLike}

class BoxOfficeTest extends TestKit(ActorSystem("testsystem"))
  with WordSpecLike
  with MustMatchers
  with ImplicitSender
  with StopSystemAfterAll {

  import scala.concurrent.duration._
  implicit val timeout = Timeout(3 seconds)
  "The BoxOffice Actor" must {
    "create event when a CreateEvent(\"test_createEvent\", 10) if \"test_createEvent\" has not published is sent to it" in {
      val testActor = system.actorOf(BoxOffice.props)

      testActor ! CreateEvent("test_createEvent", 10)
      expectMsg(EventCreated(Event("test_createEvent", 10)))
    }
    "create event when a CreateEvent(\"test_createEvent\", 10) if \"test_createEvent\" has published is sent to it" in {
      val testActor = system.actorOf(BoxOffice.props)

      testActor ! CreateEvent("test_createEvent", 10)
      expectMsg(EventCreated(Event("test_createEvent", 10)))

      testActor ! CreateEvent("test_createEvent", 10)
      expectMsg(EventExists)
    }
    "get event when a GetEvent() is sent to it" in {
      val testActor = system.actorOf(BoxOffice.props)

      testActor ! GetEvent("test_notFound")
      expectMsg(None)

      testActor ! CreateEvent("test_ticketA", 10)
      expectMsg(EventCreated(Event("test_ticketA", 10)))

      testActor ! GetEvent("test_ticketA")
      expectMsg(Some(Event("test_ticketA", 10)))
    }
    "get events when a GetEvents() is sent to it" in {
      val testActor = system.actorOf(BoxOffice.props)

      testActor ! GetEvents
      expectMsg(Events())

      testActor ! CreateEvent("ticketA", 10)
      testActor ! CreateEvent("ticketB", 3)
      testActor ! CreateEvent("ticketC", 6)
      expectMsg(EventCreated(Event("ticketA", 10)))
      expectMsg(EventCreated(Event("ticketB", 3)))
      expectMsg(EventCreated(Event("ticketC", 6)))

      testActor ! GetEvents
      expectMsg(Events(Vector(Event("ticketA", 10), Event("ticketB", 3), Event("ticketC", 6))))
    }
  }

}
