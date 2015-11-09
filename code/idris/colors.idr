module colors

import bool
import pair

data color = green |yellow | red | magenta | blue | cyan

complement: color -> color
complement green = magenta
complement yellow = blue
complement red = cyan
complement magenta = green
complement blue = yellow
complement cyan = red

additive: color -> bool
additive green = true
additive red = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive t = not (additive t)

complements: (pair color color) -> bool
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true
complements (mkPair blue yellow) = true
complements (mkPair yellow blue) = true
complements (mkPair a b) = false

mixink: (pair color color) -> color
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow magenta) = red
mixink (mkPair cyan magenta) = blue
mixink (mkPair magenta cyan) = blue
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
