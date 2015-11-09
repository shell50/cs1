module presidents

import list
import bool

||| A record type that gives
||| a president's name, whether or not
||| he served two full terms, his 
||| presidential number, and age when elected.

record presRow where
    constructor MkpresRow
    name : String
    twoterm: bool
    number: Nat
    age: Nat


j: presRow
j = MkpresRow "Jefferson" true 3 58

o: presRow
o = MkpresRow "Obama" true 44 49

n: presRow
n = MkpresRow "Nixon" false 37 56

w: presRow
w = MkpresRow "Washington" true 1 57

c: presRow
c = MkpresRow "Carter" false 39 53

k: Nat
k = age j

b: bool
b = twoterm n

x: Nat
x = number c

m: String
m = name o
