module nat

import bool
import pair
import eq
import Serialize


  
||| A data type to represent the natural numbers.  We use a lower case
data nat = O | S nat


||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n


||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)



||| given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)


||| given a pair of natural numbers, return its sum
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) n

sub: nat -> nat -> nat
sub O n = O
sub n O = n
sub (S n) (S m) = sub n m


--exp - given a pair of natural numbers, (x, n), return the value of x raised to the nth power
exp: nat -> nat -> nat
exp O n = O
exp n O = (S O)
exp n (S m) = mult n (exp n m)


-- lep - given a pair of natural numbers, (a, b), return true if a is less than or equal to b, otherwise return false
leq: nat -> nat -> bool
leq O n = true
leq (S n) O = false
leq (S n) (S m) = leq n m


--eqp - given a pair of natural numbers, (a, b), return true if a is equal to be, otherwise return false
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O (S n) = false
eql_nat (S n) O = false
eql_nat (S n) (S m) = eql_nat n m


-- gtp - given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gt: nat -> nat -> bool
gt O (S n) = true
gt n O = false
gt (S n) (S m) = gt n m


-- gep - given a pair of natural numbers, (a, b), return true of a is greater than or equal to b
geq: nat -> nat -> bool
geq O n = true
geq (S n) O = false
geq (S n) (S m) = geq n m


--  ltp - given a pair of natural numbers, (a, b), return true if a is less than b
lt: nat -> nat -> bool
lt O (S n) = true 
lt n O = false
lt (S n) (S m)= lt n m


-- code to compute a fibonacci number
fib: nat -> nat
fib O = (S O)
fib (S O) = (S O)
fib (S (S n)) = (add (fib (S n)) (fib n))

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
