(set-logic LIA)

(define-fun __node_init_Sofar_0 ((Sofar.usr.X_a_0 Bool) (Sofar.usr.Sofar_a_0 Bool) (Sofar.res.init_flag_a_0 Bool)) Bool
    (and (= Sofar.usr.Sofar_a_0 Sofar.usr.X_a_0) Sofar.res.init_flag_a_0))
(define-fun __node_trans_Sofar_0 ((Sofar.usr.X_a_1 Bool) (Sofar.usr.Sofar_a_1 Bool) (Sofar.res.init_flag_a_1 Bool) (Sofar.usr.X_a_0 Bool) (Sofar.usr.Sofar_a_0 Bool) (Sofar.res.init_flag_a_0 Bool)) Bool
    (and (= Sofar.usr.Sofar_a_1 (and Sofar.usr.X_a_1 Sofar.usr.Sofar_a_0)) (not Sofar.res.init_flag_a_1)))
(define-fun __node_init_controleur_0 ((controleur.usr.nB_a_0 Int) (controleur.usr.nS_a_0 Int) (controleur.usr.diff_a_0 Int) (controleur.usr.avance_a_0 Bool) (controleur.usr.retard_a_0 Bool) (controleur.res.init_flag_a_0 Bool)) Bool
    (and (and (and (= controleur.usr.diff_a_0 (- controleur.usr.nB_a_0 controleur.usr.nS_a_0)) (= controleur.usr.avance_a_0 false)) (= controleur.usr.retard_a_0 false)) controleur.res.init_flag_a_0))
(define-fun __node_trans_controleur_0 ((controleur.usr.nB_a_1 Int) (controleur.usr.nS_a_1 Int) (controleur.usr.diff_a_1 Int) (controleur.usr.avance_a_1 Bool) (controleur.usr.retard_a_1 Bool) (controleur.res.init_flag_a_1 Bool) (controleur.usr.nB_a_0 Int) (controleur.usr.nS_a_0 Int) (controleur.usr.diff_a_0 Int) (controleur.usr.avance_a_0 Bool) (controleur.usr.retard_a_0 Bool) (controleur.res.init_flag_a_0 Bool)) Bool
    (and (and (and (= controleur.usr.diff_a_1 (- controleur.usr.nB_a_1 controleur.usr.nS_a_1)) (= controleur.usr.avance_a_1 (ite (not controleur.usr.avance_a_0) (>= controleur.usr.diff_a_1 10) (> controleur.usr.diff_a_1 0)))) (= controleur.usr.retard_a_1 (ite (not controleur.usr.retard_a_0) (<= controleur.usr.diff_a_1 (- 0 10)) (< controleur.usr.diff_a_1 0)))) (not controleur.res.init_flag_a_1)))
(define-fun __node_init_hypothese_0 ((hypothese.usr.B_a_0 Bool) (hypothese.usr.S_a_0 Bool) (hypothese.usr.avance_a_0 Bool) (hypothese.usr.retard_a_0 Bool) (hypothese.usr.ok_a_0 Bool) (hypothese.res.init_flag_a_0 Bool) (hypothese.impl.usr.c_a_0 Int)) Bool
    (and (and (= hypothese.usr.ok_a_0 true) (= hypothese.impl.usr.c_a_0 0)) hypothese.res.init_flag_a_0))
(define-fun __node_trans_hypothese_0 ((hypothese.usr.B_a_1 Bool) (hypothese.usr.S_a_1 Bool) (hypothese.usr.avance_a_1 Bool) (hypothese.usr.retard_a_1 Bool) (hypothese.usr.ok_a_1 Bool) (hypothese.res.init_flag_a_1 Bool) (hypothese.impl.usr.c_a_1 Int) (hypothese.usr.B_a_0 Bool) (hypothese.usr.S_a_0 Bool) (hypothese.usr.avance_a_0 Bool) (hypothese.usr.retard_a_0 Bool) (hypothese.usr.ok_a_0 Bool) (hypothese.res.init_flag_a_0 Bool) (hypothese.impl.usr.c_a_0 Int)) Bool
    (and (and (= hypothese.usr.ok_a_1 (and (ite hypothese.usr.retard_a_0 (not hypothese.usr.S_a_1) true) (ite (>= hypothese.impl.usr.c_a_0 9) (not hypothese.usr.B_a_1) true))) (= hypothese.impl.usr.c_a_1 (ite (and hypothese.usr.avance_a_0 hypothese.usr.avance_a_1) (ite hypothese.usr.B_a_1 (+ (- hypothese.impl.usr.c_a_0 1) 1) hypothese.impl.usr.c_a_0) 0))) (not hypothese.res.init_flag_a_1)))
(define-fun __node_init_main_0 ((main.usr.B0_a_0 Bool) (main.usr.B1_a_0 Bool) (main.usr.S_a_0 Bool) (main.usr.ast_a_0 Bool) (main.usr.nB0_a_0 Int) (main.usr.nB1_a_0 Int) (main.usr.nS_a_0 Int) (main.usr.diff0_a_0 Int) (main.usr.diff1_a_0 Int) (main.usr.avance0_a_0 Bool) (main.usr.avance1_a_0 Bool) (main.usr.retard0_a_0 Bool) (main.usr.retard1_a_0 Bool) (main.res.init_flag_a_0 Bool) (main.res.abs_0_a_0 Bool) (main.res.abs_1_a_0 Bool) (main.res.abs_2_a_0 Int) (main.res.abs_3_a_0 Bool) (main.res.abs_4_a_0 Bool) (main.res.abs_5_a_0 Int) (main.res.abs_6_a_0 Bool) (main.res.abs_7_a_0 Bool) (main.res.inst_5_a_0 Bool) (main.res.inst_4_a_0 Int) (main.res.inst_3_a_0 Bool) (main.res.inst_2_a_0 Bool) (main.res.inst_1_a_0 Int) (main.res.inst_0_a_0 Bool)) Bool
    (let ((X1 Bool main.res.abs_1_a_0)) (let ((X2 Bool main.res.abs_0_a_0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= main.usr.ast_a_0 (and X2 X1)) (= main.usr.avance0_a_0 main.res.abs_3_a_0)) (= main.usr.nB0_a_0 0)) (= main.usr.nS_a_0 0)) (= main.usr.retard0_a_0 main.res.abs_4_a_0)) (= main.usr.avance1_a_0 main.res.abs_6_a_0)) (= main.usr.nB1_a_0 0)) (= main.usr.retard1_a_0 main.res.abs_7_a_0)) (= main.usr.diff0_a_0 main.res.abs_2_a_0)) (= main.usr.diff1_a_0 main.res.abs_5_a_0)) (__node_init_hypothese_0 main.usr.B0_a_0 main.usr.S_a_0 main.usr.avance0_a_0 main.usr.retard0_a_0 main.res.abs_0_a_0 main.res.inst_5_a_0 main.res.inst_4_a_0)) (__node_init_controleur_0 main.usr.nB0_a_0 main.usr.nS_a_0 main.res.abs_2_a_0 main.res.abs_3_a_0 main.res.abs_4_a_0 main.res.inst_3_a_0)) (__node_init_hypothese_0 main.usr.B1_a_0 main.usr.S_a_0 main.usr.avance1_a_0 main.usr.retard1_a_0 main.res.abs_1_a_0 main.res.inst_2_a_0 main.res.inst_1_a_0)) (__node_init_controleur_0 main.usr.nB1_a_0 main.usr.nS_a_0 main.res.abs_5_a_0 main.res.abs_6_a_0 main.res.abs_7_a_0 main.res.inst_0_a_0)) main.res.init_flag_a_0))))
(define-fun __node_trans_main_0 ((main.usr.B0_a_1 Bool) (main.usr.B1_a_1 Bool) (main.usr.S_a_1 Bool) (main.usr.ast_a_1 Bool) (main.usr.nB0_a_1 Int) (main.usr.nB1_a_1 Int) (main.usr.nS_a_1 Int) (main.usr.diff0_a_1 Int) (main.usr.diff1_a_1 Int) (main.usr.avance0_a_1 Bool) (main.usr.avance1_a_1 Bool) (main.usr.retard0_a_1 Bool) (main.usr.retard1_a_1 Bool) (main.res.init_flag_a_1 Bool) (main.res.abs_0_a_1 Bool) (main.res.abs_1_a_1 Bool) (main.res.abs_2_a_1 Int) (main.res.abs_3_a_1 Bool) (main.res.abs_4_a_1 Bool) (main.res.abs_5_a_1 Int) (main.res.abs_6_a_1 Bool) (main.res.abs_7_a_1 Bool) (main.res.inst_5_a_1 Bool) (main.res.inst_4_a_1 Int) (main.res.inst_3_a_1 Bool) (main.res.inst_2_a_1 Bool) (main.res.inst_1_a_1 Int) (main.res.inst_0_a_1 Bool) (main.usr.B0_a_0 Bool) (main.usr.B1_a_0 Bool) (main.usr.S_a_0 Bool) (main.usr.ast_a_0 Bool) (main.usr.nB0_a_0 Int) (main.usr.nB1_a_0 Int) (main.usr.nS_a_0 Int) (main.usr.diff0_a_0 Int) (main.usr.diff1_a_0 Int) (main.usr.avance0_a_0 Bool) (main.usr.avance1_a_0 Bool) (main.usr.retard0_a_0 Bool) (main.usr.retard1_a_0 Bool) (main.res.init_flag_a_0 Bool) (main.res.abs_0_a_0 Bool) (main.res.abs_1_a_0 Bool) (main.res.abs_2_a_0 Int) (main.res.abs_3_a_0 Bool) (main.res.abs_4_a_0 Bool) (main.res.abs_5_a_0 Int) (main.res.abs_6_a_0 Bool) (main.res.abs_7_a_0 Bool) (main.res.inst_5_a_0 Bool) (main.res.inst_4_a_0 Int) (main.res.inst_3_a_0 Bool) (main.res.inst_2_a_0 Bool) (main.res.inst_1_a_0 Int) (main.res.inst_0_a_0 Bool)) Bool
    (let ((X1 Bool main.res.abs_1_a_1)) (let ((X2 Bool main.res.abs_0_a_1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= main.usr.ast_a_1 (and X2 X1)) (= main.usr.nS_a_1 (ite main.usr.S_a_1 (+ main.usr.nS_a_0 1) main.usr.nS_a_0))) (= main.usr.nB0_a_1 (ite main.usr.B0_a_1 (+ (- main.usr.nB0_a_0 1) 1) main.usr.nB0_a_0))) (= main.usr.avance0_a_1 main.res.abs_3_a_1)) (= main.usr.retard0_a_1 main.res.abs_4_a_1)) (= main.usr.nB1_a_1 (ite main.usr.B1_a_1 (+ main.usr.nB1_a_0 1) main.usr.nB1_a_0))) (= main.usr.avance1_a_1 main.res.abs_6_a_1)) (= main.usr.retard1_a_1 main.res.abs_7_a_1)) (= main.usr.diff0_a_1 main.res.abs_2_a_1)) (= main.usr.diff1_a_1 main.res.abs_5_a_1)) (__node_trans_hypothese_0 main.usr.B0_a_1 main.usr.S_a_1 main.usr.avance0_a_1 main.usr.retard0_a_1 main.res.abs_0_a_1 main.res.inst_5_a_1 main.res.inst_4_a_1 main.usr.B0_a_0 main.usr.S_a_0 main.usr.avance0_a_0 main.usr.retard0_a_0 main.res.abs_0_a_0 main.res.inst_5_a_0 main.res.inst_4_a_0)) (__node_trans_controleur_0 main.usr.nB0_a_1 main.usr.nS_a_1 main.res.abs_2_a_1 main.res.abs_3_a_1 main.res.abs_4_a_1 main.res.inst_3_a_1 main.usr.nB0_a_0 main.usr.nS_a_0 main.res.abs_2_a_0 main.res.abs_3_a_0 main.res.abs_4_a_0 main.res.inst_3_a_0)) (__node_trans_hypothese_0 main.usr.B1_a_1 main.usr.S_a_1 main.usr.avance1_a_1 main.usr.retard1_a_1 main.res.abs_1_a_1 main.res.inst_2_a_1 main.res.inst_1_a_1 main.usr.B1_a_0 main.usr.S_a_0 main.usr.avance1_a_0 main.usr.retard1_a_0 main.res.abs_1_a_0 main.res.inst_2_a_0 main.res.inst_1_a_0)) (__node_trans_controleur_0 main.usr.nB1_a_1 main.usr.nS_a_1 main.res.abs_5_a_1 main.res.abs_6_a_1 main.res.abs_7_a_1 main.res.inst_0_a_1 main.usr.nB1_a_0 main.usr.nS_a_0 main.res.abs_5_a_0 main.res.abs_6_a_0 main.res.abs_7_a_0 main.res.inst_0_a_0)) (not main.res.init_flag_a_1)))))
(define-fun __node_init_top_0 ((top.usr.B0_a_0 Bool) (top.usr.B1_a_0 Bool) (top.usr.S_a_0 Bool) (top.usr.OK_a_0 Bool) (top.res.init_flag_a_0 Bool) (top.impl.usr.avance0_a_0 Bool) (top.impl.usr.retard0_a_0 Bool) (top.impl.usr.pOK_a_0 Bool) (top.res.abs_0_a_0 Bool) (top.res.abs_1_a_0 Int) (top.res.abs_2_a_0 Int) (top.res.abs_3_a_0 Int) (top.res.abs_4_a_0 Int) (top.res.abs_5_a_0 Int) (top.res.abs_6_a_0 Bool) (top.res.abs_7_a_0 Bool) (top.res.abs_8_a_0 Bool) (top.res.abs_9_a_0 Bool) (top.res.abs_10_a_0 Bool) (top.res.abs_11_a_0 Bool) (top.res.inst_15_a_0 Bool) (top.res.inst_14_a_0 Bool) (top.res.inst_13_a_0 Bool) (top.res.inst_12_a_0 Int) (top.res.inst_11_a_0 Bool) (top.res.inst_10_a_0 Bool) (top.res.inst_9_a_0 Int) (top.res.inst_8_a_0 Bool) (top.res.inst_7_a_0 Bool) (top.res.inst_6_a_0 Bool) (top.res.inst_5_a_0 Int) (top.res.inst_4_a_0 Bool) (top.res.inst_3_a_0 Bool) (top.res.inst_2_a_0 Int) (top.res.inst_1_a_0 Bool) (top.res.inst_0_a_0 Bool)) Bool
    (and (and (and (and (= top.usr.OK_a_0 true) (= top.impl.usr.pOK_a_0 true)) (= top.impl.usr.avance0_a_0 top.res.abs_6_a_0)) (= top.impl.usr.retard0_a_0 top.res.abs_8_a_0)) (let ((X1 Bool top.res.abs_0_a_0)) (let ((X2 Int top.res.abs_4_a_0)) (let ((X3 Int top.res.abs_3_a_0)) (let ((X4 Int top.res.abs_2_a_0)) (let ((X5 Int top.res.abs_1_a_0)) (and (and (and (= top.res.abs_10_a_0 (and (and (and (and X1 (< X5 1)) (< X4 1)) (< X3 1)) (< X2 32767))) (__node_init_main_0 top.usr.B0_a_0 top.usr.B1_a_0 top.usr.S_a_0 top.res.abs_0_a_0 top.res.abs_1_a_0 top.res.abs_2_a_0 top.res.abs_3_a_0 top.res.abs_4_a_0 top.res.abs_5_a_0 top.res.abs_6_a_0 top.res.abs_7_a_0 top.res.abs_8_a_0 top.res.abs_9_a_0 top.res.inst_15_a_0 top.res.inst_14_a_0 top.res.inst_13_a_0 top.res.inst_12_a_0 top.res.inst_11_a_0 top.res.inst_10_a_0 top.res.inst_9_a_0 top.res.inst_8_a_0 top.res.inst_7_a_0 top.res.inst_6_a_0 top.res.inst_5_a_0 top.res.inst_4_a_0 top.res.inst_3_a_0 top.res.inst_2_a_0 top.res.inst_1_a_0)) (__node_init_Sofar_0 top.res.abs_10_a_0 top.res.abs_11_a_0 top.res.inst_0_a_0)) top.res.init_flag_a_0))))))))
(define-fun __node_trans_top_0 ((top.usr.B0_a_1 Bool) (top.usr.B1_a_1 Bool) (top.usr.S_a_1 Bool) (top.usr.OK_a_1 Bool) (top.res.init_flag_a_1 Bool) (top.impl.usr.avance0_a_1 Bool) (top.impl.usr.retard0_a_1 Bool) (top.impl.usr.pOK_a_1 Bool) (top.res.abs_0_a_1 Bool) (top.res.abs_1_a_1 Int) (top.res.abs_2_a_1 Int) (top.res.abs_3_a_1 Int) (top.res.abs_4_a_1 Int) (top.res.abs_5_a_1 Int) (top.res.abs_6_a_1 Bool) (top.res.abs_7_a_1 Bool) (top.res.abs_8_a_1 Bool) (top.res.abs_9_a_1 Bool) (top.res.abs_10_a_1 Bool) (top.res.abs_11_a_1 Bool) (top.res.inst_15_a_1 Bool) (top.res.inst_14_a_1 Bool) (top.res.inst_13_a_1 Bool) (top.res.inst_12_a_1 Int) (top.res.inst_11_a_1 Bool) (top.res.inst_10_a_1 Bool) (top.res.inst_9_a_1 Int) (top.res.inst_8_a_1 Bool) (top.res.inst_7_a_1 Bool) (top.res.inst_6_a_1 Bool) (top.res.inst_5_a_1 Int) (top.res.inst_4_a_1 Bool) (top.res.inst_3_a_1 Bool) (top.res.inst_2_a_1 Int) (top.res.inst_1_a_1 Bool) (top.res.inst_0_a_1 Bool) (top.usr.B0_a_0 Bool) (top.usr.B1_a_0 Bool) (top.usr.S_a_0 Bool) (top.usr.OK_a_0 Bool) (top.res.init_flag_a_0 Bool) (top.impl.usr.avance0_a_0 Bool) (top.impl.usr.retard0_a_0 Bool) (top.impl.usr.pOK_a_0 Bool) (top.res.abs_0_a_0 Bool) (top.res.abs_1_a_0 Int) (top.res.abs_2_a_0 Int) (top.res.abs_3_a_0 Int) (top.res.abs_4_a_0 Int) (top.res.abs_5_a_0 Int) (top.res.abs_6_a_0 Bool) (top.res.abs_7_a_0 Bool) (top.res.abs_8_a_0 Bool) (top.res.abs_9_a_0 Bool) (top.res.abs_10_a_0 Bool) (top.res.abs_11_a_0 Bool) (top.res.inst_15_a_0 Bool) (top.res.inst_14_a_0 Bool) (top.res.inst_13_a_0 Bool) (top.res.inst_12_a_0 Int) (top.res.inst_11_a_0 Bool) (top.res.inst_10_a_0 Bool) (top.res.inst_9_a_0 Int) (top.res.inst_8_a_0 Bool) (top.res.inst_7_a_0 Bool) (top.res.inst_6_a_0 Bool) (top.res.inst_5_a_0 Int) (top.res.inst_4_a_0 Bool) (top.res.inst_3_a_0 Bool) (top.res.inst_2_a_0 Int) (top.res.inst_1_a_0 Bool) (top.res.inst_0_a_0 Bool)) Bool
    (let ((X1 Bool top.res.abs_0_a_1)) (let ((X2 Int top.res.abs_4_a_1)) (let ((X3 Int top.res.abs_3_a_1)) (let ((X4 Int top.res.abs_2_a_1)) (let ((X5 Int top.res.abs_1_a_1)) (and (and (and (and (and (and (and (= top.res.abs_10_a_1 (and (and (and (and X1 (< X5 1)) (< X4 1)) (< X3 1)) (< X2 32767))) (= top.usr.OK_a_1 (=> top.res.abs_11_a_1 top.impl.usr.pOK_a_0))) (= top.impl.usr.retard0_a_1 top.res.abs_8_a_1)) (= top.impl.usr.avance0_a_1 top.res.abs_6_a_1)) (= top.impl.usr.pOK_a_1 (not (or (and top.impl.usr.avance0_a_0 top.impl.usr.retard0_a_1) (and top.impl.usr.retard0_a_0 top.impl.usr.avance0_a_1))))) (__node_trans_main_0 top.usr.B0_a_1 top.usr.B1_a_1 top.usr.S_a_1 top.res.abs_0_a_1 top.res.abs_1_a_1 top.res.abs_2_a_1 top.res.abs_3_a_1 top.res.abs_4_a_1 top.res.abs_5_a_1 top.res.abs_6_a_1 top.res.abs_7_a_1 top.res.abs_8_a_1 top.res.abs_9_a_1 top.res.inst_15_a_1 top.res.inst_14_a_1 top.res.inst_13_a_1 top.res.inst_12_a_1 top.res.inst_11_a_1 top.res.inst_10_a_1 top.res.inst_9_a_1 top.res.inst_8_a_1 top.res.inst_7_a_1 top.res.inst_6_a_1 top.res.inst_5_a_1 top.res.inst_4_a_1 top.res.inst_3_a_1 top.res.inst_2_a_1 top.res.inst_1_a_1 top.usr.B0_a_0 top.usr.B1_a_0 top.usr.S_a_0 top.res.abs_0_a_0 top.res.abs_1_a_0 top.res.abs_2_a_0 top.res.abs_3_a_0 top.res.abs_4_a_0 top.res.abs_5_a_0 top.res.abs_6_a_0 top.res.abs_7_a_0 top.res.abs_8_a_0 top.res.abs_9_a_0 top.res.inst_15_a_0 top.res.inst_14_a_0 top.res.inst_13_a_0 top.res.inst_12_a_0 top.res.inst_11_a_0 top.res.inst_10_a_0 top.res.inst_9_a_0 top.res.inst_8_a_0 top.res.inst_7_a_0 top.res.inst_6_a_0 top.res.inst_5_a_0 top.res.inst_4_a_0 top.res.inst_3_a_0 top.res.inst_2_a_0 top.res.inst_1_a_0)) (__node_trans_Sofar_0 top.res.abs_10_a_1 top.res.abs_11_a_1 top.res.inst_0_a_1 top.res.abs_10_a_0 top.res.abs_11_a_0 top.res.inst_0_a_0)) (not top.res.init_flag_a_1))))))))
(synth-inv str_invariant ((top.usr.B0 Bool) (top.usr.B1 Bool) (top.usr.S Bool) (top.usr.OK Bool) (top.res.init_flag Bool) (top.impl.usr.avance0 Bool) (top.impl.usr.retard0 Bool) (top.impl.usr.pOK Bool) (top.res.abs_0 Bool) (top.res.abs_1 Int) (top.res.abs_2 Int) (top.res.abs_3 Int) (top.res.abs_4 Int) (top.res.abs_5 Int) (top.res.abs_6 Bool) (top.res.abs_7 Bool) (top.res.abs_8 Bool) (top.res.abs_9 Bool) (top.res.abs_10 Bool) (top.res.abs_11 Bool) (top.res.inst_15 Bool) (top.res.inst_14 Bool) (top.res.inst_13 Bool) (top.res.inst_12 Int) (top.res.inst_11 Bool) (top.res.inst_10 Bool) (top.res.inst_9 Int) (top.res.inst_8 Bool) (top.res.inst_7 Bool) (top.res.inst_6 Bool) (top.res.inst_5 Int) (top.res.inst_4 Bool) (top.res.inst_3 Bool) (top.res.inst_2 Int) (top.res.inst_1 Bool) (top.res.inst_0 Bool)))

(declare-primed-var top.usr.B0 Bool)
(declare-primed-var top.usr.B1 Bool)
(declare-primed-var top.usr.S Bool)
(declare-primed-var top.usr.OK Bool)
(declare-primed-var top.res.init_flag Bool)
(declare-primed-var top.impl.usr.avance0 Bool)
(declare-primed-var top.impl.usr.retard0 Bool)
(declare-primed-var top.impl.usr.pOK Bool)
(declare-primed-var top.res.abs_0 Bool)
(declare-primed-var top.res.abs_1 Int)
(declare-primed-var top.res.abs_2 Int)
(declare-primed-var top.res.abs_3 Int)
(declare-primed-var top.res.abs_4 Int)
(declare-primed-var top.res.abs_5 Int)
(declare-primed-var top.res.abs_6 Bool)
(declare-primed-var top.res.abs_7 Bool)
(declare-primed-var top.res.abs_8 Bool)
(declare-primed-var top.res.abs_9 Bool)
(declare-primed-var top.res.abs_10 Bool)
(declare-primed-var top.res.abs_11 Bool)
(declare-primed-var top.res.inst_15 Bool)
(declare-primed-var top.res.inst_14 Bool)
(declare-primed-var top.res.inst_13 Bool)
(declare-primed-var top.res.inst_12 Int)
(declare-primed-var top.res.inst_11 Bool)
(declare-primed-var top.res.inst_10 Bool)
(declare-primed-var top.res.inst_9 Int)
(declare-primed-var top.res.inst_8 Bool)
(declare-primed-var top.res.inst_7 Bool)
(declare-primed-var top.res.inst_6 Bool)
(declare-primed-var top.res.inst_5 Int)
(declare-primed-var top.res.inst_4 Bool)
(declare-primed-var top.res.inst_3 Bool)
(declare-primed-var top.res.inst_2 Int)
(declare-primed-var top.res.inst_1 Bool)
(declare-primed-var top.res.inst_0 Bool)
(define-fun init ((top.usr.B0 Bool) (top.usr.B1 Bool) (top.usr.S Bool) (top.usr.OK Bool) (top.res.init_flag Bool) (top.impl.usr.avance0 Bool) (top.impl.usr.retard0 Bool) (top.impl.usr.pOK Bool) (top.res.abs_0 Bool) (top.res.abs_1 Int) (top.res.abs_2 Int) (top.res.abs_3 Int) (top.res.abs_4 Int) (top.res.abs_5 Int) (top.res.abs_6 Bool) (top.res.abs_7 Bool) (top.res.abs_8 Bool) (top.res.abs_9 Bool) (top.res.abs_10 Bool) (top.res.abs_11 Bool) (top.res.inst_15 Bool) (top.res.inst_14 Bool) (top.res.inst_13 Bool) (top.res.inst_12 Int) (top.res.inst_11 Bool) (top.res.inst_10 Bool) (top.res.inst_9 Int) (top.res.inst_8 Bool) (top.res.inst_7 Bool) (top.res.inst_6 Bool) (top.res.inst_5 Int) (top.res.inst_4 Bool) (top.res.inst_3 Bool) (top.res.inst_2 Int) (top.res.inst_1 Bool) (top.res.inst_0 Bool)) Bool
    (and (and (and (and (= top.usr.OK true) (= top.impl.usr.pOK true)) (= top.impl.usr.avance0 top.res.abs_6)) (= top.impl.usr.retard0 top.res.abs_8)) (let ((X1 Bool top.res.abs_0)) (let ((X2 Int top.res.abs_4)) (let ((X3 Int top.res.abs_3)) (let ((X4 Int top.res.abs_2)) (let ((X5 Int top.res.abs_1)) (and (and (and (= top.res.abs_10 (and (and (and (and X1 (< X5 1)) (< X4 1)) (< X3 1)) (< X2 32767))) (__node_init_main_0 top.usr.B0 top.usr.B1 top.usr.S top.res.abs_0 top.res.abs_1 top.res.abs_2 top.res.abs_3 top.res.abs_4 top.res.abs_5 top.res.abs_6 top.res.abs_7 top.res.abs_8 top.res.abs_9 top.res.inst_15 top.res.inst_14 top.res.inst_13 top.res.inst_12 top.res.inst_11 top.res.inst_10 top.res.inst_9 top.res.inst_8 top.res.inst_7 top.res.inst_6 top.res.inst_5 top.res.inst_4 top.res.inst_3 top.res.inst_2 top.res.inst_1)) (__node_init_Sofar_0 top.res.abs_10 top.res.abs_11 top.res.inst_0)) top.res.init_flag))))))))
(define-fun trans ((top.usr.B0 Bool) (top.usr.B1 Bool) (top.usr.S Bool) (top.usr.OK Bool) (top.res.init_flag Bool) (top.impl.usr.avance0 Bool) (top.impl.usr.retard0 Bool) (top.impl.usr.pOK Bool) (top.res.abs_0 Bool) (top.res.abs_1 Int) (top.res.abs_2 Int) (top.res.abs_3 Int) (top.res.abs_4 Int) (top.res.abs_5 Int) (top.res.abs_6 Bool) (top.res.abs_7 Bool) (top.res.abs_8 Bool) (top.res.abs_9 Bool) (top.res.abs_10 Bool) (top.res.abs_11 Bool) (top.res.inst_15 Bool) (top.res.inst_14 Bool) (top.res.inst_13 Bool) (top.res.inst_12 Int) (top.res.inst_11 Bool) (top.res.inst_10 Bool) (top.res.inst_9 Int) (top.res.inst_8 Bool) (top.res.inst_7 Bool) (top.res.inst_6 Bool) (top.res.inst_5 Int) (top.res.inst_4 Bool) (top.res.inst_3 Bool) (top.res.inst_2 Int) (top.res.inst_1 Bool) (top.res.inst_0 Bool) (top.usr.B0! Bool) (top.usr.B1! Bool) (top.usr.S! Bool) (top.usr.OK! Bool) (top.res.init_flag! Bool) (top.impl.usr.avance0! Bool) (top.impl.usr.retard0! Bool) (top.impl.usr.pOK! Bool) (top.res.abs_0! Bool) (top.res.abs_1! Int) (top.res.abs_2! Int) (top.res.abs_3! Int) (top.res.abs_4! Int) (top.res.abs_5! Int) (top.res.abs_6! Bool) (top.res.abs_7! Bool) (top.res.abs_8! Bool) (top.res.abs_9! Bool) (top.res.abs_10! Bool) (top.res.abs_11! Bool) (top.res.inst_15! Bool) (top.res.inst_14! Bool) (top.res.inst_13! Bool) (top.res.inst_12! Int) (top.res.inst_11! Bool) (top.res.inst_10! Bool) (top.res.inst_9! Int) (top.res.inst_8! Bool) (top.res.inst_7! Bool) (top.res.inst_6! Bool) (top.res.inst_5! Int) (top.res.inst_4! Bool) (top.res.inst_3! Bool) (top.res.inst_2! Int) (top.res.inst_1! Bool) (top.res.inst_0! Bool)) Bool
    (let ((X1 Bool top.res.abs_0!)) (let ((X2 Int top.res.abs_4!)) (let ((X3 Int top.res.abs_3!)) (let ((X4 Int top.res.abs_2!)) (let ((X5 Int top.res.abs_1!)) (and (and (and (and (and (and (and (= top.res.abs_10! (and (and (and (and X1 (< X5 1)) (< X4 1)) (< X3 1)) (< X2 32767))) (= top.usr.OK! (=> top.res.abs_11! top.impl.usr.pOK))) (= top.impl.usr.retard0! top.res.abs_8!)) (= top.impl.usr.avance0! top.res.abs_6!)) (= top.impl.usr.pOK! (not (or (and top.impl.usr.avance0 top.impl.usr.retard0!) (and top.impl.usr.retard0 top.impl.usr.avance0!))))) (__node_trans_main_0 top.usr.B0! top.usr.B1! top.usr.S! top.res.abs_0! top.res.abs_1! top.res.abs_2! top.res.abs_3! top.res.abs_4! top.res.abs_5! top.res.abs_6! top.res.abs_7! top.res.abs_8! top.res.abs_9! top.res.inst_15! top.res.inst_14! top.res.inst_13! top.res.inst_12! top.res.inst_11! top.res.inst_10! top.res.inst_9! top.res.inst_8! top.res.inst_7! top.res.inst_6! top.res.inst_5! top.res.inst_4! top.res.inst_3! top.res.inst_2! top.res.inst_1! top.usr.B0 top.usr.B1 top.usr.S top.res.abs_0 top.res.abs_1 top.res.abs_2 top.res.abs_3 top.res.abs_4 top.res.abs_5 top.res.abs_6 top.res.abs_7 top.res.abs_8 top.res.abs_9 top.res.inst_15 top.res.inst_14 top.res.inst_13 top.res.inst_12 top.res.inst_11 top.res.inst_10 top.res.inst_9 top.res.inst_8 top.res.inst_7 top.res.inst_6 top.res.inst_5 top.res.inst_4 top.res.inst_3 top.res.inst_2 top.res.inst_1)) (__node_trans_Sofar_0 top.res.abs_10! top.res.abs_11! top.res.inst_0! top.res.abs_10 top.res.abs_11 top.res.inst_0)) (not top.res.init_flag!))))))))
(define-fun prop ((top.usr.B0 Bool) (top.usr.B1 Bool) (top.usr.S Bool) (top.usr.OK Bool) (top.res.init_flag Bool) (top.impl.usr.avance0 Bool) (top.impl.usr.retard0 Bool) (top.impl.usr.pOK Bool) (top.res.abs_0 Bool) (top.res.abs_1 Int) (top.res.abs_2 Int) (top.res.abs_3 Int) (top.res.abs_4 Int) (top.res.abs_5 Int) (top.res.abs_6 Bool) (top.res.abs_7 Bool) (top.res.abs_8 Bool) (top.res.abs_9 Bool) (top.res.abs_10 Bool) (top.res.abs_11 Bool) (top.res.inst_15 Bool) (top.res.inst_14 Bool) (top.res.inst_13 Bool) (top.res.inst_12 Int) (top.res.inst_11 Bool) (top.res.inst_10 Bool) (top.res.inst_9 Int) (top.res.inst_8 Bool) (top.res.inst_7 Bool) (top.res.inst_6 Bool) (top.res.inst_5 Int) (top.res.inst_4 Bool) (top.res.inst_3 Bool) (top.res.inst_2 Int) (top.res.inst_1 Bool) (top.res.inst_0 Bool)) Bool
    top.usr.OK)

(inv-constraint str_invariant init trans prop)

(check-synth)

