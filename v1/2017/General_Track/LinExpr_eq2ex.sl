(set-logic LIA)

(synth-fun eq2 ( (x Int) (y Int) (z Int) ) Int
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



( constraint ( => ( and3 ( = x  26 ) ( = y   3 ) ( = z  42 ) ) ( = ( eq2 x y z )  15  ))) 
( constraint ( => ( and3 ( = x  31 ) ( = y  35 ) ( = z   6 ) ) ( = ( eq2 x y z ) -76  ))) 
( constraint ( => ( and3 ( = x  33 ) ( = y  36 ) ( = z  21 ) ) ( = ( eq2 x y z ) -60  ))) 
( constraint ( => ( and3 ( = x  12 ) ( = y  19 ) ( = z  25 ) ) ( = ( eq2 x y z ) -34  ))) 
( constraint ( => ( and3 ( = x  50 ) ( = y  39 ) ( = z  13 ) ) ( = ( eq2 x y z ) -32  ))) 
( constraint ( => ( and3 ( = x  38 ) ( = y  26 ) ( = z  14 ) ) ( = ( eq2 x y z )  67  ))) 
( constraint ( => ( and3 ( = x   3 ) ( = y  41 ) ( = z  29 ) ) ( = ( eq2 x y z ) -167  ))) 
( constraint ( => ( and3 ( = x  49 ) ( = y  12 ) ( = z   2 ) ) ( = ( eq2 x y z ) -254  ))) 
( constraint ( => ( and3 ( = x  24 ) ( = y  35 ) ( = z  50 ) ) ( = ( eq2 x y z ) -53  ))) 
( constraint ( => ( and3 ( = x  48 ) ( = y  47 ) ( = z  32 ) ) ( = ( eq2 x y z ) -59  ))) 
( constraint ( => ( and3 ( = x  17 ) ( = y  25 ) ( = z  34 ) ) ( = ( eq2 x y z ) -40  ))) 
( constraint ( => ( and3 ( = x  10 ) ( = y   7 ) ( = z  20 ) ) ( = ( eq2 x y z )   5  ))) 
( constraint ( => ( and3 ( = x  15 ) ( = y  39 ) ( = z   5 ) ) ( = ( eq2 x y z ) -145  ))) 
( constraint ( => ( and3 ( = x  36 ) ( = y   2 ) ( = z  24 ) ) ( = ( eq2 x y z )  53  ))) 
( constraint ( => ( and3 ( = x  12 ) ( = y   3 ) ( = z  12 ) ) ( = ( eq2 x y z )  17  ))) 
( constraint ( => ( and3 ( = x  24 ) ( = y  40 ) ( = z  39 ) ) ( = ( eq2 x y z ) -89  ))) 
( constraint ( => ( and3 ( = x  39 ) ( = y  44 ) ( = z  29 ) ) ( = ( eq2 x y z ) -74  ))) 
( constraint ( => ( and3 ( = x  20 ) ( = y  43 ) ( = z  43 ) ) ( = ( eq2 x y z ) -112  ))) 
( constraint ( => ( and3 ( = x  21 ) ( = y  18 ) ( = z  27 ) ) ( = ( eq2 x y z )   0  ))) 
( constraint ( => ( and3 ( = x  21 ) ( = y  18 ) ( = z  26 ) ) ( = ( eq2 x y z )  -1  ))) 
( constraint ( => ( and3 ( = x   2 ) ( = y  34 ) ( = z   2 ) ) ( = ( eq2 x y z ) 327  ))) 
( constraint ( => ( and3 ( = x  38 ) ( = y  43 ) ( = z   8 ) ) ( = ( eq2 x y z ) -93  ))) 
( constraint ( => ( and3 ( = x   7 ) ( = y   9 ) ( = z  48 ) ) ( = ( eq2 x y z )  24  ))) 
( constraint ( => ( and3 ( = x  12 ) ( = y  44 ) ( = z  49 ) ) ( = ( eq2 x y z ) -135  ))) 
( constraint ( => ( and3 ( = x  37 ) ( = y   6 ) ( = z   1 ) ) ( = ( eq2 x y z ) -200  ))) 
( constraint ( => ( and3 ( = x  50 ) ( = y  31 ) ( = z  43 ) ) ( = ( eq2 x y z )  62  ))) 
( constraint ( => ( and3 ( = x  38 ) ( = y  22 ) ( = z  38 ) ) ( = ( eq2 x y z )  43  ))) 
( constraint ( => ( and3 ( = x  18 ) ( = y  41 ) ( = z  30 ) ) ( = ( eq2 x y z ) -121  ))) 
( constraint ( => ( and3 ( = x  10 ) ( = y  11 ) ( = z  48 ) ) ( = ( eq2 x y z )  23  ))) 
( constraint ( => ( and3 ( = x  39 ) ( = y  31 ) ( = z  17 ) ) ( = ( eq2 x y z ) -21  ))) 
( constraint ( => ( and3 ( = x  16 ) ( = y  35 ) ( = z  50 ) ) ( = ( eq2 x y z ) -77  ))) 
( constraint ( => ( and3 ( = x  17 ) ( = y  24 ) ( = z  44 ) ) ( = ( eq2 x y z ) -25  ))) 
( constraint ( => ( and3 ( = x  26 ) ( = y  32 ) ( = z   2 ) ) ( = ( eq2 x y z ) -56  ))) 
( constraint ( => ( and3 ( = x  23 ) ( = y  43 ) ( = z  48 ) ) ( = ( eq2 x y z ) -98  ))) 
( constraint ( => ( and3 ( = x  23 ) ( = y  29 ) ( = z   5 ) ) ( = ( eq2 x y z ) -71  ))) 
( constraint ( => ( and3 ( = x  23 ) ( = y  30 ) ( = z  35 ) ) ( = ( eq2 x y z ) -46  ))) 
( constraint ( => ( and3 ( = x  17 ) ( = y  17 ) ( = z   8 ) ) ( = ( eq2 x y z ) -26  ))) 
( constraint ( => ( and3 ( = x   5 ) ( = y  37 ) ( = z  48 ) ) ( = ( eq2 x y z ) -122  ))) 
( constraint ( => ( and3 ( = x  36 ) ( = y  48 ) ( = z   9 ) ) ( = ( eq2 x y z ) -123  ))) 
( constraint ( => ( and3 ( = x  35 ) ( = y  38 ) ( = z  41 ) ) ( = ( eq2 x y z ) -44  ))) 
( constraint ( => ( and3 ( = x   1 ) ( = y   3 ) ( = z  27 ) ) ( = ( eq2 x y z )  15  ))) 
( constraint ( => ( and3 ( = x   2 ) ( = y  21 ) ( = z  50 ) ) ( = ( eq2 x y z ) -49  ))) 
( constraint ( => ( and3 ( = x  45 ) ( = y  48 ) ( = z  32 ) ) ( = ( eq2 x y z ) -73  ))) 
( constraint ( => ( and3 ( = x  47 ) ( = y  20 ) ( = z  26 ) ) ( = ( eq2 x y z )  73  ))) 
( constraint ( => ( and3 ( = x  46 ) ( = y  42 ) ( = z   7 ) ) ( = ( eq2 x y z ) -65  ))) 
( constraint ( => ( and3 ( = x  50 ) ( = y  17 ) ( = z  36 ) ) ( = ( eq2 x y z )  69  ))) 
( constraint ( => ( and3 ( = x  34 ) ( = y  35 ) ( = z   5 ) ) ( = ( eq2 x y z ) -68  ))) 
( constraint ( => ( and3 ( = x  42 ) ( = y  39 ) ( = z  43 ) ) ( = ( eq2 x y z ) -26  ))) 
( constraint ( => ( and3 ( = x  41 ) ( = y  27 ) ( = z  40 ) ) ( = ( eq2 x y z )  47  ))) 
( constraint ( => ( and3 ( = x  49 ) ( = y  11 ) ( = z  28 ) ) ( = ( eq2 x y z )  75  ))) 

(check-synth)
