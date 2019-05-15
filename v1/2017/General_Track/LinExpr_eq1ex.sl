(set-logic LIA)

(synth-fun eq1 ( (x Int) (y Int) (z Int) ) Int
    ((Start Int (x
                 y
	  	 z
                 0
                 1
                 (+ Start Start)
                 (- Start Start)
                 (ite StartBool Start Start)))
     (StartBool Bool ((and StartBool StartBool)
                      (or  StartBool StartBool)
                      (not StartBool)
                      (<=  Start Start)
                      (=   Start Start)
                      (>=  Start Start)))))
                      
                      

(define-fun and3 ((b1 Bool) (b2 Bool) (b3 Bool)) Bool ( and ( and b1 b2) b3))



(declare-var x Int ) 
(declare-var y Int ) 
(declare-var z Int ) 


( constraint ( => ( and3 ( = x  38 ) ( = y  11 ) ( = z  35 ) ) ( = ( eq1 x y z )  38  ))) 
( constraint ( => ( and3 ( = x  11 ) ( = y  39 ) ( = z  12 ) ) ( = ( eq1 x y z )  11  ))) 
( constraint ( => ( and3 ( = x   3 ) ( = y  30 ) ( = z   7 ) ) ( = ( eq1 x y z )   3  ))) 
( constraint ( => ( and3 ( = x  29 ) ( = y  28 ) ( = z   4 ) ) ( = ( eq1 x y z )   4  ))) 
( constraint ( => ( and3 ( = x   2 ) ( = y  37 ) ( = z  45 ) ) ( = ( eq1 x y z )  45  ))) 
( constraint ( => ( and3 ( = x  21 ) ( = y  48 ) ( = z   5 ) ) ( = ( eq1 x y z )   5  ))) 
( constraint ( => ( and3 ( = x  23 ) ( = y   8 ) ( = z  10 ) ) ( = ( eq1 x y z )   8  ))) 
( constraint ( => ( and3 ( = x   8 ) ( = y  36 ) ( = z  22 ) ) ( = ( eq1 x y z )  36  ))) 
( constraint ( => ( and3 ( = x  24 ) ( = y  16 ) ( = z   6 ) ) ( = ( eq1 x y z )   6  ))) 
( constraint ( => ( and3 ( = x  27 ) ( = y  16 ) ( = z  25 ) ) ( = ( eq1 x y z )  27  ))) 
( constraint ( => ( and3 ( = x  11 ) ( = y   6 ) ( = z  37 ) ) ( = ( eq1 x y z )  37  ))) 
( constraint ( => ( and3 ( = x  47 ) ( = y  16 ) ( = z  27 ) ) ( = ( eq1 x y z )  16  ))) 
( constraint ( => ( and3 ( = x  10 ) ( = y  21 ) ( = z   7 ) ) ( = ( eq1 x y z )   7  ))) 
( constraint ( => ( and3 ( = x  16 ) ( = y  49 ) ( = z  34 ) ) ( = ( eq1 x y z )  49  ))) 
( constraint ( => ( and3 ( = x  19 ) ( = y   3 ) ( = z  22 ) ) ( = ( eq1 x y z )  22  ))) 
( constraint ( => ( and3 ( = x  16 ) ( = y  25 ) ( = z  19 ) ) ( = ( eq1 x y z )  25  ))) 
( constraint ( => ( and3 ( = x  20 ) ( = y  49 ) ( = z  27 ) ) ( = ( eq1 x y z )  49  ))) 
( constraint ( => ( and3 ( = x  30 ) ( = y   8 ) ( = z  14 ) ) ( = ( eq1 x y z )   8  ))) 
( constraint ( => ( and3 ( = x   1 ) ( = y  31 ) ( = z  29 ) ) ( = ( eq1 x y z )  31  ))) 
( constraint ( => ( and3 ( = x   8 ) ( = y   7 ) ( = z  47 ) ) ( = ( eq1 x y z )  47  ))) 
( constraint ( => ( and3 ( = x  32 ) ( = y  19 ) ( = z   4 ) ) ( = ( eq1 x y z )   4  ))) 
( constraint ( => ( and3 ( = x  21 ) ( = y  17 ) ( = z  21 ) ) ( = ( eq1 x y z )  21  ))) 
( constraint ( => ( and3 ( = x  47 ) ( = y  26 ) ( = z  41 ) ) ( = ( eq1 x y z )  47  ))) 
( constraint ( => ( and3 ( = x   3 ) ( = y  44 ) ( = z  42 ) ) ( = ( eq1 x y z )  44  ))) 
( constraint ( => ( and3 ( = x  39 ) ( = y  14 ) ( = z  44 ) ) ( = ( eq1 x y z )  44  ))) 
( constraint ( => ( and3 ( = x  12 ) ( = y  29 ) ( = z  20 ) ) ( = ( eq1 x y z )  29  ))) 
( constraint ( => ( and3 ( = x  31 ) ( = y  49 ) ( = z  18 ) ) ( = ( eq1 x y z )  18  ))) 
( constraint ( => ( and3 ( = x   9 ) ( = y  30 ) ( = z  26 ) ) ( = ( eq1 x y z )  30  ))) 
( constraint ( => ( and3 ( = x  22 ) ( = y  30 ) ( = z   6 ) ) ( = ( eq1 x y z )   6  ))) 
( constraint ( => ( and3 ( = x   3 ) ( = y  37 ) ( = z  15 ) ) ( = ( eq1 x y z )  37  ))) 
( constraint ( => ( and3 ( = x   1 ) ( = y  21 ) ( = z  35 ) ) ( = ( eq1 x y z )  35  ))) 
( constraint ( => ( and3 ( = x   6 ) ( = y  43 ) ( = z   2 ) ) ( = ( eq1 x y z )   2  ))) 
( constraint ( => ( and3 ( = x  26 ) ( = y  39 ) ( = z  29 ) ) ( = ( eq1 x y z )  39  ))) 
( constraint ( => ( and3 ( = x  17 ) ( = y  44 ) ( = z  24 ) ) ( = ( eq1 x y z )  44  ))) 
( constraint ( => ( and3 ( = x   8 ) ( = y  32 ) ( = z  38 ) ) ( = ( eq1 x y z )  38  ))) 
( constraint ( => ( and3 ( = x   3 ) ( = y  45 ) ( = z  18 ) ) ( = ( eq1 x y z )  45  ))) 
( constraint ( => ( and3 ( = x  22 ) ( = y  25 ) ( = z  16 ) ) ( = ( eq1 x y z )  16  ))) 
( constraint ( => ( and3 ( = x  41 ) ( = y  35 ) ( = z  45 ) ) ( = ( eq1 x y z )  45  ))) 
( constraint ( => ( and3 ( = x  16 ) ( = y   9 ) ( = z  26 ) ) ( = ( eq1 x y z )  26  ))) 
( constraint ( => ( and3 ( = x  24 ) ( = y  13 ) ( = z  15 ) ) ( = ( eq1 x y z )  13  ))) 
( constraint ( => ( and3 ( = x  40 ) ( = y  15 ) ( = z  37 ) ) ( = ( eq1 x y z )  40  ))) 
( constraint ( => ( and3 ( = x  24 ) ( = y  20 ) ( = z  29 ) ) ( = ( eq1 x y z )  29  ))) 
( constraint ( => ( and3 ( = x  27 ) ( = y  45 ) ( = z  17 ) ) ( = ( eq1 x y z )  17  ))) 
( constraint ( => ( and3 ( = x   8 ) ( = y  13 ) ( = z  10 ) ) ( = ( eq1 x y z )  13  ))) 
( constraint ( => ( and3 ( = x  31 ) ( = y  22 ) ( = z  43 ) ) ( = ( eq1 x y z )  43  ))) 
( constraint ( => ( and3 ( = x  20 ) ( = y  24 ) ( = z  40 ) ) ( = ( eq1 x y z )  40  ))) 
( constraint ( => ( and3 ( = x  38 ) ( = y  47 ) ( = z  14 ) ) ( = ( eq1 x y z )  14  ))) 
( constraint ( => ( and3 ( = x   3 ) ( = y  38 ) ( = z   1 ) ) ( = ( eq1 x y z )   1  ))) 
( constraint ( => ( and3 ( = x  50 ) ( = y   5 ) ( = z   9 ) ) ( = ( eq1 x y z )   5  ))) 
( constraint ( => ( and3 ( = x  25 ) ( = y  30 ) ( = z  23 ) ) ( = ( eq1 x y z )  30  ))) 


(check-synth)
