module listTest

import list
import days
import bool
import ite
import nat
import Serialize

weekdayList: list days
weekdayList = Monday :: Tuesday :: Wednesday :: Thursday :: Friday :: nil

length_0: Nat
length_0 = length nil {a = Nat}

length_1: Nat
length_1 = length (true :: nil)

length_2: Nat
length_2 = length (5 :: 10 :: nil)

length_6: Nat
length_6 = length (1 :: 2 :: 3 :: 4 :: 5 :: 6 :: nil)

append_1: list Nat
append_1 = nil ++ (1 :: 2 :: nil)

append_2: list bool
append_2 = (true :: nil) ++ (false :: nil)

append_3: list bool
append_3 = (true :: nil) ++ nil

append_4: list days
append_4 = (Monday :: Tuesday :: Wednesday :: nil) ++ (Thursday :: Friday :: Saturday :: Sunday :: nil)


map_1: list bool
map_1 = map evenb (O :: (S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil)

filter_1: list nat
filter_1 = filter evenb (O :: (S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil)

s: String
s = toString append_2
