import scala.collection.JavaConverters._

enablePlugins(JavaServerAppPackaging)

name := "goticks"
version := "1.0"
organization := "com.goticks"
scalaVersion := "2.12.3"

libraryDependencies ++= {
  val akkaVersion = "2.5.0"
  val akkaHttpVersion = "10.0.0"
  val akkaNs = "com.typesafe.akka"
  Seq(
    akkaNs %% "akka-actor" % akkaVersion,
    akkaNs %% "akka-http-core" % akkaHttpVersion,
    akkaNs %% "akka-http" % akkaHttpVersion,
    akkaNs %% "akka-http-spray-json" % akkaHttpVersion,
    akkaNs %% "akka-slf4j" % akkaVersion,
    "ch.qos.logback" % "logback-classic" % "1.1.3",
    "org.projectlombok" % "lombok" % "1.16.16",
    akkaNs %% "akka-testkit" % akkaVersion % "test",
    "org.scalatest" %% "scalatest" % "3.0.0" % "test",
    "junit" % "junit" % "4.12" % "test"
  )
}
