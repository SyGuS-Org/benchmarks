

(set-logic BV)

(define-fun origCir ((n349 Bool) (n351 Bool) (n150 Bool) (n335 Bool) )  Bool
  (and (and (and n351 n150) n349) n335)
)


(synth-fun skel ((n349 Bool) (n351 Bool) (n150 Bool) (n335 Bool) )  Bool (
(Start Bool (depth6) )
 
    (depth6 Bool (
      (and depth5 depth5)
      (or depth5 depth5)
      (xor depth6 depth6)
      (not depth6)
      depth5
      
      )
    )
    
    (depth5 Bool (
      (and depth4 depth4)
      (or depth4 depth4)
      (xor depth5 depth5)
      (not depth5)
      depth4
      
      )
    )
    
    (depth4 Bool (
      (and depth3 depth3)
      (or depth3 depth3)
      (xor depth4 depth4)
      (not depth4)
      depth3
      n349 n351 n335 
      )
    )
    
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
      n150  
    )
  )
  
 )
)
(declare-var n349 Bool)
(declare-var n351 Bool)
(declare-var n150 Bool)
(declare-var n335 Bool)

(constraint (= (origCir n349 n351 n150 n335 ) (skel n349 n351 n150 n335 )))
(check-synth)
