module dayBool

import days
import bool
import pair

data dayBool = mkPair days bool

b1: dayBool -> Type
b1 = mkPair Monday true

