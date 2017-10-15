import Dependencies._

lazy val root = (project in file(".")).
  settings(
    inThisBuild(List(
      organization := "com.scallable",
      scalaVersion := "2.12.1",
      version      := "0.1.0-SNAPSHOT"
    )),
    name := "Scallable",
    libraryDependencies ++= Seq(
      "org.scalatest" %% "scalatest" % "3.0.1",
      "com.typesafe.akka" %% "akka-actor" % "2.4.+"
    )
  )
