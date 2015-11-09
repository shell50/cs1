module set_spec_Test

import set_adt_hw
import bool
import option
import pair
import list
import nat
import eq
import Serialize

--expect true
isEmpty_1: bool
isEmpty_1 = isEmpty (mkSet nil) {a = nat}

--expect false
isEmpty_2: bool
isEmpty_2 = isEmpty (mkSet (true::false::nil))


--expect a set containing true and false
set_insert1: set bool
set_insert1 = (set_insert true (mkSet (false::nil)))

--expect a set containing true and false
set_insert2: set bool
set_insert2 = (set_insert true (mkSet (false::true::nil)))

--expect a set containing 0, 1, 2, and 3
set_insert3: set nat
set_insert3 = (set_insert (S (S (S O))) (mkSet (O::(S O):: (S (S O))::nil)))

--expect a set containing 1
set_insert4: set nat
set_insert4 = (set_insert (S O) (mkSet nil))



--expect an empty set
set_remove1: set bool
set_remove1 = (set_remove true (mkSet nil))

--expect a set containing false
set_remove2: set bool
set_remove2 = (set_remove true (mkSet (false::nil)))

--expect a set containing false
set_remove3: set bool
set_remove3 = (set_remove true (mkSet (true::false::nil)))

--expect a set containing 0, 1, and 3
set_remove4: set nat
set_remove4 = (set_remove (S (S O)) (mkSet (O::(S O):: (S (S O)):: (S (S (S O)))::nil)))

--expect a set containing 0 and 1
set_remove5: set nat
set_remove5 = (set_remove (S (S O)) (mkSet (O::(S O)::nil)))


--expect 0
cardinality1: nat
cardinality1 = (set_cardinality (mkSet nil) {a = nat}) 

--expect 1
cardinality2: nat
cardinality2 = (set_cardinality (mkSet (true:: false:: nil)))

--expect 3
cardinality3: nat
cardinality3 = (set_cardinality (mkSet ((S O):: (S (S O)) :: O :: nil)))

--expectfalse
member1: bool
member1 = set_member (S O) (mkSet nil) {a = nat}

--expect false
member2: bool
member2 = set_member (S O) (mkSet (O::(S (S O))::nil))

--expect true
member3: bool
member3 = set_member true (mkSet (true::false::nil))

--expect true
member4: bool
member4 = set_member (S O) (mkSet (O::(S O):: (S (S O))::nil))


--expect a set of true and false
union1: set bool
union1 = set_union (mkSet (true::false::nil)) (mkSet nil)

--expect a set of 1 and 2
union2: set nat
union2 = set_union (mkSet nil) (mkSet ((S O) :: (S (S O)) :: nil))

--expect a set of true and false
union3: set bool
union3 = set_union (mkSet (true::nil)) (mkSet (false::nil))

--expect a set of 0, 1, 2, and 3
union4: set nat
union4 = set_union (mkSet ((S O):: (S (S O)):: (S (S (S O))):: nil)) (mkSet (O :: (S O):: (S (S O))::nil))


--expect nil
intersect1: set bool
intersect1 = set_intersection (mkSet nil) (mkSet (true::false::nil))

--expect nil
intersect2: set nat
intersect2 = set_intersection (mkSet (O::(S O):: (S (S O))::nil)) (mkSet nil)

--expect true
intersect3: set bool
intersect3 = set_intersection (mkSet (true::false::nil)) (mkSet (true::nil))

--expect 1, 2
intersect4: set nat
intersect4 = set_intersection (mkSet (O::(S O) :: (S (S O))::nil)) (mkSet ((S O):: (S (S O)):: (S (S (S O))):: (S (S (S (S O)))):: nil))


--expect nil
difference1: set bool
difference1 = set_difference (mkSet nil) (mkSet (true::false::nil))

--expect 1, 0, 2
difference2: set nat
difference2 = set_difference (mkSet ((S O):: O :: (S (S O))::nil)) (mkSet nil)

--expect false
difference3: set bool
difference3 = set_difference (mkSet (true::false::nil)) (mkSet (true::nil))

--expect 0, 1
difference4: set nat
difference4 = set_difference (mkSet (O :: (S O) :: (S (S O)) :: (S (S (S O))) ::nil)) (mkSet ((S (S O)) :: (S (S (S O))):: (S (S (S (S O)))) ::nil))


--expect false
forall1: bool
forall1 = set_forall id_bool (mkSet (true::false::nil))

--expect true
forall2: bool
forall2 = set_forall isZero (mkSet (O :: nil))

--expect true
forall3: bool
forall3 = set_forall id_bool (mkSet nil) {a = bool}


--expect false
exists1: bool
exists1 = set_exists isZero (mkSet ((S (S O)) :: (S O) :: (S (S O)) :: nil))

--expect true
exists2: bool
exists2 = set_exists id_bool (mkSet (true::false::nil))

--expect false
exists3: bool
exists3 = set_exists id_bool (mkSet nil) {a = bool}


--expect some O
witness1: option nat
witness1 = set_witness evenb (mkSet (O::(S O):: (S (S O)) :: nil))

--expect none
witness2: option bool
witness2 = set_witness id_bool (mkSet (false :: nil))

--expect none
witness3: option bool
witness3 = set_witness id_bool (mkSet nil)


cartesian1: set (pair nat nat)
cartesian1 = set_product (mkSet (O:: (S O):: (S (S O))::nil)) (mkSet nil)

cartesian2: set (pair nat nat)
cartesian2 = set_product (mkSet (O:: (S O)::(S (S O))::nil)) (mkSet (O::(S O):: nil))

cartesian3: set (pair bool bool)
cartesian3 = set_product (mkSet (true::false::nil)) (mkSet (false::true::nil))

cartesian4: set (pair nat bool)
cartesian4 = set_product (mkSet (O::(S O):: (S (S O))::nil)) (mkSet (true::false::nil))


--expect true
equal1: bool
equal1 = set_eql (mkSet (true::false::nil)) (mkSet (false::true::nil))

--expect false
equal2: bool
equal2 = set_eql (mkSet (O:: (S O) :: (S (S O))::nil)) (mkSet ((S O):: (S (S O)):: (S (S (S O))) :: nil))

--expect false
equal3: bool
equal3 = set_eql (mkSet (true::nil)) (mkSet nil)

--expect false
equal4: bool
equal4 = set_eql (mkSet nil) (mkSet (O::(S O) :: (S (S O))::nil))


string1: String
string1 = set_toString (mkSet (true::nil))

string2: String
string2 = set_toString (mkSet nil) {a = bool}

string3: String
string3 = set_toString (mkSet (O::(S O)::(S (S O))::nil))
