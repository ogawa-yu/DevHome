from And import And
from Or import Or
from LogicGate import LogicGate

print("Test ==AND Gate==")
print(And(0, 0))
print(And(0, 1))
print(And(1, 0))
print(And(1, 1))

print("Test ==OR Gate==")
print(Or(0, 0))
print(Or(0, 1))
print(Or(1, 0))
print(Or(1, 1))

print("Test ==Calss AND Gate==")
and_gate = LogicGate(0.5, 0.5, 0.7)
print(and_gate.output(0, 0))
print(and_gate.output(0, 1))
print(and_gate.output(1, 0))
print(and_gate.output(1, 1))

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
