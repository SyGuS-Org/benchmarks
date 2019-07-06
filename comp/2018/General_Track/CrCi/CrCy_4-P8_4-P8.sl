;synthesize a countermeasure for the following program
;bool compute( bool k1, bool k2, bool k3, bool r1, bool r2, bool r3, bool r4){
;bool n00;
;bool n01;
;bool n02;
;bool n03;
;bool n04;
;bool n05;
;bool n06;
;bool n07;
;bool n08;
;bool n09;
;bool n10;
;bool n11;
;bool n12;
;bool n13;
;bool n14;
;bool n15;
;bool n16;
;bool n17;
;bool n18;
;bool n19;
;bool n20;
;bool n21;
;bool n22;
;bool n23;
;bool n24;
;bool n25;
;bool n26;
;bool n27;
;bool n28;
;bool n29;
;bool n30;
;bool n31;
;bool n32;
;
; n31 = r3 ^ k3 ;
; n29 = r1 ;
; n28 = r2 ^ k2 ;
; n27 = r3 ^ k3 ;
; n25 = r1 ;
; n24 = r2 ;
; n21 = r2 ^ k2 ;
; n20 = r3 ;
; n19 = r1 ^ k1 ;
; n18 = r3 ^ k3 ;
; n17 = r3 ;
; n16 = r2 ;
; n15 = 1 ^ n31 ;
; n14 = n28 ^ r1 ;
; n13 = 0 ^ n27 ;
; n12 = r2 ^ r1 ;
; n11 = ~ 0 ;
; n10 = r3 & n21 ;
; n09 = n18 ^ n19 ;
; n08 = r2 | r3 ;
; n07 = n14 | n15 ;
; n06 = n12 | n13 ;
; n05 = n10 & n11 ;
; n04 = n06 &  n07 ;
; n03 = n09 ^  n04 ;
; n02 = n03 ^  n05 ;
; n01 = n02 ^  r4 ;
; n00 = n01 ^ n08 ;
; return( n00) ;
;}

(set-logic BV)

(define-fun Spec ((k1 Bool) (k2 Bool) (k3 Bool) (r1 Bool) (r2 Bool) (r3 Bool) (r4 Bool)) Bool
  (xor (xor r4 (xor (xor (and (or (xor r1 r2) (xor (xor r3 k3) false)) (or (xor r1 (xor r2 k2)) (xor (xor r3 k3) true))) (xor (xor r3 k3) (xor r1 k1))) (and (and (xor r2 k2) r3) (not false)))) (or r2 r3))
)
 
(synth-fun Imp ((k1 Bool) (k2 Bool) (k3 Bool) (r1 Bool) (r2 Bool) (r3 Bool) (r4 Bool)) Bool
 ((Start Bool ( (and d1 d1) (or d1 d1) (xor d1 d1) (not d1) ) )
 (d1 Bool ( (and d2 d2) (or d2 d2) (xor d2 d2) (not d2) ) )
 (d2 Bool ( (and d3 d3) (or d3 d3) (xor d3 d3) (not d3) ) )
 (d3 Bool ( (and d4 d4) (or d4 d4) (xor d4 d4) (not d4) ) )
 (d4 Bool ( (and d5 d5) (or d5 d5) (xor d5 d5) (not d5) ) )
 (d5 Bool ( k1 k2 k3 r1 r2 r3 r4 ) ) )
)
 
(declare-var k1 Bool)
(declare-var k2 Bool)
(declare-var k3 Bool)
(declare-var r1 Bool)
(declare-var r2 Bool)
(declare-var r3 Bool)
(declare-var r4 Bool)

(constraint (= (Spec k1 k2 k3 r1 r2 r3 r4) (Imp k1 k2 k3 r1 r2 r3 r4)))
(check-synth)

