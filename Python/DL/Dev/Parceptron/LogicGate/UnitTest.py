from And import And
from Or import Or
from LogicGate import LogicGate

print("Test ==Calss AND Gate==")
and_gate = LogicGate(0.5, 0.5, 0.7)
print(and_gate.output(0, 0))
print(and_gate.output(0, 1))
print(and_gate.output(1, 0))
print(and_gate.output(1, 1))

print("Test ==Calss OR Gate==")
or_gate = LogicGate(0.5, 0.5, 0.3)
print(or_gate.output(0, 0))
print(or_gate.output(0, 1))
print(or_gate.output(1, 0))
print(or_gate.output(1, 1))

print("Test ==Calss NAND Gate==")
nand_gate = LogicGate(-0.5, -0.5, -0.7)
print(nand_gate.output(0, 0))
print(nand_gate.output(0, 1))
print(nand_gate.output(1, 0))
print(nand_gate.output(1, 1))

print("Test ==Calss NOR Gate==")
nor_gate = LogicGate(-0.5, -0.5, -0.3)
print(nor_gate.output(0, 0))
print(nor_gate.output(0, 1))
print(nor_gate.output(1, 0))
print(nor_gate.output(1, 1))

print("Test XOR Gate")
print(and_gate.output(int(nand_gate.output(0,0)), int(or_gate.output(0,0))))
print(and_gate.output(int(nand_gate.output(0,1)), int(or_gate.output(0,1))))
print(and_gate.output(int(nand_gate.output(1,0)), int(or_gate.output(1,0))))
print(and_gate.output(int(nand_gate.output(1,1)), int(or_gate.output(1,1))))
