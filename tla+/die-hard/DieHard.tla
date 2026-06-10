---- MODULE DieHard ----
EXTENDS Naturals

VARIABLES small, big

FillSmall == small' = 3 /\ big' = big
FillBig   == big' = 5  /\ small' = small

====
