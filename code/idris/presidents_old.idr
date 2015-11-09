module presidents_old

import list

data pres = Jefferson | Obama | Nixon | Washington | Carter
data party = Democrat | Republican | None | Democratic_Republican

||| Record represents Name, presidential number, political party, years in office, age when elected.
data presrow = mkPresrow pres party Nat Nat Nat

jeff: presrow
jeff = mkPresrow Jefferson Democratic_Republican 3 8 58

obama: presrow
obama = mkPresrow Obama Democrat 44 8 49

nixon: presrow
nixon = mkPresrow Nixon Republican 37 5 56

wash: presrow
wash = mkPresrow Washington None 1 8 57

cart: presrow
cart = mkPresrow Carter Democrat 39 4 53

presList: list presrow
presList = (cons jeff (cons obama (cons nixon (cons wash (cons cart nil)))))

