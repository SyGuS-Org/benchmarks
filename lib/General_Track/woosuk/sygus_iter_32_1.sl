

(set-logic BV)

(define-fun origCir ((n197 Bool) (n200 Bool) (n203 Bool) (n188 Bool) )  Bool
  (and (not (xor (and n203 (not (xor n200 n197))) (xor n200 n197))) n188)
)


(synth-fun skel ((n197 Bool) (n200 Bool) (n203 Bool) (n188 Bool) )  Bool (
(Start Bool (depth3) )
 
    (depth3 Bool (
      (and depth2 depth2)
      (or depth2 depth2)
      (xor depth3 depth3)
      (not depth3)
      depth2
      
      )
    )
    
    (depth2 Bool (
      (and depth1 depth1)
      (or depth1 depth1)
      (xor depth2 depth2)
      (not depth2)
      depth1
      n197 n200 
      )
    )
    
    (depth1 Bool (
      (and depth0 depth0)
      (or depth0 depth0)
      (xor depth1 depth1)
      (not depth1)
      depth0
      
      )
    )
     
    (depth0 Bool (
      true
      false
      (xor depth0 depth0)
      (not depth0)
      n203 n188  
    )
  )
  
 )
)
(declare-var n197 Bool)
(declare-var n200 Bool)
(declare-var n203 Bool)
(declare-var n188 Bool)

(constraint (= (origCir n197 n200 n203 n188 ) (skel n197 n200 n203 n188 )))
(check-synth)
