module boolTest

import bool
import pair

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

-- test for and
and1: bool
and1 = and true true
and2: bool
and2 = and true false
and3: bool
and3 = and false true
and4: bool
and4 = and false false

-- test for or
or1: bool
or1 = or true true
or2: bool
or2 = or true false
or3: bool
or3 = or false true
or4: bool
or4 = or false false


-- test for nand
nand1: bool
nand1 = nand true true
nand2: bool
nand2 = nand true false
nand3: bool
nand3 = nand false true
nand4: bool
nand4 = nand false false


-- test for xor
xor1: bool
xor1 = xor true true
xor2: bool
xor2 = xor true false
xor3: bool
xor3 = xor false true
xor4: bool
xor4 = xor false false
