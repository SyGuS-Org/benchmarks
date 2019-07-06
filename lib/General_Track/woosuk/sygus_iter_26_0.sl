

(set-logic BV)

(define-fun origCir ((n199 Bool) (n195 Bool) (n192 Bool) (n189 Bool) )  Bool
  (and n199 (not (xor (and n195 (xor n192 n189)) (xor n192 n189))))
)


(synth-fun skel ((n199 Bool) (n195 Bool) (n192 Bool) (n189 Bool) )  Bool (
(Start Bool (depth2) )
 
    (depth2 Bool (
      (and depth1 depth1)
      (or depth1 depth1)
      (xor depth2 depth2)
      (not depth2)
      depth1
      
      )
    )
    
    (depth1 Bool (
      (and depth0 depth0)
      (or depth0 depth0)
      (xor depth1 depth1)
      (not depth1)
      depth0
      n192 
      )
    )
     
    (depth0 Bool (
      true
      false
      (xor depth0 depth0)
      (not depth0)
      n199 n195 n189  
    )
  )
  
 )
)
(declare-var n199 Bool)
(declare-var n195 Bool)
(declare-var n192 Bool)
(declare-var n189 Bool)

(constraint (= (origCir n199 n195 n192 n189 ) (skel n199 n195 n192 n189 )))
(check-synth)
