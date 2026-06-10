---- MODULE DieHard ----
EXTENDS Naturals

Min(a, b) == IF a < b THEN a ELSE b

VARIABLES small, big

TypeOK == small \in 0..3 /\ big \in 0..5

Init == small = 0 /\ big = 0

FillSmall  == small' = 3   /\ big' = big
FillBig    == big' = 5     /\ small' = small
EmptySmall == small' = 0   /\ big' = big
EmptyBig   == big' = 0     /\ small' = small

SmallToBig == /\ big'   = Min(big + small, 5)
              /\ small' = small - (big' - big)

BigToSmall == /\ small' = Min(small + big, 3)
              /\ big'   = big - (small' - small)

Next == \/ FillSmall
        \/ FillBig
        \/ EmptySmall
        \/ EmptyBig
        \/ SmallToBig
        \/ BigToSmall

====
