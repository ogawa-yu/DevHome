addSbtPlugin("com.typesafe.play" % "sbt-plugin" % "2.6.11")

resolvers ++= Seq(
  Classpaths.typesafeReleases,
  "Webjars relabel" at "https://dl.bintray.com/envisia/maven",
  "Webjars" at "http://dl.bintray.com/webjars/maven",
  Resolver.bintrayRepo("webjars","maven"),
  Resolver.jcenterRepo
)

addSbtPlugin("com.typesafe.sbt" % "sbt-native-packager" % "1.0.0-RC1")

// provides server side compilation of typescript to ecmascript 5 or 3
addSbtPlugin("name.de-vries" % "sbt-typescript" % "2.6.2")

// checks your typescript code for error prone constructions
addSbtPlugin("name.de-vries" % "sbt-tslint" % "5.7.0")

// runs jasmine tests
addSbtPlugin("name.de-vries" % "sbt-jasmine" % "0.0.4")
