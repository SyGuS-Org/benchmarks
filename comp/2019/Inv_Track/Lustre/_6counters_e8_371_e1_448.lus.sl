(set-logic LIA)

(define-fun __node_init_bool6_0 ((bool6.usr.x_a_0 Bool) (bool6.usr.out_a_0 Bool) (bool6.res.init_flag_a_0 Bool) (bool6.impl.usr.a_a_0 Bool) (bool6.impl.usr.b_a_0 Bool) (bool6.impl.usr.c_a_0 Bool)) Bool
    (and (and (and (and (= bool6.impl.usr.c_a_0 false) (= bool6.impl.usr.a_a_0 false)) (= bool6.usr.out_a_0 (and bool6.impl.usr.a_a_0 bool6.impl.usr.c_a_0))) (= bool6.impl.usr.b_a_0 false)) bool6.res.init_flag_a_0))
(define-fun __node_trans_bool6_0 ((bool6.usr.x_a_1 Bool) (bool6.usr.out_a_1 Bool) (bool6.res.init_flag_a_1 Bool) (bool6.impl.usr.a_a_1 Bool) (bool6.impl.usr.b_a_1 Bool) (bool6.impl.usr.c_a_1 Bool) (bool6.usr.x_a_0 Bool) (bool6.usr.out_a_0 Bool) (bool6.res.init_flag_a_0 Bool) (bool6.impl.usr.a_a_0 Bool) (bool6.impl.usr.b_a_0 Bool) (bool6.impl.usr.c_a_0 Bool)) Bool
    (and (and (and (and (= bool6.impl.usr.c_a_1 (and (and bool6.impl.usr.c_a_0 (not bool6.impl.usr.a_a_0)) (and bool6.impl.usr.b_a_0 bool6.impl.usr.a_a_0))) (= bool6.impl.usr.a_a_1 (not bool6.impl.usr.a_a_0))) (= bool6.usr.out_a_1 (and bool6.impl.usr.a_a_1 bool6.impl.usr.c_a_1))) (= bool6.impl.usr.b_a_1 (or (and (and (not bool6.impl.usr.c_a_0) (not bool6.impl.usr.b_a_0)) bool6.impl.usr.a_a_0) (and bool6.impl.usr.b_a_0 (not bool6.impl.usr.a_a_0))))) (not bool6.res.init_flag_a_1)))
(define-fun __node_init_int6I_0 ((int6I.usr.x_a_0 Bool) (int6I.usr.out_a_0 Bool) (int6I.res.init_flag_a_0 Bool) (int6I.impl.usr.time_a_0 Int)) Bool
    (and (and (= int6I.impl.usr.time_a_0 0) (= int6I.usr.out_a_0 (= int6I.impl.usr.time_a_0 5))) int6I.res.init_flag_a_0))
(define-fun __node_trans_int6I_0 ((int6I.usr.x_a_1 Bool) (int6I.usr.out_a_1 Bool) (int6I.res.init_flag_a_1 Bool) (int6I.impl.usr.time_a_1 Int) (int6I.usr.x_a_0 Bool) (int6I.usr.out_a_0 Bool) (int6I.res.init_flag_a_0 Bool) (int6I.impl.usr.time_a_0 Int)) Bool
    (and (and (= int6I.impl.usr.time_a_1 (ite (= int6I.impl.usr.time_a_0 5) 1 (+ (+ int6I.impl.usr.time_a_0 1) 1))) (= int6I.usr.out_a_1 (= int6I.impl.usr.time_a_1 5))) (not int6I.res.init_flag_a_1)))
(define-fun __node_init_top_0 ((top.usr.x_a_0 Bool) (top.usr.OK_a_0 Bool) (top.res.init_flag_a_0 Bool) (top.res.abs_0_a_0 Bool) (top.res.abs_1_a_0 Bool) (top.res.inst_5_a_0 Bool) (top.res.inst_4_a_0 Int) (top.res.inst_3_a_0 Bool) (top.res.inst_2_a_0 Bool) (top.res.inst_1_a_0 Bool) (top.res.inst_0_a_0 Bool)) Bool
    (let ((X1 Bool top.res.abs_1_a_0)) (let ((X2 Bool top.res.abs_0_a_0)) (and (and (and (= top.usr.OK_a_0 (= X2 X1)) (__node_init_int6I_0 top.usr.x_a_0 top.res.abs_0_a_0 top.res.inst_5_a_0 top.res.inst_4_a_0)) (__node_init_bool6_0 top.usr.x_a_0 top.res.abs_1_a_0 top.res.inst_3_a_0 top.res.inst_2_a_0 top.res.inst_1_a_0 top.res.inst_0_a_0)) top.res.init_flag_a_0))))
(define-fun __node_trans_top_0 ((top.usr.x_a_1 Bool) (top.usr.OK_a_1 Bool) (top.res.init_flag_a_1 Bool) (top.res.abs_0_a_1 Bool) (top.res.abs_1_a_1 Bool) (top.res.inst_5_a_1 Bool) (top.res.inst_4_a_1 Int) (top.res.inst_3_a_1 Bool) (top.res.inst_2_a_1 Bool) (top.res.inst_1_a_1 Bool) (top.res.inst_0_a_1 Bool) (top.usr.x_a_0 Bool) (top.usr.OK_a_0 Bool) (top.res.init_flag_a_0 Bool) (top.res.abs_0_a_0 Bool) (top.res.abs_1_a_0 Bool) (top.res.inst_5_a_0 Bool) (top.res.inst_4_a_0 Int) (top.res.inst_3_a_0 Bool) (top.res.inst_2_a_0 Bool) (top.res.inst_1_a_0 Bool) (top.res.inst_0_a_0 Bool)) Bool
    (let ((X1 Bool top.res.abs_1_a_1)) (let ((X2 Bool top.res.abs_0_a_1)) (and (and (and (= top.usr.OK_a_1 (= X2 X1)) (__node_trans_int6I_0 top.usr.x_a_1 top.res.abs_0_a_1 top.res.inst_5_a_1 top.res.inst_4_a_1 top.usr.x_a_0 top.res.abs_0_a_0 top.res.inst_5_a_0 top.res.inst_4_a_0)) (__node_trans_bool6_0 top.usr.x_a_1 top.res.abs_1_a_1 top.res.inst_3_a_1 top.res.inst_2_a_1 top.res.inst_1_a_1 top.res.inst_0_a_1 top.usr.x_a_0 top.res.abs_1_a_0 top.res.inst_3_a_0 top.res.inst_2_a_0 top.res.inst_1_a_0 top.res.inst_0_a_0)) (not top.res.init_flag_a_1)))))
(synth-inv str_invariant ((top.usr.x Bool) (top.usr.OK Bool) (top.res.init_flag Bool) (top.res.abs_0 Bool) (top.res.abs_1 Bool) (top.res.inst_5 Bool) (top.res.inst_4 Int) (top.res.inst_3 Bool) (top.res.inst_2 Bool) (top.res.inst_1 Bool) (top.res.inst_0 Bool)))

(declare-primed-var top.usr.x Bool)
(declare-primed-var top.usr.OK Bool)
(declare-primed-var top.res.init_flag Bool)
(declare-primed-var top.res.abs_0 Bool)
(declare-primed-var top.res.abs_1 Bool)
(declare-primed-var top.res.inst_5 Bool)
(declare-primed-var top.res.inst_4 Int)
(declare-primed-var top.res.inst_3 Bool)
(declare-primed-var top.res.inst_2 Bool)
(declare-primed-var top.res.inst_1 Bool)
(declare-primed-var top.res.inst_0 Bool)
(define-fun init ((top.usr.x Bool) (top.usr.OK Bool) (top.res.init_flag Bool) (top.res.abs_0 Bool) (top.res.abs_1 Bool) (top.res.inst_5 Bool) (top.res.inst_4 Int) (top.res.inst_3 Bool) (top.res.inst_2 Bool) (top.res.inst_1 Bool) (top.res.inst_0 Bool)) Bool
    (let ((X1 Bool top.res.abs_1)) (let ((X2 Bool top.res.abs_0)) (and (and (and (= top.usr.OK (= X2 X1)) (__node_init_int6I_0 top.usr.x top.res.abs_0 top.res.inst_5 top.res.inst_4)) (__node_init_bool6_0 top.usr.x top.res.abs_1 top.res.inst_3 top.res.inst_2 top.res.inst_1 top.res.inst_0)) top.res.init_flag))))
(define-fun trans ((top.usr.x Bool) (top.usr.OK Bool) (top.res.init_flag Bool) (top.res.abs_0 Bool) (top.res.abs_1 Bool) (top.res.inst_5 Bool) (top.res.inst_4 Int) (top.res.inst_3 Bool) (top.res.inst_2 Bool) (top.res.inst_1 Bool) (top.res.inst_0 Bool) (top.usr.x! Bool) (top.usr.OK! Bool) (top.res.init_flag! Bool) (top.res.abs_0! Bool) (top.res.abs_1! Bool) (top.res.inst_5! Bool) (top.res.inst_4! Int) (top.res.inst_3! Bool) (top.res.inst_2! Bool) (top.res.inst_1! Bool) (top.res.inst_0! Bool)) Bool
    (let ((X1 Bool top.res.abs_1!)) (let ((X2 Bool top.res.abs_0!)) (and (and (and (= top.usr.OK! (= X2 X1)) (__node_trans_int6I_0 top.usr.x! top.res.abs_0! top.res.inst_5! top.res.inst_4! top.usr.x top.res.abs_0 top.res.inst_5 top.res.inst_4)) (__node_trans_bool6_0 top.usr.x! top.res.abs_1! top.res.inst_3! top.res.inst_2! top.res.inst_1! top.res.inst_0! top.usr.x top.res.abs_1 top.res.inst_3 top.res.inst_2 top.res.inst_1 top.res.inst_0)) (not top.res.init_flag!)))))
(define-fun prop ((top.usr.x Bool) (top.usr.OK Bool) (top.res.init_flag Bool) (top.res.abs_0 Bool) (top.res.abs_1 Bool) (top.res.inst_5 Bool) (top.res.inst_4 Int) (top.res.inst_3 Bool) (top.res.inst_2 Bool) (top.res.inst_1 Bool) (top.res.inst_0 Bool)) Bool
    top.usr.OK)

(inv-constraint str_invariant init trans prop)

(check-synth)

