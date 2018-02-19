// The Play plugin
addSbtPlugin("com.typesafe.play" % "sbt-plugin" % "2.6.11")

resolvers ++= Seq(
  "Typesafe Releases" at "http://repo.typesafe.com/typesafe/releases/",
  "Webjars relabel" at "https://dl.bintray.com/envisia/maven",
  "Webjars" at "http://dl.bintray.com/webjars/maven",
  Resolver.bintrayRepo("webjars","maven"),
  Resolver.jcenterRepo
)

// provides server side compilation of typescript to ecmascript 5 or 3
addSbtPlugin("name.de-vries" % "sbt-typescript" % "2.6.2")

// checks your typescript code for error prone constructions
addSbtPlugin("name.de-vries" % "sbt-tslint" % "5.7.0")

// runs jasmine tests
addSbtPlugin("name.de-vries" % "sbt-jasmine" % "0.0.4")
