package com.ogw.akka.ExampleActor
import akka.actor.ActorSystem
import akka.actor.Props
import akka.actor.Actor
import akka.event.Logging

class ExampleActor extends Actor {
  val logger_ = Logging(context.system, this)

  val child = context.actorOf(
    Props(classOf[ExampleChildActor], "arg3", "arg4"), name = "exChild")
  def receive = {
    case s: String => {
      logger_.info("received: %s", s)
      child ! s
    }
    case _ => {
      logger_.info("unknown")
    }
  }
} 

class ExampleChildActor(arg1: String, arg2: String) extends Actor {
  val log = Logging(context.system, this)
  def receive = {
    case s: String => {
      log.info("args: %s, %s, received: %s" format (arg1, arg2, s))
    }
    case _ => {
    }
  }
}

object Main {
  def main(args: Array[String]): Unit = {

    // とても重い処理。アプリケーション内に一つだけ作るようにします。
    val system = ActorSystem("mySystem") // 名前はログなどに記載されます。

    // アクターの設定。イミュータブルにすることでスレッドセーフにします。
    val props1 = Props[ExampleActor]
    val props2 = Props(classOf[ExampleChildActor], "myArg1", "myArg2") // 引数あり

    // アクターの生成。ActorRef が返ります。
    val actor1 = system.actorOf(props1, name = "myActor1") // 名前はログなどで使用されます。
    val actor2 = system.actorOf(props2, name = "myActor2") // 名前の重複はアクター間で許されません。

    while(true) {
      actor1 ! "hi actor1"
      actor2 ! "hi actor2"
      Thread.sleep(1000)
    }
  }
}