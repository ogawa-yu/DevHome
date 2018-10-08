from jpype import *

startJVM(getDefaultJVMPath(), "-ea")

val = 1
java.lang.System.out.println(val)
java.lang.System.out.println("Hello Jpype")


shutdownJVM()

