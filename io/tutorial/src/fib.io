fib := method(
    (call sender doMessage(call message (argAt(0)<=0))
     ifTrue(call sender doMessage(call message 1))
     ifFalse(call sender doMessage(call message fib(n-1) + call message fib(n-2)))))


