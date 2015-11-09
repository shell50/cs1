module multiply

import nat
import pair

multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (m (multp (mkPair n m)))
