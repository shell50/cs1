import set
import list
import eq
import nat

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1

s3: set nat
s3 = set_insert (S (S O)) s2

b0: set bool
b0 = new_set

b1: set bool
b1 = set_insert true b0

b2: set bool
b2 = set_insert true b1

b3: set bool
b3 = set_insert false b2
