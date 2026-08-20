(set-logic LIRA)

(define-fun
  __node_init_top_0 (
    (top.usr.onOff_a_0 Bool)
    (top.usr.decelSet_a_0 Bool)
    (top.usr.accelResume_a_0 Bool)
    (top.usr.cancel_a_0 Bool)
    (top.usr.brakePedal_a_0 Bool)
    (top.usr.carGear_a_0 Int)
    (top.usr.carSpeed_a_0 Real)
    (top.usr.validInputs_a_0 Bool)
    (top.usr.OK_a_0 Bool)
    (top.res.init_flag_a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0 Int)
  ) Bool
  
  (let
   ((X1 false))
   (let
    ((X2
      (and
            (and
             (and
              (and (not top.usr.cancel_a_0) (not top.usr.brakePedal_a_0))
              (ite (= top.usr.carGear_a_0 3) true false))
             (ite (>= top.usr.carSpeed_a_0 15.0) true false))
            top.usr.validInputs_a_0)))
    (let
     ((X3 false))
     (let
      ((X4 0))
      (let
       ((X5 (ite (not top.usr.onOff_a_0) 0 1)))
       (let
        ((X6
          (and
                (and (>= X4 2) (<= X4 8))
                (not (ite (not (= X5 0)) true false)))))
        (let
         ((X7 (ite X6 (ite (and (>= X4 2) (<= X4 8)) 0 X4) X4)))
         (let
          ((X8 (ite X6 (ite (not (= X7 1)) 1 X7) X7)))
          (let
           ((X9
             (and
                   (= X8 1)
                   (and (ite (not (= X5 0)) true false) (not X6)))))
           (let
            ((X10 (ite X9 (ite (= X8 1) 0 X8) X8)))
            (let
             ((X11 (ite (not (and (>= X10 2) (<= X10 8))) 2 X10)))
             (let
              ((X12
                (and
                      (not (and (>= X10 2) (<= X10 8)))
                      (and (>= X11 2) (<= X11 8)))))
              (let
               ((X13 (ite X12 (ite (not (= X11 7)) 7 X11) X11)))
               (let
                ((X14 (ite X9 X13 X10)))
                (let
                 ((X15 (ite (not X2) 0 1)))
                 (let
                  ((X16
                    (and
                          (and (>= X14 3) (<= X14 6))
                          (not (ite (not (= X15 0)) true false)))))
                  (let
                   ((X17
                     (ite
                          X16
                          (ite (and (>= X14 3) (<= X14 6)) 2 X14)
                          X14)))
                   (let
                    ((X18 (ite X16 (ite (not (= X17 8)) 8 X17) X17)))
                    (let
                     ((X19 (ite (not X1) 0 1)))
                     (let
                      ((X20
                        (and
                              (= X18 8)
                              (and
                               (and
                                (ite
                                 (not (= (ite (not (= X19 1)) 0 1) 0))
                                 true
                                 false)
                                (ite
                                 (not (= (ite (not (= X15 1)) 0 1) 0))
                                 true
                                 false))
                               (not X16)))))
                      (let
                       ((X21 (ite X20 (ite (= X18 8) 2 X18) X18)))
                       (let
                        ((X22
                          (ite (not (and (>= X21 3) (<= X21 6))) 3 X21)))
                        (let
                         ((X23
                           (and
                                 (not (and (>= X21 3) (<= X21 6)))
                                 (and (>= X22 3) (<= X22 6)))))
                         (let
                          ((X24
                            (ite X23 (ite (not (= X22 4)) 4 X22) X22)))
                          (let
                           ((X25 (ite X20 X24 X21)))
                           (let
                            ((X26 (or X20 X16)))
                            (let
                             ((X27
                               (and
                                     (= X25 8)
                                     (and
                                      (and
                                       (ite
                                        (not
                                         (=
                                          (ite
                                           (not (= (ite (not X3) 0 1) 1))
                                           0
                                           1)
                                          0))
                                        true
                                        false)
                                       (ite
                                        (not (= (ite (not (= X15 1)) 0 1) 0))
                                        true
                                        false))
                                      (not X26)))))
                             (let
                              ((X28 (ite X27 (ite (= X25 8) 2 X25) X25)))
                              (let
                               ((X29
                                 (ite
                                      (not (and (>= X28 3) (<= X28 6)))
                                      3
                                      X28)))
                               (let
                                ((X30
                                  (and
                                        (not (and (>= X28 3) (<= X28 6)))
                                        (and (>= X29 3) (<= X29 6)))))
                                (let
                                 ((X31
                                   (ite
                                        X30
                                        (ite (not (= X29 4)) 4 X29)
                                        X29)))
                                 (let
                                  ((X32
                                    (or
                                          (= X31 4)
                                          (or (= X31 5) (= X31 6)))))
                                  (and
                                   (= top.usr.OK_a_0 X32)
                                   (=
                                    top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0
                                    (ite
                                     (<=
                                      (ite
                                       (>= 0 (ite top.usr.decelSet_a_0 1 0))
                                       0
                                       (ite top.usr.decelSet_a_0 1 0))
                                      20)
                                     (ite
                                      (>= 0 (ite top.usr.decelSet_a_0 1 0))
                                      0
                                      (ite top.usr.decelSet_a_0 1 0))
                                     20))
                                   (=
                                    top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0
                                    (ite
                                     (<=
                                      (ite
                                       (>= 0 (ite top.usr.accelResume_a_0 1 0))
                                       0
                                       (ite top.usr.accelResume_a_0 1 0))
                                      20)
                                     (ite
                                      (>= 0 (ite top.usr.accelResume_a_0 1 0))
                                      0
                                      (ite top.usr.accelResume_a_0 1 0))
                                     20))
                                   (=
                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0
                                    true)
                                   (let
                                    ((X33 (ite (not (= X4 1)) 1 X4)))
                                    (let
                                     ((X34 (or X9 X6)))
                                     (let
                                      ((X35 (ite X27 X31 X28)))
                                      (let
                                       ((X36 (or X27 X26)))
                                       (let
                                        ((X37
                                          (and
                                                (= X35 7)
                                                (and
                                                 (and
                                                  (ite
                                                   (not
                                                    (=
                                                     (ite
                                                      (not (= X19 1))
                                                      0
                                                      1)
                                                     0))
                                                   true
                                                   false)
                                                  (ite
                                                   (not
                                                    (=
                                                     (ite
                                                      (not (= X15 1))
                                                      0
                                                      1)
                                                     0))
                                                   true
                                                   false))
                                                 (not X36)))))
                                        (let
                                         ((X38
                                           (ite
                                                X37
                                                (ite (= X35 7) 2 X35)
                                                X35)))
                                         (let
                                          ((X39
                                            (ite
                                                 (not
                                                  (and (>= X38 3) (<= X38 6)))
                                                 3
                                                 X38)))
                                          (let
                                           ((X40
                                             (and
                                                   (not
                                                    (and
                                                     (>= X38 3)
                                                     (<= X38 6)))
                                                   (and
                                                    (>= X39 3)
                                                    (<= X39 6)))))
                                           (let
                                            ((X41
                                              (ite
                                                   X40
                                                   (ite
                                                    (not (= X39 4))
                                                    4
                                                    X39)
                                                   X39)))
                                            (let
                                             ((X42 (ite X37 X41 X38)))
                                             (let
                                              ((X43 (or X37 X36)))
                                              (let
                                               ((X44
                                                 (and
                                                       (= X42 4)
                                                       (= X19 1))))
                                               (let
                                                ((X45
                                                  (ite
                                                       X44
                                                       (ite (= X42 4) 3 X42)
                                                       X42)))
                                                (let
                                                 ((X46
                                                   (ite
                                                        X44
                                                        (ite
                                                         (not (= X45 4))
                                                         4
                                                         X45)
                                                        X45)))
                                                 (let
                                                  ((X47
                                                    (ite
                                                         (not
                                                          (ite
                                                           (=
                                                            top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0
                                                            20)
                                                           true
                                                           false))
                                                         0
                                                         1)))
                                                  (let
                                                   ((X48
                                                     (and
                                                           (= X46 4)
                                                           (and
                                                            (= X47 1)
                                                            (not X44)))))
                                                   (let
                                                    ((X49
                                                      (ite
                                                           X48
                                                           (ite
                                                            (= X46 4)
                                                            3
                                                            X46)
                                                           X46)))
                                                    (let
                                                     ((X50
                                                       (ite
                                                            X48
                                                            (ite
                                                             (not (= X49 5))
                                                             5
                                                             X49)
                                                            X49)))
                                                     (let
                                                      ((X51
                                                        (or X48 X44)))
                                                      (let
                                                       ((X52
                                                         (ite
                                                              (not
                                                               (ite
                                                                (=
                                                                 top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0
                                                                 20)
                                                                true
                                                                false))
                                                              0
                                                              1)))
                                                       (let
                                                        ((X53
                                                          (and
                                                                (= X50 4)
                                                                (and
                                                                 (= X52 1)
                                                                 (not X51)))))
                                                        (let
                                                         ((X54
                                                           (ite
                                                                X53
                                                                (ite
                                                                 (= X50 4)
                                                                 3
                                                                 X50)
                                                                X50)))
                                                         (let
                                                          ((X55
                                                            (ite
                                                                 X53
                                                                 (ite
                                                                  (not
                                                                   (= X54 6))
                                                                  6
                                                                  X54)
                                                                 X54)))
                                                          (let
                                                           ((X56
                                                             (or
                                                                   X53
                                                                   X51)))
                                                           (let
                                                            ((X57
                                                              (and
                                                                    (= X55 6)
                                                                    (and
                                                                    (= X52 0)
                                                                    (not X56)))))
                                                            (let
                                                             ((X58
                                                               (ite
                                                                    X57
                                                                    (ite
                                                                    (= X55 6)
                                                                    3
                                                                    X55)
                                                                    X55)))
                                                             (let
                                                              ((X59
                                                                (ite
                                                                    X57
                                                                    (ite
                                                                    (not
                                                                    (= X58 4))
                                                                    4
                                                                    X58)
                                                                    X58)))
                                                              (let
                                                               ((X60
                                                                 (or
                                                                  X57
                                                                  X56)))
                                                               (let
                                                                ((X61
                                                                  (and
                                                                   (= X59 5)
                                                                   (and
                                                                    (= X47 0)
                                                                    (not X60)))))
                                                                (let
                                                                 ((X62
                                                                   (ite
                                                                    X61
                                                                    (ite
                                                                    (= X59 5)
                                                                    3
                                                                    X59)
                                                                    X59)))
                                                                 (let
                                                                  ((X63
                                                                    (ite
                                                                    X61
                                                                    (ite
                                                                    (not
                                                                    (= X62 4))
                                                                    4
                                                                    X62)
                                                                    X62)))
                                                                  (and
                                                                   (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                                                    true)
                                                                   (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0
                                                                    X33
                                                                    (ite
                                                                    (and
                                                                    (not X34)
                                                                    (and
                                                                    (>=
                                                                    X14
                                                                    2)
                                                                    (<=
                                                                    X14
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X43)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    X63
                                                                    X42)
                                                                    X14))
                                                                    X4))
                                                                   (<=
                                                                    0
                                                                    X15
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X5
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X47
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X19
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X52
                                                                    1)
                                                                   top.res.init_flag_a_0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)

(define-fun
  __node_trans_top_0 (
    (top.usr.onOff_a_1 Bool)
    (top.usr.decelSet_a_1 Bool)
    (top.usr.accelResume_a_1 Bool)
    (top.usr.cancel_a_1 Bool)
    (top.usr.brakePedal_a_1 Bool)
    (top.usr.carGear_a_1 Int)
    (top.usr.carSpeed_a_1 Real)
    (top.usr.validInputs_a_1 Bool)
    (top.usr.OK_a_1 Bool)
    (top.res.init_flag_a_1 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_1 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_1 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_1 Int)
    (top.usr.onOff_a_0 Bool)
    (top.usr.decelSet_a_0 Bool)
    (top.usr.accelResume_a_0 Bool)
    (top.usr.cancel_a_0 Bool)
    (top.usr.brakePedal_a_0 Bool)
    (top.usr.carGear_a_0 Int)
    (top.usr.carSpeed_a_0 Real)
    (top.usr.validInputs_a_0 Bool)
    (top.usr.OK_a_0 Bool)
    (top.res.init_flag_a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0 Int)
  ) Bool
  
  (let
   ((X1 (and (not top.usr.decelSet_a_0) top.usr.decelSet_a_1)))
   (let
    ((X2
      (and
            (and
             (and
              (and (not top.usr.cancel_a_1) (not top.usr.brakePedal_a_1))
              (ite (= top.usr.carGear_a_1 3) true false))
             (ite (>= top.usr.carSpeed_a_1 15.0) true false))
            top.usr.validInputs_a_1)))
    (let
     ((X3 (and (not top.usr.accelResume_a_0) top.usr.accelResume_a_1)))
     (let
      ((X4
        top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0))
      (let
       ((X5 (ite (not top.usr.onOff_a_1) 0 1)))
       (let
        ((X6
          (and
                (and (>= X4 2) (<= X4 8))
                (not (ite (not (= X5 0)) true false)))))
        (let
         ((X7 (ite X6 (ite (and (>= X4 2) (<= X4 8)) 0 X4) X4)))
         (let
          ((X8 (ite X6 (ite (not (= X7 1)) 1 X7) X7)))
          (let
           ((X9
             (and
                   (= X8 1)
                   (and (ite (not (= X5 0)) true false) (not X6)))))
           (let
            ((X10 (ite X9 (ite (= X8 1) 0 X8) X8)))
            (let
             ((X11 (ite (not (and (>= X10 2) (<= X10 8))) 2 X10)))
             (let
              ((X12
                (and
                      (not (and (>= X10 2) (<= X10 8)))
                      (and (>= X11 2) (<= X11 8)))))
              (let
               ((X13 (ite X12 (ite (not (= X11 7)) 7 X11) X11)))
               (let
                ((X14 (ite X9 X13 X10)))
                (let
                 ((X15 (ite (not X2) 0 1)))
                 (let
                  ((X16
                    (and
                          (and (>= X14 3) (<= X14 6))
                          (not (ite (not (= X15 0)) true false)))))
                  (let
                   ((X17
                     (ite
                          X16
                          (ite (and (>= X14 3) (<= X14 6)) 2 X14)
                          X14)))
                   (let
                    ((X18 (ite X16 (ite (not (= X17 8)) 8 X17) X17)))
                    (let
                     ((X19 (ite (not X1) 0 1)))
                     (let
                      ((X20
                        (and
                              (= X18 8)
                              (and
                               (and
                                (ite
                                 (not (= (ite (not (= X19 1)) 0 1) 0))
                                 true
                                 false)
                                (ite
                                 (not (= (ite (not (= X15 1)) 0 1) 0))
                                 true
                                 false))
                               (not X16)))))
                      (let
                       ((X21 (ite X20 (ite (= X18 8) 2 X18) X18)))
                       (let
                        ((X22
                          (ite (not (and (>= X21 3) (<= X21 6))) 3 X21)))
                        (let
                         ((X23
                           (and
                                 (not (and (>= X21 3) (<= X21 6)))
                                 (and (>= X22 3) (<= X22 6)))))
                         (let
                          ((X24
                            (ite X23 (ite (not (= X22 4)) 4 X22) X22)))
                          (let
                           ((X25 (ite X20 X24 X21)))
                           (let
                            ((X26 (or X20 X16)))
                            (let
                             ((X27
                               (and
                                     (= X25 8)
                                     (and
                                      (and
                                       (ite
                                        (not
                                         (=
                                          (ite
                                           (not (= (ite (not X3) 0 1) 1))
                                           0
                                           1)
                                          0))
                                        true
                                        false)
                                       (ite
                                        (not (= (ite (not (= X15 1)) 0 1) 0))
                                        true
                                        false))
                                      (not X26)))))
                             (let
                              ((X28 (ite X27 (ite (= X25 8) 2 X25) X25)))
                              (let
                               ((X29
                                 (ite
                                      (not (and (>= X28 3) (<= X28 6)))
                                      3
                                      X28)))
                               (let
                                ((X30
                                  (and
                                        (not (and (>= X28 3) (<= X28 6)))
                                        (and (>= X29 3) (<= X29 6)))))
                                (let
                                 ((X31
                                   (ite
                                        X30
                                        (ite (not (= X29 4)) 4 X29)
                                        X29)))
                                 (let
                                  ((X32
                                    (or
                                          (= X31 4)
                                          (or (= X31 5) (= X31 6)))))
                                  (and
                                   (= top.usr.OK_a_1 X32)
                                   (=
                                    top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_1
                                    (ite
                                     (<=
                                      (ite
                                       (>=
                                        0
                                        (ite
                                         top.usr.decelSet_a_1
                                         (+
                                          top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0
                                          1)
                                         0))
                                       0
                                       (ite
                                        top.usr.decelSet_a_1
                                        (+
                                         top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0
                                         1)
                                        0))
                                      20)
                                     (ite
                                      (>=
                                       0
                                       (ite
                                        top.usr.decelSet_a_1
                                        (+
                                         top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0
                                         1)
                                        0))
                                      0
                                      (ite
                                       top.usr.decelSet_a_1
                                       (+
                                        top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0
                                        1)
                                       0))
                                     20))
                                   (=
                                    top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_1
                                    (ite
                                     (<=
                                      (ite
                                       (>=
                                        0
                                        (ite
                                         top.usr.accelResume_a_1
                                         (+
                                          top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0
                                          1)
                                         0))
                                       0
                                       (ite
                                        top.usr.accelResume_a_1
                                        (+
                                         top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0
                                         1)
                                        0))
                                      20)
                                     (ite
                                      (>=
                                       0
                                       (ite
                                        top.usr.accelResume_a_1
                                        (+
                                         top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0
                                         1)
                                        0))
                                      0
                                      (ite
                                       top.usr.accelResume_a_1
                                       (+
                                        top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0
                                        1)
                                       0))
                                     20))
                                   (=
                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1
                                    (ite
                                     top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                     false
                                     top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0))
                                   (let
                                    ((X33 (ite (not (= X4 1)) 1 X4)))
                                    (let
                                     ((X34 (or X9 X6)))
                                     (let
                                      ((X35 (ite X27 X31 X28)))
                                      (let
                                       ((X36 (or X27 X26)))
                                       (let
                                        ((X37
                                          (and
                                                (= X35 7)
                                                (and
                                                 (and
                                                  (ite
                                                   (not
                                                    (=
                                                     (ite
                                                      (not (= X19 1))
                                                      0
                                                      1)
                                                     0))
                                                   true
                                                   false)
                                                  (ite
                                                   (not
                                                    (=
                                                     (ite
                                                      (not (= X15 1))
                                                      0
                                                      1)
                                                     0))
                                                   true
                                                   false))
                                                 (not X36)))))
                                        (let
                                         ((X38
                                           (ite
                                                X37
                                                (ite (= X35 7) 2 X35)
                                                X35)))
                                         (let
                                          ((X39
                                            (ite
                                                 (not
                                                  (and (>= X38 3) (<= X38 6)))
                                                 3
                                                 X38)))
                                          (let
                                           ((X40
                                             (and
                                                   (not
                                                    (and
                                                     (>= X38 3)
                                                     (<= X38 6)))
                                                   (and
                                                    (>= X39 3)
                                                    (<= X39 6)))))
                                           (let
                                            ((X41
                                              (ite
                                                   X40
                                                   (ite
                                                    (not (= X39 4))
                                                    4
                                                    X39)
                                                   X39)))
                                            (let
                                             ((X42 (ite X37 X41 X38)))
                                             (let
                                              ((X43 (or X37 X36)))
                                              (let
                                               ((X44
                                                 (and
                                                       (= X42 4)
                                                       (= X19 1))))
                                               (let
                                                ((X45
                                                  (ite
                                                       X44
                                                       (ite (= X42 4) 3 X42)
                                                       X42)))
                                                (let
                                                 ((X46
                                                   (ite
                                                        X44
                                                        (ite
                                                         (not (= X45 4))
                                                         4
                                                         X45)
                                                        X45)))
                                                 (let
                                                  ((X47
                                                    (ite
                                                         (not
                                                          (ite
                                                           (=
                                                            top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_1
                                                            20)
                                                           true
                                                           false))
                                                         0
                                                         1)))
                                                  (let
                                                   ((X48
                                                     (and
                                                           (= X46 4)
                                                           (and
                                                            (= X47 1)
                                                            (not X44)))))
                                                   (let
                                                    ((X49
                                                      (ite
                                                           X48
                                                           (ite
                                                            (= X46 4)
                                                            3
                                                            X46)
                                                           X46)))
                                                    (let
                                                     ((X50
                                                       (ite
                                                            X48
                                                            (ite
                                                             (not (= X49 5))
                                                             5
                                                             X49)
                                                            X49)))
                                                     (let
                                                      ((X51
                                                        (or X48 X44)))
                                                      (let
                                                       ((X52
                                                         (ite
                                                              (not
                                                               (ite
                                                                (=
                                                                 top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_1
                                                                 20)
                                                                true
                                                                false))
                                                              0
                                                              1)))
                                                       (let
                                                        ((X53
                                                          (and
                                                                (= X50 4)
                                                                (and
                                                                 (= X52 1)
                                                                 (not X51)))))
                                                        (let
                                                         ((X54
                                                           (ite
                                                                X53
                                                                (ite
                                                                 (= X50 4)
                                                                 3
                                                                 X50)
                                                                X50)))
                                                         (let
                                                          ((X55
                                                            (ite
                                                                 X53
                                                                 (ite
                                                                  (not
                                                                   (= X54 6))
                                                                  6
                                                                  X54)
                                                                 X54)))
                                                          (let
                                                           ((X56
                                                             (or
                                                                   X53
                                                                   X51)))
                                                           (let
                                                            ((X57
                                                              (and
                                                                    (= X55 6)
                                                                    (and
                                                                    (= X52 0)
                                                                    (not X56)))))
                                                            (let
                                                             ((X58
                                                               (ite
                                                                    X57
                                                                    (ite
                                                                    (= X55 6)
                                                                    3
                                                                    X55)
                                                                    X55)))
                                                             (let
                                                              ((X59
                                                                (ite
                                                                    X57
                                                                    (ite
                                                                    (not
                                                                    (= X58 4))
                                                                    4
                                                                    X58)
                                                                    X58)))
                                                              (let
                                                               ((X60
                                                                 (or
                                                                  X57
                                                                  X56)))
                                                               (let
                                                                ((X61
                                                                  (and
                                                                   (= X59 5)
                                                                   (and
                                                                    (= X47 0)
                                                                    (not X60)))))
                                                                (let
                                                                 ((X62
                                                                   (ite
                                                                    X61
                                                                    (ite
                                                                    (= X59 5)
                                                                    3
                                                                    X59)
                                                                    X59)))
                                                                 (let
                                                                  ((X63
                                                                    (ite
                                                                    X61
                                                                    (ite
                                                                    (not
                                                                    (= X62 4))
                                                                    4
                                                                    X62)
                                                                    X62)))
                                                                  (and
                                                                   (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1
                                                                    true)
                                                                   (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1
                                                                    X33
                                                                    (ite
                                                                    (and
                                                                    (not X34)
                                                                    (and
                                                                    (>=
                                                                    X14
                                                                    2)
                                                                    (<=
                                                                    X14
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X43)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    X63
                                                                    X42)
                                                                    X14))
                                                                    X4))
                                                                   (<=
                                                                    0
                                                                    X15
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X5
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X47
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X19
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X52
                                                                    1)
                                                                   (not
                                                                    top.res.init_flag_a_1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)



(synth-inv str_invariant(
  (top.usr.onOff Bool)
  (top.usr.decelSet Bool)
  (top.usr.accelResume Bool)
  (top.usr.cancel Bool)
  (top.usr.brakePedal Bool)
  (top.usr.carGear Int)
  (top.usr.carSpeed Real)
  (top.usr.validInputs Bool)
  (top.usr.OK Bool)
  (top.res.init_flag Bool)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
  (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
  (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
))


(define-fun
  init (
    (top.usr.onOff Bool)
    (top.usr.decelSet Bool)
    (top.usr.accelResume Bool)
    (top.usr.cancel Bool)
    (top.usr.brakePedal Bool)
    (top.usr.carGear Int)
    (top.usr.carSpeed Real)
    (top.usr.validInputs Bool)
    (top.usr.OK Bool)
    (top.res.init_flag Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
  ) Bool
  
  (let
   ((X1 false))
   (let
    ((X2
      (and
            (and
             (and
              (and (not top.usr.cancel) (not top.usr.brakePedal))
              (ite (= top.usr.carGear 3) true false))
             (ite (>= top.usr.carSpeed 15.0) true false))
            top.usr.validInputs)))
    (let
     ((X3 false))
     (let
      ((X4 0))
      (let
       ((X5 (ite (not top.usr.onOff) 0 1)))
       (let
        ((X6
          (and
                (and (>= X4 2) (<= X4 8))
                (not (ite (not (= X5 0)) true false)))))
        (let
         ((X7 (ite X6 (ite (and (>= X4 2) (<= X4 8)) 0 X4) X4)))
         (let
          ((X8 (ite X6 (ite (not (= X7 1)) 1 X7) X7)))
          (let
           ((X9
             (and
                   (= X8 1)
                   (and (ite (not (= X5 0)) true false) (not X6)))))
           (let
            ((X10 (ite X9 (ite (= X8 1) 0 X8) X8)))
            (let
             ((X11 (ite (not (and (>= X10 2) (<= X10 8))) 2 X10)))
             (let
              ((X12
                (and
                      (not (and (>= X10 2) (<= X10 8)))
                      (and (>= X11 2) (<= X11 8)))))
              (let
               ((X13 (ite X12 (ite (not (= X11 7)) 7 X11) X11)))
               (let
                ((X14 (ite X9 X13 X10)))
                (let
                 ((X15 (ite (not X2) 0 1)))
                 (let
                  ((X16
                    (and
                          (and (>= X14 3) (<= X14 6))
                          (not (ite (not (= X15 0)) true false)))))
                  (let
                   ((X17
                     (ite
                          X16
                          (ite (and (>= X14 3) (<= X14 6)) 2 X14)
                          X14)))
                   (let
                    ((X18 (ite X16 (ite (not (= X17 8)) 8 X17) X17)))
                    (let
                     ((X19 (ite (not X1) 0 1)))
                     (let
                      ((X20
                        (and
                              (= X18 8)
                              (and
                               (and
                                (ite
                                 (not (= (ite (not (= X19 1)) 0 1) 0))
                                 true
                                 false)
                                (ite
                                 (not (= (ite (not (= X15 1)) 0 1) 0))
                                 true
                                 false))
                               (not X16)))))
                      (let
                       ((X21 (ite X20 (ite (= X18 8) 2 X18) X18)))
                       (let
                        ((X22
                          (ite (not (and (>= X21 3) (<= X21 6))) 3 X21)))
                        (let
                         ((X23
                           (and
                                 (not (and (>= X21 3) (<= X21 6)))
                                 (and (>= X22 3) (<= X22 6)))))
                         (let
                          ((X24
                            (ite X23 (ite (not (= X22 4)) 4 X22) X22)))
                          (let
                           ((X25 (ite X20 X24 X21)))
                           (let
                            ((X26 (or X20 X16)))
                            (let
                             ((X27
                               (and
                                     (= X25 8)
                                     (and
                                      (and
                                       (ite
                                        (not
                                         (=
                                          (ite
                                           (not (= (ite (not X3) 0 1) 1))
                                           0
                                           1)
                                          0))
                                        true
                                        false)
                                       (ite
                                        (not (= (ite (not (= X15 1)) 0 1) 0))
                                        true
                                        false))
                                      (not X26)))))
                             (let
                              ((X28 (ite X27 (ite (= X25 8) 2 X25) X25)))
                              (let
                               ((X29
                                 (ite
                                      (not (and (>= X28 3) (<= X28 6)))
                                      3
                                      X28)))
                               (let
                                ((X30
                                  (and
                                        (not (and (>= X28 3) (<= X28 6)))
                                        (and (>= X29 3) (<= X29 6)))))
                                (let
                                 ((X31
                                   (ite
                                        X30
                                        (ite (not (= X29 4)) 4 X29)
                                        X29)))
                                 (let
                                  ((X32
                                    (or
                                          (= X31 4)
                                          (or (= X31 5) (= X31 6)))))
                                  (and
                                   (= top.usr.OK X32)
                                   (=
                                    top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out
                                    (ite
                                     (<=
                                      (ite
                                       (>= 0 (ite top.usr.decelSet 1 0))
                                       0
                                       (ite top.usr.decelSet 1 0))
                                      20)
                                     (ite
                                      (>= 0 (ite top.usr.decelSet 1 0))
                                      0
                                      (ite top.usr.decelSet 1 0))
                                     20))
                                   (=
                                    top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out
                                    (ite
                                     (<=
                                      (ite
                                       (>= 0 (ite top.usr.accelResume 1 0))
                                       0
                                       (ite top.usr.accelResume 1 0))
                                      20)
                                     (ite
                                      (>= 0 (ite top.usr.accelResume 1 0))
                                      0
                                      (ite top.usr.accelResume 1 0))
                                     20))
                                   (=
                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep
                                    true)
                                   (let
                                    ((X33 (ite (not (= X4 1)) 1 X4)))
                                    (let
                                     ((X34 (or X9 X6)))
                                     (let
                                      ((X35 (ite X27 X31 X28)))
                                      (let
                                       ((X36 (or X27 X26)))
                                       (let
                                        ((X37
                                          (and
                                                (= X35 7)
                                                (and
                                                 (and
                                                  (ite
                                                   (not
                                                    (=
                                                     (ite
                                                      (not (= X19 1))
                                                      0
                                                      1)
                                                     0))
                                                   true
                                                   false)
                                                  (ite
                                                   (not
                                                    (=
                                                     (ite
                                                      (not (= X15 1))
                                                      0
                                                      1)
                                                     0))
                                                   true
                                                   false))
                                                 (not X36)))))
                                        (let
                                         ((X38
                                           (ite
                                                X37
                                                (ite (= X35 7) 2 X35)
                                                X35)))
                                         (let
                                          ((X39
                                            (ite
                                                 (not
                                                  (and (>= X38 3) (<= X38 6)))
                                                 3
                                                 X38)))
                                          (let
                                           ((X40
                                             (and
                                                   (not
                                                    (and
                                                     (>= X38 3)
                                                     (<= X38 6)))
                                                   (and
                                                    (>= X39 3)
                                                    (<= X39 6)))))
                                           (let
                                            ((X41
                                              (ite
                                                   X40
                                                   (ite
                                                    (not (= X39 4))
                                                    4
                                                    X39)
                                                   X39)))
                                            (let
                                             ((X42 (ite X37 X41 X38)))
                                             (let
                                              ((X43 (or X37 X36)))
                                              (let
                                               ((X44
                                                 (and
                                                       (= X42 4)
                                                       (= X19 1))))
                                               (let
                                                ((X45
                                                  (ite
                                                       X44
                                                       (ite (= X42 4) 3 X42)
                                                       X42)))
                                                (let
                                                 ((X46
                                                   (ite
                                                        X44
                                                        (ite
                                                         (not (= X45 4))
                                                         4
                                                         X45)
                                                        X45)))
                                                 (let
                                                  ((X47
                                                    (ite
                                                         (not
                                                          (ite
                                                           (=
                                                            top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out
                                                            20)
                                                           true
                                                           false))
                                                         0
                                                         1)))
                                                  (let
                                                   ((X48
                                                     (and
                                                           (= X46 4)
                                                           (and
                                                            (= X47 1)
                                                            (not X44)))))
                                                   (let
                                                    ((X49
                                                      (ite
                                                           X48
                                                           (ite
                                                            (= X46 4)
                                                            3
                                                            X46)
                                                           X46)))
                                                    (let
                                                     ((X50
                                                       (ite
                                                            X48
                                                            (ite
                                                             (not (= X49 5))
                                                             5
                                                             X49)
                                                            X49)))
                                                     (let
                                                      ((X51
                                                        (or X48 X44)))
                                                      (let
                                                       ((X52
                                                         (ite
                                                              (not
                                                               (ite
                                                                (=
                                                                 top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out
                                                                 20)
                                                                true
                                                                false))
                                                              0
                                                              1)))
                                                       (let
                                                        ((X53
                                                          (and
                                                                (= X50 4)
                                                                (and
                                                                 (= X52 1)
                                                                 (not X51)))))
                                                        (let
                                                         ((X54
                                                           (ite
                                                                X53
                                                                (ite
                                                                 (= X50 4)
                                                                 3
                                                                 X50)
                                                                X50)))
                                                         (let
                                                          ((X55
                                                            (ite
                                                                 X53
                                                                 (ite
                                                                  (not
                                                                   (= X54 6))
                                                                  6
                                                                  X54)
                                                                 X54)))
                                                          (let
                                                           ((X56
                                                             (or
                                                                   X53
                                                                   X51)))
                                                           (let
                                                            ((X57
                                                              (and
                                                                    (= X55 6)
                                                                    (and
                                                                    (= X52 0)
                                                                    (not X56)))))
                                                            (let
                                                             ((X58
                                                               (ite
                                                                    X57
                                                                    (ite
                                                                    (= X55 6)
                                                                    3
                                                                    X55)
                                                                    X55)))
                                                             (let
                                                              ((X59
                                                                (ite
                                                                    X57
                                                                    (ite
                                                                    (not
                                                                    (= X58 4))
                                                                    4
                                                                    X58)
                                                                    X58)))
                                                              (let
                                                               ((X60
                                                                 (or
                                                                  X57
                                                                  X56)))
                                                               (let
                                                                ((X61
                                                                  (and
                                                                   (= X59 5)
                                                                   (and
                                                                    (= X47 0)
                                                                    (not X60)))))
                                                                (let
                                                                 ((X62
                                                                   (ite
                                                                    X61
                                                                    (ite
                                                                    (= X59 5)
                                                                    3
                                                                    X59)
                                                                    X59)))
                                                                 (let
                                                                  ((X63
                                                                    (ite
                                                                    X61
                                                                    (ite
                                                                    (not
                                                                    (= X62 4))
                                                                    4
                                                                    X62)
                                                                    X62)))
                                                                  (and
                                                                   (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                                                    true)
                                                                   (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep
                                                                    X33
                                                                    (ite
                                                                    (and
                                                                    (not X34)
                                                                    (and
                                                                    (>=
                                                                    X14
                                                                    2)
                                                                    (<=
                                                                    X14
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X43)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    X63
                                                                    X42)
                                                                    X14))
                                                                    X4))
                                                                   (<=
                                                                    0
                                                                    X15
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X5
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X47
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X19
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X52
                                                                    1)
                                                                   top.res.init_flag)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)

(define-fun
  trans (
    
    ;; Current state.
    (top.usr.onOff Bool)
    (top.usr.decelSet Bool)
    (top.usr.accelResume Bool)
    (top.usr.cancel Bool)
    (top.usr.brakePedal Bool)
    (top.usr.carGear Int)
    (top.usr.carSpeed Real)
    (top.usr.validInputs Bool)
    (top.usr.OK Bool)
    (top.res.init_flag Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
    
    ;; Next state.
    (top.usr.onOff! Bool)
    (top.usr.decelSet! Bool)
    (top.usr.accelResume! Bool)
    (top.usr.cancel! Bool)
    (top.usr.brakePedal! Bool)
    (top.usr.carGear! Int)
    (top.usr.carSpeed! Real)
    (top.usr.validInputs! Bool)
    (top.usr.OK! Bool)
    (top.res.init_flag! Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___! Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep! Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root! Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out! Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out! Int)
  
  ) Bool
  
  (let
   ((X1 (and (not top.usr.decelSet) top.usr.decelSet!)))
   (let
    ((X2
      (and
            (and
             (and
              (and (not top.usr.cancel!) (not top.usr.brakePedal!))
              (ite (= top.usr.carGear! 3) true false))
             (ite (>= top.usr.carSpeed! 15.0) true false))
            top.usr.validInputs!)))
    (let
     ((X3 (and (not top.usr.accelResume) top.usr.accelResume!)))
     (let
      ((X4
        top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root))
      (let
       ((X5 (ite (not top.usr.onOff!) 0 1)))
       (let
        ((X6
          (and
                (and (>= X4 2) (<= X4 8))
                (not (ite (not (= X5 0)) true false)))))
        (let
         ((X7 (ite X6 (ite (and (>= X4 2) (<= X4 8)) 0 X4) X4)))
         (let
          ((X8 (ite X6 (ite (not (= X7 1)) 1 X7) X7)))
          (let
           ((X9
             (and
                   (= X8 1)
                   (and (ite (not (= X5 0)) true false) (not X6)))))
           (let
            ((X10 (ite X9 (ite (= X8 1) 0 X8) X8)))
            (let
             ((X11 (ite (not (and (>= X10 2) (<= X10 8))) 2 X10)))
             (let
              ((X12
                (and
                      (not (and (>= X10 2) (<= X10 8)))
                      (and (>= X11 2) (<= X11 8)))))
              (let
               ((X13 (ite X12 (ite (not (= X11 7)) 7 X11) X11)))
               (let
                ((X14 (ite X9 X13 X10)))
                (let
                 ((X15 (ite (not X2) 0 1)))
                 (let
                  ((X16
                    (and
                          (and (>= X14 3) (<= X14 6))
                          (not (ite (not (= X15 0)) true false)))))
                  (let
                   ((X17
                     (ite
                          X16
                          (ite (and (>= X14 3) (<= X14 6)) 2 X14)
                          X14)))
                   (let
                    ((X18 (ite X16 (ite (not (= X17 8)) 8 X17) X17)))
                    (let
                     ((X19 (ite (not X1) 0 1)))
                     (let
                      ((X20
                        (and
                              (= X18 8)
                              (and
                               (and
                                (ite
                                 (not (= (ite (not (= X19 1)) 0 1) 0))
                                 true
                                 false)
                                (ite
                                 (not (= (ite (not (= X15 1)) 0 1) 0))
                                 true
                                 false))
                               (not X16)))))
                      (let
                       ((X21 (ite X20 (ite (= X18 8) 2 X18) X18)))
                       (let
                        ((X22
                          (ite (not (and (>= X21 3) (<= X21 6))) 3 X21)))
                        (let
                         ((X23
                           (and
                                 (not (and (>= X21 3) (<= X21 6)))
                                 (and (>= X22 3) (<= X22 6)))))
                         (let
                          ((X24
                            (ite X23 (ite (not (= X22 4)) 4 X22) X22)))
                          (let
                           ((X25 (ite X20 X24 X21)))
                           (let
                            ((X26 (or X20 X16)))
                            (let
                             ((X27
                               (and
                                     (= X25 8)
                                     (and
                                      (and
                                       (ite
                                        (not
                                         (=
                                          (ite
                                           (not (= (ite (not X3) 0 1) 1))
                                           0
                                           1)
                                          0))
                                        true
                                        false)
                                       (ite
                                        (not (= (ite (not (= X15 1)) 0 1) 0))
                                        true
                                        false))
                                      (not X26)))))
                             (let
                              ((X28 (ite X27 (ite (= X25 8) 2 X25) X25)))
                              (let
                               ((X29
                                 (ite
                                      (not (and (>= X28 3) (<= X28 6)))
                                      3
                                      X28)))
                               (let
                                ((X30
                                  (and
                                        (not (and (>= X28 3) (<= X28 6)))
                                        (and (>= X29 3) (<= X29 6)))))
                                (let
                                 ((X31
                                   (ite
                                        X30
                                        (ite (not (= X29 4)) 4 X29)
                                        X29)))
                                 (let
                                  ((X32
                                    (or
                                          (= X31 4)
                                          (or (= X31 5) (= X31 6)))))
                                  (and
                                   (= top.usr.OK! X32)
                                   (=
                                    top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out!
                                    (ite
                                     (<=
                                      (ite
                                       (>=
                                        0
                                        (ite
                                         top.usr.decelSet!
                                         (+
                                          top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out
                                          1)
                                         0))
                                       0
                                       (ite
                                        top.usr.decelSet!
                                        (+
                                         top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out
                                         1)
                                        0))
                                      20)
                                     (ite
                                      (>=
                                       0
                                       (ite
                                        top.usr.decelSet!
                                        (+
                                         top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out
                                         1)
                                        0))
                                      0
                                      (ite
                                       top.usr.decelSet!
                                       (+
                                        top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out
                                        1)
                                       0))
                                     20))
                                   (=
                                    top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out!
                                    (ite
                                     (<=
                                      (ite
                                       (>=
                                        0
                                        (ite
                                         top.usr.accelResume!
                                         (+
                                          top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out
                                          1)
                                         0))
                                       0
                                       (ite
                                        top.usr.accelResume!
                                        (+
                                         top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out
                                         1)
                                        0))
                                      20)
                                     (ite
                                      (>=
                                       0
                                       (ite
                                        top.usr.accelResume!
                                        (+
                                         top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out
                                         1)
                                        0))
                                      0
                                      (ite
                                       top.usr.accelResume!
                                       (+
                                        top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out
                                        1)
                                       0))
                                     20))
                                   (=
                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep!
                                    (ite
                                     top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                     false
                                     top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep))
                                   (let
                                    ((X33 (ite (not (= X4 1)) 1 X4)))
                                    (let
                                     ((X34 (or X9 X6)))
                                     (let
                                      ((X35 (ite X27 X31 X28)))
                                      (let
                                       ((X36 (or X27 X26)))
                                       (let
                                        ((X37
                                          (and
                                                (= X35 7)
                                                (and
                                                 (and
                                                  (ite
                                                   (not
                                                    (=
                                                     (ite
                                                      (not (= X19 1))
                                                      0
                                                      1)
                                                     0))
                                                   true
                                                   false)
                                                  (ite
                                                   (not
                                                    (=
                                                     (ite
                                                      (not (= X15 1))
                                                      0
                                                      1)
                                                     0))
                                                   true
                                                   false))
                                                 (not X36)))))
                                        (let
                                         ((X38
                                           (ite
                                                X37
                                                (ite (= X35 7) 2 X35)
                                                X35)))
                                         (let
                                          ((X39
                                            (ite
                                                 (not
                                                  (and (>= X38 3) (<= X38 6)))
                                                 3
                                                 X38)))
                                          (let
                                           ((X40
                                             (and
                                                   (not
                                                    (and
                                                     (>= X38 3)
                                                     (<= X38 6)))
                                                   (and
                                                    (>= X39 3)
                                                    (<= X39 6)))))
                                           (let
                                            ((X41
                                              (ite
                                                   X40
                                                   (ite
                                                    (not (= X39 4))
                                                    4
                                                    X39)
                                                   X39)))
                                            (let
                                             ((X42 (ite X37 X41 X38)))
                                             (let
                                              ((X43 (or X37 X36)))
                                              (let
                                               ((X44
                                                 (and
                                                       (= X42 4)
                                                       (= X19 1))))
                                               (let
                                                ((X45
                                                  (ite
                                                       X44
                                                       (ite (= X42 4) 3 X42)
                                                       X42)))
                                                (let
                                                 ((X46
                                                   (ite
                                                        X44
                                                        (ite
                                                         (not (= X45 4))
                                                         4
                                                         X45)
                                                        X45)))
                                                 (let
                                                  ((X47
                                                    (ite
                                                         (not
                                                          (ite
                                                           (=
                                                            top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out!
                                                            20)
                                                           true
                                                           false))
                                                         0
                                                         1)))
                                                  (let
                                                   ((X48
                                                     (and
                                                           (= X46 4)
                                                           (and
                                                            (= X47 1)
                                                            (not X44)))))
                                                   (let
                                                    ((X49
                                                      (ite
                                                           X48
                                                           (ite
                                                            (= X46 4)
                                                            3
                                                            X46)
                                                           X46)))
                                                    (let
                                                     ((X50
                                                       (ite
                                                            X48
                                                            (ite
                                                             (not (= X49 5))
                                                             5
                                                             X49)
                                                            X49)))
                                                     (let
                                                      ((X51
                                                        (or X48 X44)))
                                                      (let
                                                       ((X52
                                                         (ite
                                                              (not
                                                               (ite
                                                                (=
                                                                 top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out!
                                                                 20)
                                                                true
                                                                false))
                                                              0
                                                              1)))
                                                       (let
                                                        ((X53
                                                          (and
                                                                (= X50 4)
                                                                (and
                                                                 (= X52 1)
                                                                 (not X51)))))
                                                        (let
                                                         ((X54
                                                           (ite
                                                                X53
                                                                (ite
                                                                 (= X50 4)
                                                                 3
                                                                 X50)
                                                                X50)))
                                                         (let
                                                          ((X55
                                                            (ite
                                                                 X53
                                                                 (ite
                                                                  (not
                                                                   (= X54 6))
                                                                  6
                                                                  X54)
                                                                 X54)))
                                                          (let
                                                           ((X56
                                                             (or
                                                                   X53
                                                                   X51)))
                                                           (let
                                                            ((X57
                                                              (and
                                                                    (= X55 6)
                                                                    (and
                                                                    (= X52 0)
                                                                    (not X56)))))
                                                            (let
                                                             ((X58
                                                               (ite
                                                                    X57
                                                                    (ite
                                                                    (= X55 6)
                                                                    3
                                                                    X55)
                                                                    X55)))
                                                             (let
                                                              ((X59
                                                                (ite
                                                                    X57
                                                                    (ite
                                                                    (not
                                                                    (= X58 4))
                                                                    4
                                                                    X58)
                                                                    X58)))
                                                              (let
                                                               ((X60
                                                                 (or
                                                                  X57
                                                                  X56)))
                                                               (let
                                                                ((X61
                                                                  (and
                                                                   (= X59 5)
                                                                   (and
                                                                    (= X47 0)
                                                                    (not X60)))))
                                                                (let
                                                                 ((X62
                                                                   (ite
                                                                    X61
                                                                    (ite
                                                                    (= X59 5)
                                                                    3
                                                                    X59)
                                                                    X59)))
                                                                 (let
                                                                  ((X63
                                                                    (ite
                                                                    X61
                                                                    (ite
                                                                    (not
                                                                    (= X62 4))
                                                                    4
                                                                    X62)
                                                                    X62)))
                                                                  (and
                                                                   (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___!
                                                                    true)
                                                                   (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep!
                                                                    X33
                                                                    (ite
                                                                    (and
                                                                    (not X34)
                                                                    (and
                                                                    (>=
                                                                    X14
                                                                    2)
                                                                    (<=
                                                                    X14
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X43)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    X63
                                                                    X42)
                                                                    X14))
                                                                    X4))
                                                                   (<=
                                                                    0
                                                                    X15
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X5
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X47
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X19
                                                                    1)
                                                                   (<=
                                                                    0
                                                                    X52
                                                                    1)
                                                                   (not
                                                                    top.res.init_flag!))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)

(define-fun
  prop (
    (top.usr.onOff Bool)
    (top.usr.decelSet Bool)
    (top.usr.accelResume Bool)
    (top.usr.cancel Bool)
    (top.usr.brakePedal Bool)
    (top.usr.carGear Int)
    (top.usr.carSpeed Real)
    (top.usr.validInputs Bool)
    (top.usr.OK Bool)
    (top.res.init_flag Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
  ) Bool
  
  top.usr.OK
)

(inv-constraint str_invariant init trans prop)

(check-synth)
