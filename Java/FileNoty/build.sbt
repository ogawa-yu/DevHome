import scala.collection.JavaConverters._


name := """FileNoty"""
version := "1.0"
scalaVersion := "2.12.4"
javaOptions += "--add-modules java.xml.ws.annotation"
libraryDependencies ++= {
  val akkaVersion = "2.5.0"
  val akkaNs = "com.typesafe.akka"
  Seq(
    akkaNs %% "akka-actor" % akkaVersion,
    akkaNs %% "akka-stream" % akkaVersion,
    akkaNs %% "akka-slf4j" % akkaVersion,
    "ch.qos.logback" % "logback-classic" % "1.1.3",
    "org.projectlombok" % "lombok" % "1.16.16",
    akkaNs %% "akka-testkit" % akkaVersion % "test",
    "org.scalatest" %% "scalatest" % "3.0.0" % "test",
    "junit" % "junit" % "4.12" % "test",
    "com.novocode" % "junit-interface" % "0.11-RC1" % "test"
  )
}