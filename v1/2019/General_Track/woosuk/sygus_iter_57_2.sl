

(set-logic BV)

(define-fun origCir ((n317 Bool) (n330 Bool) (n333 Bool) (n151 Bool) )  Bool
  (and (xor n333 (and n330 n317)) n151)
)


(synth-fun skel ((n317 Bool) (n330 Bool) (n333 Bool) (n151 Bool) )  Bool (
(Start Bool (depth4) )
 
    (depth4 Bool (
      (and depth3 depth3)
      (or depth3 depth3)
      (xor depth4 depth4)
      (not depth4)
      depth3
      
      )
    )
    
    (depth3 Bool (
      (and depth2 depth2)
      (or depth2 depth2)
      (xor depth3 depth3)
      (not depth3)
      depth2
      n330 
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
      n317 n333 
      )
    )
     
    (depth0 Bool (
      true
      false
      (xor depth0 depth0)
      (not depth0)
      n151  
    )
  )
  
 )
)
(declare-var n317 Bool)
(declare-var n330 Bool)
(declare-var n333 Bool)
(declare-var n151 Bool)

(constraint (= (origCir n317 n330 n333 n151 ) (skel n317 n330 n333 n151 )))
(check-synth)
