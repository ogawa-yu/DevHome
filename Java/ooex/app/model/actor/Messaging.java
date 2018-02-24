package model.actor;

import akka.actor.ActorRef;
import akka.pattern.Patterns;
import scala.concurrent.Await;
import scala.concurrent.Future;
import scala.concurrent.duration.Duration;
import scala.concurrent.duration.FiniteDuration;
import scala.reflect.ClassTag;
import java.util.concurrent.TimeUnit;

public class Messaging {
    private static final FiniteDuration TIMEOUT_TIME = Duration.create(5, TimeUnit.SECONDS);

    public static Object wait(Class<?> type, Object message, ActorRef actor) throws Exception {
        return Await.result(ask(message, actor).mapTo(classOf(type)), TIMEOUT_TIME);
    }

    private static Future<Object> ask(Object message, ActorRef actor) {
        return Patterns.ask(actor, message, TIMEOUT_TIME.toMillis());
    }

    private static ClassTag<?> classOf(Class<?> type) {
        return new ClassTag() {
            @Override
            public Class<?> runtimeClass() {
                return type;
            }
        };
    }
}
