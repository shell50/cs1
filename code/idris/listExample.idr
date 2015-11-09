module listExample

import list
import presidents
import bool
import relation
import pair

presList: list presRow
presList = j :: o :: n :: w :: c :: nil

rushmore: list presRow
rushmore = j :: w :: nil


names: list String
names = map name presList

twoterms: list bool
twoterms = map twoterm presList

numbers: list Nat
numbers = map number presList

ages: list Nat
ages = map age presList


||| a function that shows the cumulative presidential numbers of all presidents who have served 2 full terms
totalNumber: Nat
totalNumber = query2 presList twoterm number plus 0

totalAge: Nat
totalAge = query2 presList twoterm age plus 0

countPres: Nat
countPres = query2 presList twoterm countOne plus 0

namesPres: String
namesPres = query2 presList twoterm name (++) ""

aveAge: pair Nat Nat
aveAge = ave_rel presList twoterm age
