(set-logic ALL)
(declare-var initial_4___ucld_6_balance_var (_ BitVec 16))
(declare-var initial_7___ucld_4_balance_var (_ BitVec 16))
(declare-var const_p1 (_ BitVec 8))
(declare-var initial_1___ucld_8_balance_var (_ BitVec 16))
(declare-var const_p2 (_ BitVec 8))
(synth-fun synth_h ((w (_ BitVec 9)) (x (_ BitVec 9)) (y (_ BitVec 9))) Bool)
(declare-var initial_25___ucld_6_balance_var (_ BitVec 16))
(declare-var initial_22___ucld_8_balance_var (_ BitVec 16))
(declare-var state_1___ucld_4_balance_var (_ BitVec 16))
(declare-var initial_28___ucld_4_balance_var (_ BitVec 16))
(declare-var initial_26___ucld_5_decr_var (_ BitVec 9))
(declare-var state_1_done2 Bool)
(declare-var initial_24___ucld_9_decr_var (_ BitVec 9))
(declare-var initial_31_done2 Bool)
(declare-var state_1_steps0 Int)
(declare-var initial_23_steps0 Int)
(declare-var state_1_done0 Bool)
(declare-var initial_29_done0 Bool)
(declare-var initial_33___ucld_7_decr_var (_ BitVec 9))
(declare-var state_1_steps1 Int)
(declare-var initial_32_steps1 Int)
(declare-var state_1___ucld_8_balance_var (_ BitVec 16))
(declare-var state_1_done1 Bool)
(declare-var initial_27_done1 Bool)
(declare-var state_1_steps2 Int)
(declare-var initial_30_steps2 Int)
(declare-var state_1___ucld_6_balance_var (_ BitVec 16))
(constraint (not (or (and  (not (and (bvult (_ bv0 8) const_p1) (bvule const_p1 (_ bv255 8)))) (= initial_30_steps2 initial_32_steps1) (and (bvult (_ bv0 8) const_p2) (bvule const_p2 (_ bv255 8))) (and (bvult (_ bv0 8) const_p1) (bvule const_p1 (_ bv255 8))) (= initial_25___ucld_6_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p1))) (= initial_31_done2 initial_27_done1) (= state_1___ucld_6_balance_var (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (bvsub initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_25___ucld_6_balance_var)) (= state_1_steps2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (+ initial_30_steps2 1) initial_30_steps2)) (= state_1_done1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_27_done1 true)) (= state_1___ucld_8_balance_var (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (bvsub initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_22___ucld_8_balance_var)) (= state_1_steps1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (+ initial_32_steps1 1) initial_32_steps1)) (synth_h initial_26___ucld_5_decr_var initial_33___ucld_7_decr_var initial_24___ucld_9_decr_var) (= state_1_done0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_29_done0 true)) (= state_1_steps0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (+ initial_23_steps0 1) initial_23_steps0)) (= initial_22___ucld_8_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p2))) (= state_1_done2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_31_done2 true)) (= state_1___ucld_4_balance_var (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (bvsub initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_28___ucld_4_balance_var)) (distinct initial_25___ucld_6_balance_var initial_22___ucld_8_balance_var) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (= state_1___ucld_6_balance_var (concat ((_ extract 15 8) state_1___ucld_4_balance_var) (bvadd ((_ extract 7 0) state_1___ucld_4_balance_var) const_p1)))) (= initial_30_steps2 initial_32_steps1) (and (bvult (_ bv0 8) const_p2) (bvule const_p2 (_ bv255 8))) (and (bvult (_ bv0 8) const_p1) (bvule const_p1 (_ bv255 8))) (= initial_25___ucld_6_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p1))) (= initial_31_done2 initial_27_done1) (= state_1___ucld_6_balance_var (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (bvsub initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_25___ucld_6_balance_var)) (= state_1_steps2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (+ initial_30_steps2 1) initial_30_steps2)) (= state_1_done1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_27_done1 true)) (= state_1___ucld_8_balance_var (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (bvsub initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_22___ucld_8_balance_var)) (= state_1_steps1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (+ initial_32_steps1 1) initial_32_steps1)) (synth_h initial_26___ucld_5_decr_var initial_33___ucld_7_decr_var initial_24___ucld_9_decr_var) (= state_1_done0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_29_done0 true)) (= state_1_steps0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (+ initial_23_steps0 1) initial_23_steps0)) (= initial_22___ucld_8_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p2))) (= state_1_done2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_31_done2 true)) (= state_1___ucld_4_balance_var (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (bvsub initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_28___ucld_4_balance_var)) (distinct initial_25___ucld_6_balance_var initial_22___ucld_8_balance_var) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (= state_1_steps2 state_1_steps1)) (= initial_30_steps2 initial_32_steps1) (and (bvult (_ bv0 8) const_p2) (bvule const_p2 (_ bv255 8))) (and (bvult (_ bv0 8) const_p1) (bvule const_p1 (_ bv255 8))) (= initial_25___ucld_6_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p1))) (= initial_31_done2 initial_27_done1) (= state_1___ucld_6_balance_var (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (bvsub initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_25___ucld_6_balance_var)) (= state_1_steps2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (+ initial_30_steps2 1) initial_30_steps2)) (= state_1_done1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_27_done1 true)) (= state_1___ucld_8_balance_var (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (bvsub initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_22___ucld_8_balance_var)) (= state_1_steps1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (+ initial_32_steps1 1) initial_32_steps1)) (synth_h initial_26___ucld_5_decr_var initial_33___ucld_7_decr_var initial_24___ucld_9_decr_var) (= state_1_done0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_29_done0 true)) (= state_1_steps0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (+ initial_23_steps0 1) initial_23_steps0)) (= initial_22___ucld_8_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p2))) (= state_1_done2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_31_done2 true)) (= state_1___ucld_4_balance_var (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (bvsub initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_28___ucld_4_balance_var)) (distinct initial_25___ucld_6_balance_var initial_22___ucld_8_balance_var) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (and (bvult (_ bv0 8) const_p2) (bvule const_p2 (_ bv255 8)))) (= initial_30_steps2 initial_32_steps1) (and (bvult (_ bv0 8) const_p2) (bvule const_p2 (_ bv255 8))) (and (bvult (_ bv0 8) const_p1) (bvule const_p1 (_ bv255 8))) (= initial_25___ucld_6_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p1))) (= initial_31_done2 initial_27_done1) (= state_1___ucld_6_balance_var (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (bvsub initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_25___ucld_6_balance_var)) (= state_1_steps2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (+ initial_30_steps2 1) initial_30_steps2)) (= state_1_done1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_27_done1 true)) (= state_1___ucld_8_balance_var (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (bvsub initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_22___ucld_8_balance_var)) (= state_1_steps1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (+ initial_32_steps1 1) initial_32_steps1)) (synth_h initial_26___ucld_5_decr_var initial_33___ucld_7_decr_var initial_24___ucld_9_decr_var) (= state_1_done0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_29_done0 true)) (= state_1_steps0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (+ initial_23_steps0 1) initial_23_steps0)) (= initial_22___ucld_8_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p2))) (= state_1_done2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_31_done2 true)) (= state_1___ucld_4_balance_var (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (bvsub initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_28___ucld_4_balance_var)) (distinct initial_25___ucld_6_balance_var initial_22___ucld_8_balance_var) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (= state_1___ucld_8_balance_var (concat ((_ extract 15 8) state_1___ucld_4_balance_var) (bvadd ((_ extract 7 0) state_1___ucld_4_balance_var) const_p2)))) (= initial_30_steps2 initial_32_steps1) (and (bvult (_ bv0 8) const_p2) (bvule const_p2 (_ bv255 8))) (and (bvult (_ bv0 8) const_p1) (bvule const_p1 (_ bv255 8))) (= initial_25___ucld_6_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p1))) (= initial_31_done2 initial_27_done1) (= state_1___ucld_6_balance_var (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (bvsub initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_25___ucld_6_balance_var)) (= state_1_steps2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (+ initial_30_steps2 1) initial_30_steps2)) (= state_1_done1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_27_done1 true)) (= state_1___ucld_8_balance_var (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (bvsub initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_22___ucld_8_balance_var)) (= state_1_steps1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (+ initial_32_steps1 1) initial_32_steps1)) (synth_h initial_26___ucld_5_decr_var initial_33___ucld_7_decr_var initial_24___ucld_9_decr_var) (= state_1_done0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_29_done0 true)) (= state_1_steps0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (+ initial_23_steps0 1) initial_23_steps0)) (= initial_22___ucld_8_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p2))) (= state_1_done2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_31_done2 true)) (= state_1___ucld_4_balance_var (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (bvsub initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_28___ucld_4_balance_var)) (distinct initial_25___ucld_6_balance_var initial_22___ucld_8_balance_var) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (distinct state_1___ucld_6_balance_var state_1___ucld_8_balance_var)) (= initial_30_steps2 initial_32_steps1) (and (bvult (_ bv0 8) const_p2) (bvule const_p2 (_ bv255 8))) (and (bvult (_ bv0 8) const_p1) (bvule const_p1 (_ bv255 8))) (= initial_25___ucld_6_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p1))) (= initial_31_done2 initial_27_done1) (= state_1___ucld_6_balance_var (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (bvsub initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_25___ucld_6_balance_var)) (= state_1_steps2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (+ initial_30_steps2 1) initial_30_steps2)) (= state_1_done1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_27_done1 true)) (= state_1___ucld_8_balance_var (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (bvsub initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_22___ucld_8_balance_var)) (= state_1_steps1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (+ initial_32_steps1 1) initial_32_steps1)) (synth_h initial_26___ucld_5_decr_var initial_33___ucld_7_decr_var initial_24___ucld_9_decr_var) (= state_1_done0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_29_done0 true)) (= state_1_steps0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (+ initial_23_steps0 1) initial_23_steps0)) (= initial_22___ucld_8_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p2))) (= state_1_done2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_31_done2 true)) (= state_1___ucld_4_balance_var (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (bvsub initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_28___ucld_4_balance_var)) (distinct initial_25___ucld_6_balance_var initial_22___ucld_8_balance_var) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (synth_h initial_26___ucld_5_decr_var initial_33___ucld_7_decr_var initial_24___ucld_9_decr_var)) (= initial_30_steps2 initial_32_steps1) (and (bvult (_ bv0 8) const_p2) (bvule const_p2 (_ bv255 8))) (and (bvult (_ bv0 8) const_p1) (bvule const_p1 (_ bv255 8))) (= initial_25___ucld_6_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p1))) (= initial_31_done2 initial_27_done1) (= state_1___ucld_6_balance_var (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (bvsub initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_25___ucld_6_balance_var)) (= state_1_steps2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (+ initial_30_steps2 1) initial_30_steps2)) (= state_1_done1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_27_done1 true)) (= state_1___ucld_8_balance_var (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (bvsub initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_22___ucld_8_balance_var)) (= state_1_steps1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (+ initial_32_steps1 1) initial_32_steps1)) (synth_h initial_26___ucld_5_decr_var initial_33___ucld_7_decr_var initial_24___ucld_9_decr_var) (= state_1_done0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_29_done0 true)) (= state_1_steps0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (+ initial_23_steps0 1) initial_23_steps0)) (= initial_22___ucld_8_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p2))) (= state_1_done2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_31_done2 true)) (= state_1___ucld_4_balance_var (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (bvsub initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_28___ucld_4_balance_var)) (distinct initial_25___ucld_6_balance_var initial_22___ucld_8_balance_var) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (= state_1_done2 state_1_done1)) (= initial_30_steps2 initial_32_steps1) (and (bvult (_ bv0 8) const_p2) (bvule const_p2 (_ bv255 8))) (and (bvult (_ bv0 8) const_p1) (bvule const_p1 (_ bv255 8))) (= initial_25___ucld_6_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p1))) (= initial_31_done2 initial_27_done1) (= state_1___ucld_6_balance_var (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (bvsub initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_25___ucld_6_balance_var)) (= state_1_steps2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (+ initial_30_steps2 1) initial_30_steps2)) (= state_1_done1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) initial_27_done1 true)) (= state_1___ucld_8_balance_var (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) (bvsub initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_22___ucld_8_balance_var)) (= state_1_steps1 (ite (bvsge initial_25___ucld_6_balance_var ((_ zero_extend 7) initial_33___ucld_7_decr_var)) (+ initial_32_steps1 1) initial_32_steps1)) (synth_h initial_26___ucld_5_decr_var initial_33___ucld_7_decr_var initial_24___ucld_9_decr_var) (= state_1_done0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_29_done0 true)) (= state_1_steps0 (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (+ initial_23_steps0 1) initial_23_steps0)) (= initial_22___ucld_8_balance_var (concat ((_ extract 15 8) initial_28___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_28___ucld_4_balance_var) const_p2))) (= state_1_done2 (ite (bvsge initial_22___ucld_8_balance_var ((_ zero_extend 7) initial_24___ucld_9_decr_var)) initial_31_done2 true)) (= state_1___ucld_4_balance_var (ite (bvsge initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) (bvsub initial_28___ucld_4_balance_var ((_ zero_extend 7) initial_26___ucld_5_decr_var)) initial_28___ucld_4_balance_var)) (distinct initial_25___ucld_6_balance_var initial_22___ucld_8_balance_var) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (and (bvult (_ bv0 8) const_p1) (bvule const_p1 (_ bv255 8)))) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1)))) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (= 0 0)) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (and (bvult (_ bv0 8) const_p2) (bvule const_p2 (_ bv255 8)))) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2)))) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (distinct initial_4___ucld_6_balance_var initial_1___ucld_8_balance_var)) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (synth_h (_ bv256 9) (_ bv256 9) (_ bv256 9))) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1))))	
(and  (not (= (bvslt initial_1___ucld_8_balance_var ((_ zero_extend 7) (_ bv256 9))) (bvslt initial_4___ucld_6_balance_var ((_ zero_extend 7) (_ bv256 9))))) (= initial_1___ucld_8_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p2))) (bvsge initial_7___ucld_4_balance_var (_ bv0 16)) (bvsge initial_4___ucld_6_balance_var (_ bv0 16)) (and (distinct const_p1 (_ bv0 8)) (and (distinct const_p2 (_ bv0 8)) (distinct const_p1 const_p2))) (bvsge initial_1___ucld_8_balance_var (_ bv0 16)) (= initial_4___ucld_6_balance_var (concat ((_ extract 15 8) initial_7___ucld_4_balance_var) (bvadd ((_ extract 7 0) initial_7___ucld_4_balance_var) const_p1)))))))
(check-synth)