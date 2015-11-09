module set

import list
import ite
import bool
import eq
import nat
import Serialize

||| mkSet is meant to be private
data set a = mkSet (list a)

||| a starting point for building any set
new_set: set a
new_set = mkSet nil


set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l) (mkSet l) (mkSet (v :: l))


eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet l1) (mkSet l2) = and (subset_elements l1 l2) (subset_elements l2 l1)


instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2


instance (Serialize a) => Serialize (set a) where
  toString (mkSet l) = "{" ++ (toStringList l) ++ "}"
