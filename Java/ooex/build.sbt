name := """ooex"""
organization := "org.ooex"

version := "1.0-SNAPSHOT"

lazy val root = (project in file("."))
  .enablePlugins(PlayJava)
  .enablePlugins(SbtWeb)
updateOptions := updateOptions.value.withCachedResolution(cachedResoluton = true)

//we use nodejs to make our typescript build as fast as possible
JsEngineKeys.engineType := JsEngineKeys.EngineType.Node

scalaVersion := "2.12.4"

libraryDependencies ++= {
  val ngVersion="4.2.5"
  Seq(
    guice,
    ehcache,
    "com.typesafe.play" %% "play-json" % "2.6.",
    //angular2 dependencies
    "org.webjars.npm" % "angular__common" % ngVersion,
    "org.webjars.npm" % "angular__compiler" % ngVersion,
    "org.webjars.npm" % "angular__core" % ngVersion,
    "org.webjars.npm" % "angular__http" % ngVersion,
    "org.webjars.npm" % "angular__forms" % ngVersion,
    "org.webjars.npm" % "angular__router" % ngVersion,
    "org.webjars.npm" % "angular__platform-browser-dynamic" % ngVersion,
    "org.webjars.npm" % "angular__platform-browser" % ngVersion,
    "org.webjars.npm" % "systemjs" % "0.20.19",
    "org.webjars.npm" % "rxjs" % "5.5.6",
    "org.webjars.npm" % "reflect-metadata" % "0.1.10",
    "org.webjars.npm" % "zone.js" % "0.8.20",
    "org.webjars.npm" % "core-js" % "2.5.0",
    "org.webjars.npm" % "symbol-observable" % "1.1.0",
    "org.webjars.npm" % "typescript" % "2.7.1",
    "org.webjars.npm" % "react" % "15.4.0",
    "org.webjars.npm" % "types__react" % "15.0.34",
    //lombok
    "org.projectlombok" % "lombok" % "1.16.16",
    //tslint dependency
    "org.webjars.npm" % "tslint-eslint-rules" % "3.4.0",
    "org.webjars.npm" % "tslint-microsoft-contrib" % "4.0.0",
    //"org.webjars.npm" % "codelyzer" % "3.1.1", see below
    "org.webjars.npm" % "types__jasmine" % "2.5.53" % "test",
    //test
    "org.webjars.npm" % "jasmine-core" % "2.6.4",
    "com.typesafe.akka" %% "akka-testkit" % "2.5.8" % "test",
    "junit" % "junit" % "4.12" % "test",
    "com.novocode" % "junit-interface" % "0.11" % "test"
  )
}
dependencyOverrides ++= Seq(
  "org.webjars.npm" % "minimatch" % "3.0.0",
  "org.webjars.npm" % "glob" % "7.1.2"
)

//pipelineStages := Seq(rjs)
resolveFromWebjarsNodeModulesDir := true
(projectTestFile in typescript) := Some("tsconfig.test.json")

tsCodesToIgnore := List(canNotFindModule)

// use the combined tslint and eslint rules plus ng2 lint rules
(rulesDirectories in tslint) := Some(List(
  tslintEslintRulesDir.value,
  ng2LintRulesDir.value //codelyzer uses 'cssauron' which can't resolve 'through' see https://github.com/chrisdickinson/cssauron/pull/10
))
