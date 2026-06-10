---- MODULE DieHard ----
EXTENDS Naturals

VARIABLES small, big

TypeOK == small \in 0..3 /\ big \in 0..5

Init == small = 0 /\ big = 0

FillSmall == small' = 3 /\ big' = big
FillBig   == big' = 5  /\ small' = small

====
