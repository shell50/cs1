module natTest

import nat
import pair
import bool

-- test for add
add1: nat
add1 = add O (S (S O))
add2: nat
add2 = add (S (S (S (S O)))) O
add3: nat
add3 = add (S (S (S O))) (S O)
add4: nat
add4 = add (S (S O)) (S (S (S O)))


--test for mult
mult1: nat
mult1 = mult O (S (S O))
mult2: nat
mult2 = mult (S (S (S O))) O
mult3: nat
mult3 = mult (S (S O)) (S O)
mult4: nat
mult4 = mult (S (S O)) (S (S (S (S O))))


-- test for fact
fact1: nat
fact1 = fact O
fact2: nat
fact2 = fact (S O)
fact3: nat
fact3 = fact (S (S (S (S O))))


-- test for sub
sub1: nat
sub1 = sub O (S (S O))
sub2: nat
sub2 = sub (S (S O)) O
sub3: nat
sub3 = sub (S (S O)) (S (S (S O)))
sub4: nat
sub4 = sub (S (S (S (S (S O))))) (S (S (S O)))



-- test for exp
exp1: nat
exp1 = exp O (S O)
exp2: nat
exp2 = exp O O
exp3: nat
exp3 = exp (S (S (S O))) O
exp4: nat
exp4 = exp (S (S (S O))) (S (S (S (S O))))


--test for leq
leq1: bool
leq1 = leq O O
leq2: bool
leq2 = leq O (S (S O))
leq3: bool
leq3 = leq (S (S (S (S O)))) O
leq4: bool
leq4 = leq (S (S O)) (S (S O))
leq5: bool
leq5 = leq (S O) (S (S (S (S O))))
leq6: bool
leq6 = leq (S (S (S O))) (S O)


--test for eq

eq1: bool
eq1 = eq O O
eq2: bool
eq2 = eq O (S (S O))
eq3: bool
eq3 = eq (S (S (S (S O)))) O
eq4: bool
eq4 = eq (S O) (S (S O))
eq5: bool
eq5 = eq (S (S (S (S (S O))))) (S (S (S O)))
eq6: bool
eq6 = eq (S (S O)) (S (S O))


-- test fot gt
gt1: bool
gt1 = gt O O
gt2: bool
gt2 = gt O (S (S O))
gt3: bool
gt3 = gt (S (S (S O))) O
gt4: bool
gt4 = gt (S (S O)) (S (S O))
gt5: bool
gt5 = gt (S O) (S (S O))
gt6: bool
gt6 = gt (S (S (S O))) (S (S O))


-- test for geq
geq1: bool
geq1 = geq O O
geq2: bool
geq2 = geq O (S (S O))
geq3: bool
geq3 = geq (S (S (S O))) O
geq4: bool
geq4 = geq (S (S O)) (S (S O))
geq5: bool
geq5 = geq (S O) (S (S O))
geq6: bool
geq6 = geq (S (S (S O))) (S (S O))


-- test for lt
lt1: bool
lt1 = lt O O
lt2: bool
lt2 = lt O (S (S O))
lt3: bool
lt3 = lt (S (S (S (S O)))) O
lt4: bool
lt4 = lt (S (S O)) (S (S O))
lt5: bool
lt5 = lt (S O) (S (S (S (S O))))
lt6: bool
lt6 = lt (S (S (S O))) (S O)


-- test for fib
fib1: nat
fib1 = fib (S O)
fib2: nat
fib2 = fib (S (S O))
fib3: nat
fib3 = fib (S (S (S (S (S (S (S O)))))))

