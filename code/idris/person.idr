module person

import list
import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name, an age, a height in
||| inches, a gender (true if female,
||| false if male), and a weight.
record Person where
    constructor MkPerson
    name : String
    age: Nat
    height: Nat
    gender: bool
    weight: Nat

-- An example value of type Person
p: Person
p = MkPerson "Tommy" 3 36 false 25

-- And now here's the key idea: The 
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
k: Nat
k = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

j: Person
j = MkPerson "Jake" 18 76 false 160

b: Person
b = MkPerson "Ben" 17 72 false 145

s: Person
s = MkPerson "Stella" 25 64 true 115

l: Person
l = MkPerson "Lauren" 16 60 true 105

a: Nat
a = age j

c: String
c = name b


setName: Person -> String -> Person
setName p n = record { name = n } p

setAge: Person -> Nat -> Person
setAge p a = record { age = a } p

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h :: t) = (age h) :: (mapAge t)

people: list Person
people = p :: j :: b :: s :: l :: nil
