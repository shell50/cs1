module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and a death rate per 10,000,000 by gun for homicides, suicides, unintentional, other
data gunrow = mkGunrow country Nat Nat Nat Nat


argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austral: gunrow
austral = mkGunrow Australia 11 62 5 8

austri: gunrow
austri = mkGunrow Austria 18 268 1 8

hondo: gunrow
hondo = mkGunrow Honduras 6480 0 0 0

america: gunrow
america = mkGunrow USA 355 670 16 9



homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow a b c d e) = b

countryName: gunrow -> country
countryName (mkGunrow a b c d e) = a

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow a b c d e) = c

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow a b c d e) = d

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow a b c d e) = e

listGunrow: list gunrow
listGunrow = (cons argen (cons austral (cons austri (cons hondo (cons america nil))))) 
