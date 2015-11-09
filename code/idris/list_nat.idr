module list_nat

import nat
import pair

data list_nat = nil | cons nat list_nat

l0: list_nat
l0 = nil

l1: list_nat
l1 = cons O l0

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list_nat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

append: list_nat -> list_nat -> list_nat
append nil n = n
append (cons n l) m = cons n (append l m)
