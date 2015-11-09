module dna

import list
import pair
import bool
import ite
import nat

data base = A | T | C | G


complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C


complement_strand: list base -> list base
complement_strand nil = nil
complement_strand (h :: t) = map complement_base (h :: t)


strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 (h :: t) = (pair.fst h) :: (strand1 t)


strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 (h :: t) = (pair.snd h) :: (strand2 t)

addcomp: base -> pair base base
addcomp b = mkPair b (complement_base b)


complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = map addcomp (h::t)


isBase: base -> base -> bool
isBase A A = true
isBase T T = true
isBase C C = true
isBase G G = true
isBase _ _ = false

nats: base -> base -> nat
nats b t = ite (isBase b t) (S O) O

counter: base -> list base -> list nat
counter b nil = nil
counter b (h :: t) = (nats b h) :: counter b t


countBase: base -> list base -> nat
countBase b nil = O
countBase b (h :: t) = list.foldr add O (counter b (h :: t))
