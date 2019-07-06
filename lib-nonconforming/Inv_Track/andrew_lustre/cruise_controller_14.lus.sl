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
    (top.impl.usr.mode_a_0 Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0 Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0 Int)
  ) Bool
  
  (let
   ((X1 Bool false))
   (let
    ((X2
      Bool (and
            (and
             (and
              (and (not top.usr.cancel_a_0) (not top.usr.brakePedal_a_0))
              (ite (= top.usr.carGear_a_0 3) true false))
             (ite (>= top.usr.carSpeed_a_0 15.0) true false))
            top.usr.validInputs_a_0)))
    (let
     ((X3 Bool false))
     (and
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
      (let
       ((X4 Int 0))
       (let
        ((X5 Int 0))
        (and
         (=
          top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0
          true)
         (let
          ((X6 Int (ite (not top.usr.onOff_a_0) 0 1)))
          (let
           ((X7
             Bool (and
                   (and (>= X5 2) (<= X5 8))
                   (not (ite (not (= X6 0)) true false)))))
           (let
            ((X8 Int (ite X7 (ite (and (>= X5 2) (<= X5 8)) 0 X5) X5)))
            (let
             ((X9 Int (ite X7 (ite (not (= X8 1)) 1 X8) X8)))
             (let
              ((X10
                Bool (and
                      (= X9 1)
                      (and (ite (not (= X6 0)) true false) (not X7)))))
              (let
               ((X11 Int (ite X10 (ite (= X9 1) 0 X9) X9)))
               (let
                ((X12 Int (ite (not (and (>= X11 2) (<= X11 8))) 2 X11)))
                (let
                 ((X13
                   Bool (and
                         (not (and (>= X11 2) (<= X11 8)))
                         (and (>= X12 2) (<= X12 8)))))
                 (let
                  ((X14 Int (ite X13 (ite (not (= X12 7)) 7 X12) X12)))
                  (let
                   ((X15 Int (ite X10 X14 X11)))
                   (let
                    ((X16 Bool (or X10 X7)))
                    (let
                     ((X17
                       Int (ite
                            X7
                            (ite
                             (and (>= X5 2) (<= X5 8))
                             (ite
                              (and (>= X5 3) (<= X5 6))
                              (ite (= X5 4) 0 X4)
                              X4)
                             X4)
                            X4)))
                     (let
                      ((X18 Int (ite (not X2) 0 1)))
                      (let
                       ((X19
                         Bool (and
                               (and (>= X15 3) (<= X15 6))
                               (not (ite (not (= X18 0)) true false)))))
                       (let
                        ((X20
                          Int (ite
                               X19
                               (ite (and (>= X15 3) (<= X15 6)) 2 X15)
                               X15)))
                        (let
                         ((X21 Int (ite X19 (ite (not (= X20 8)) 8 X20) X20)))
                         (let
                          ((X22 Int (ite (not X1) 0 1)))
                          (let
                           ((X23
                             Bool (and
                                   (= X21 8)
                                   (and
                                    (and
                                     (ite
                                      (not (= (ite (not (= X22 1)) 0 1) 0))
                                      true
                                      false)
                                     (ite
                                      (not (= (ite (not (= X18 1)) 0 1) 0))
                                      true
                                      false))
                                    (not X19)))))
                           (let
                            ((X24 Int (ite X23 (ite (= X21 8) 2 X21) X21)))
                            (let
                             ((X25
                               Int (ite
                                    (not (and (>= X24 3) (<= X24 6)))
                                    3
                                    X24)))
                             (let
                              ((X26
                                Bool (and
                                      (not (and (>= X24 3) (<= X24 6)))
                                      (and (>= X25 3) (<= X25 6)))))
                              (let
                               ((X27
                                 Int (ite
                                      X26
                                      (ite (not (= X25 4)) 4 X25)
                                      X25)))
                               (let
                                ((X28 Int (ite X23 X27 X24)))
                                (let
                                 ((X29 Bool (or X23 X19)))
                                 (let
                                  ((X30
                                    Bool (and
                                          (= X28 8)
                                          (and
                                           (and
                                            (ite
                                             (not
                                              (=
                                               (ite
                                                (not
                                                 (= (ite (not X3) 0 1) 1))
                                                0
                                                1)
                                               0))
                                             true
                                             false)
                                            (ite
                                             (not
                                              (= (ite (not (= X18 1)) 0 1) 0))
                                             true
                                             false))
                                           (not X29)))))
                                  (let
                                   ((X31
                                     Int (ite X30 (ite (= X28 8) 2 X28) X28)))
                                   (let
                                    ((X32
                                      Int (ite
                                           (not (and (>= X31 3) (<= X31 6)))
                                           3
                                           X31)))
                                    (let
                                     ((X33
                                       Bool (and
                                             (not
                                              (and (>= X31 3) (<= X31 6)))
                                             (and (>= X32 3) (<= X32 6)))))
                                     (let
                                      ((X34
                                        Int (ite
                                             X33
                                             (ite (not (= X32 4)) 4 X32)
                                             X32)))
                                      (let
                                       ((X35 Int (ite X30 X34 X31)))
                                       (let
                                        ((X36 Bool (or X30 X29)))
                                        (let
                                         ((X37
                                           Bool (and
                                                 (= X35 7)
                                                 (and
                                                  (and
                                                   (ite
                                                    (not
                                                     (=
                                                      (ite
                                                       (not (= X22 1))
                                                       0
                                                       1)
                                                      0))
                                                    true
                                                    false)
                                                   (ite
                                                    (not
                                                     (=
                                                      (ite
                                                       (not (= X18 1))
                                                       0
                                                       1)
                                                      0))
                                                    true
                                                    false))
                                                  (not X36)))))
                                         (let
                                          ((X38
                                            Int (ite
                                                 X37
                                                 (ite (= X35 7) 2 X35)
                                                 X35)))
                                          (let
                                           ((X39
                                             Int (ite
                                                  (not
                                                   (and
                                                    (>= X38 3)
                                                    (<= X38 6)))
                                                  3
                                                  X38)))
                                           (let
                                            ((X40
                                              Bool (and
                                                    (not
                                                     (and
                                                      (>= X38 3)
                                                      (<= X38 6)))
                                                    (and
                                                     (>= X39 3)
                                                     (<= X39 6)))))
                                            (let
                                             ((X41
                                               Int (ite
                                                    X40
                                                    (ite
                                                     (not (= X39 4))
                                                     4
                                                     X39)
                                                    X39)))
                                             (let
                                              ((X42 Int (ite X37 X41 X38)))
                                              (let
                                               ((X43
                                                 Int (ite
                                                      X37
                                                      1
                                                      (ite
                                                       X23
                                                       1
                                                       (ite
                                                        X19
                                                        (ite
                                                         (and
                                                          (>= X15 3)
                                                          (<= X15 6))
                                                         (ite
                                                          (= X15 4)
                                                          0
                                                          X17)
                                                         X17)
                                                        X17)))))
                                               (let
                                                ((X44 Bool (or X37 X36)))
                                                (let
                                                 ((X45
                                                   Bool (and
                                                         (= X42 4)
                                                         (= X22 1))))
                                                 (let
                                                  ((X46
                                                    Int (ite
                                                         X45
                                                         (ite
                                                          (= X42 4)
                                                          3
                                                          X42)
                                                         X42)))
                                                  (let
                                                   ((X47
                                                     Int (ite
                                                          X45
                                                          (ite
                                                           (not (= X46 4))
                                                           4
                                                           X46)
                                                          X46)))
                                                   (let
                                                    ((X48
                                                      Int (ite
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
                                                     ((X49
                                                       Bool (and
                                                             (= X47 4)
                                                             (and
                                                              (= X48 1)
                                                              (not X45)))))
                                                     (let
                                                      ((X50
                                                        Int (ite
                                                             X49
                                                             (ite
                                                              (= X47 4)
                                                              3
                                                              X47)
                                                             X47)))
                                                      (let
                                                       ((X51
                                                         Int (ite
                                                              X49
                                                              (ite
                                                               (not
                                                                (= X50 5))
                                                               5
                                                               X50)
                                                              X50)))
                                                       (let
                                                        ((X52
                                                          Bool (or X49 X45)))
                                                        (let
                                                         ((X53
                                                           Int (ite
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
                                                          ((X54
                                                            Bool (and
                                                                  (= X51 4)
                                                                  (and
                                                                   (= X53 1)
                                                                   (not X52)))))
                                                          (let
                                                           ((X55
                                                             Int (ite
                                                                  X54
                                                                  (ite
                                                                   (= X51 4)
                                                                   3
                                                                   X51)
                                                                  X51)))
                                                           (let
                                                            ((X56
                                                              Int (ite
                                                                   X54
                                                                   (ite
                                                                    (not
                                                                    (= X55 6))
                                                                    6
                                                                    X55)
                                                                   X55)))
                                                            (let
                                                             ((X57
                                                               Bool (or
                                                                    X54
                                                                    X52)))
                                                             (let
                                                              ((X58
                                                                Bool 
                                                                (and
                                                                 (= X56 6)
                                                                 (and
                                                                  (= X53 0)
                                                                  (not X57)))))
                                                              (let
                                                               ((X59
                                                                 Int 
                                                                 (ite
                                                                  X58
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)
                                                                  X56)))
                                                               (let
                                                                ((X60
                                                                  Int 
                                                                  (ite
                                                                   X58
                                                                   (ite
                                                                    (not
                                                                    (= X59 4))
                                                                    4
                                                                    X59)
                                                                   X59)))
                                                                (let
                                                                 ((X61
                                                                   Bool 
                                                                   (or
                                                                    X58
                                                                    X57)))
                                                                 (let
                                                                  ((X62
                                                                    Bool 
                                                                    (and
                                                                    (= X60 5)
                                                                    (and
                                                                    (= X48 0)
                                                                    (not X61)))))
                                                                  (let
                                                                   ((X63
                                                                    Int 
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (= X60 5)
                                                                    3
                                                                    X60)
                                                                    X60)))
                                                                   (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (not
                                                                    (= X63 4))
                                                                    4
                                                                    X63)
                                                                    X63)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X45
                                                                    1
                                                                    X43)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    X49
                                                                    (ite
                                                                    (= X47 4)
                                                                    0
                                                                    X65)
                                                                    X65)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0
                                                                    X4
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    (or
                                                                    X62
                                                                    X61))
                                                                    (= X64 4))
                                                                    0
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (= X51 4)
                                                                    0
                                                                    X66)
                                                                    X66))
                                                                    X43)
                                                                    X17))
                                                                    X4))
                                                                    (let
                                                                    ((X67
                                                                    Bool 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0
                                                                    0))
                                                                    true
                                                                    false)))
                                                                    (let
                                                                    ((X68
                                                                    Int 0))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X7
                                                                    (ite
                                                                    (not
                                                                    (= X8 1))
                                                                    1
                                                                    X68)
                                                                    X68)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X10
                                                                    (ite
                                                                    X13
                                                                    (ite
                                                                    (not
                                                                    (= X12 7))
                                                                    2
                                                                    X69)
                                                                    X69)
                                                                    X69)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X19
                                                                    (ite
                                                                    (not
                                                                    (= X20 8))
                                                                    3
                                                                    X70)
                                                                    X70)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X23
                                                                    (ite
                                                                    X26
                                                                    (ite
                                                                    (not
                                                                    (= X25 4))
                                                                    4
                                                                    X71)
                                                                    X71)
                                                                    X71)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    X30
                                                                    (ite
                                                                    X33
                                                                    (ite
                                                                    (not
                                                                    (= X32 4))
                                                                    4
                                                                    X72)
                                                                    X72)
                                                                    X72)))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X37
                                                                    (ite
                                                                    X40
                                                                    (ite
                                                                    (not
                                                                    (= X39 4))
                                                                    4
                                                                    X73)
                                                                    X73)
                                                                    X73)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X45
                                                                    (ite
                                                                    (not
                                                                    (= X46 4))
                                                                    4
                                                                    X74)
                                                                    X74)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X49
                                                                    (ite
                                                                    (not
                                                                    (= X50 5))
                                                                    6
                                                                    X75)
                                                                    X75)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (not
                                                                    (= X55 6))
                                                                    5
                                                                    X76)
                                                                    X76)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X58
                                                                    (ite
                                                                    (not
                                                                    (= X59 4))
                                                                    4
                                                                    X77)
                                                                    X77)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0
                                                                    (ite
                                                                    (not
                                                                    (= X5 1))
                                                                    1
                                                                    X68)
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (not
                                                                    (= X63 4))
                                                                    4
                                                                    X78)
                                                                    X78)
                                                                    X74)
                                                                    X70))
                                                                    X68))
                                                                    (=
                                                                    top.usr.OK_a_0
                                                                    (or
                                                                    (not
                                                                    (or
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    1)
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    2)))
                                                                    (=
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0
                                                                    1)
                                                                    X67)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X5 1))
                                                                    1
                                                                    X5)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0
                                                                    X79
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    X64
                                                                    X42)
                                                                    X15))
                                                                    X5))
                                                                    (<=
                                                                    0
                                                                    X53
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X22
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X18
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X6
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X48
                                                                    1)
                                                                    top.res.init_flag_a_0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.mode_a_1 Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_1 Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_1 Int)
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
    (top.impl.usr.mode_a_0 Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0 Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0 Int)
  ) Bool
  
  (let
   ((X1 Bool (and (not top.usr.decelSet_a_0) top.usr.decelSet_a_1)))
   (let
    ((X2
      Bool (and
            (and
             (and
              (and (not top.usr.cancel_a_1) (not top.usr.brakePedal_a_1))
              (ite (= top.usr.carGear_a_1 3) true false))
             (ite (>= top.usr.carSpeed_a_1 15.0) true false))
            top.usr.validInputs_a_1)))
    (let
     ((X3 Bool (and (not top.usr.accelResume_a_0) top.usr.accelResume_a_1)))
     (and
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
      (let
       ((X4
         Int top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0))
       (let
        ((X5
          Int top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0))
        (and
         (=
          top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1
          (ite
           top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
           false
           top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0))
         (let
          ((X6 Int (ite (not top.usr.onOff_a_1) 0 1)))
          (let
           ((X7
             Bool (and
                   (and (>= X5 2) (<= X5 8))
                   (not (ite (not (= X6 0)) true false)))))
           (let
            ((X8 Int (ite X7 (ite (and (>= X5 2) (<= X5 8)) 0 X5) X5)))
            (let
             ((X9 Int (ite X7 (ite (not (= X8 1)) 1 X8) X8)))
             (let
              ((X10
                Bool (and
                      (= X9 1)
                      (and (ite (not (= X6 0)) true false) (not X7)))))
              (let
               ((X11 Int (ite X10 (ite (= X9 1) 0 X9) X9)))
               (let
                ((X12 Int (ite (not (and (>= X11 2) (<= X11 8))) 2 X11)))
                (let
                 ((X13
                   Bool (and
                         (not (and (>= X11 2) (<= X11 8)))
                         (and (>= X12 2) (<= X12 8)))))
                 (let
                  ((X14 Int (ite X13 (ite (not (= X12 7)) 7 X12) X12)))
                  (let
                   ((X15 Int (ite X10 X14 X11)))
                   (let
                    ((X16 Bool (or X10 X7)))
                    (let
                     ((X17
                       Int (ite
                            X7
                            (ite
                             (and (>= X5 2) (<= X5 8))
                             (ite
                              (and (>= X5 3) (<= X5 6))
                              (ite (= X5 4) 0 X4)
                              X4)
                             X4)
                            X4)))
                     (let
                      ((X18 Int (ite (not X2) 0 1)))
                      (let
                       ((X19
                         Bool (and
                               (and (>= X15 3) (<= X15 6))
                               (not (ite (not (= X18 0)) true false)))))
                       (let
                        ((X20
                          Int (ite
                               X19
                               (ite (and (>= X15 3) (<= X15 6)) 2 X15)
                               X15)))
                        (let
                         ((X21 Int (ite X19 (ite (not (= X20 8)) 8 X20) X20)))
                         (let
                          ((X22 Int (ite (not X1) 0 1)))
                          (let
                           ((X23
                             Bool (and
                                   (= X21 8)
                                   (and
                                    (and
                                     (ite
                                      (not (= (ite (not (= X22 1)) 0 1) 0))
                                      true
                                      false)
                                     (ite
                                      (not (= (ite (not (= X18 1)) 0 1) 0))
                                      true
                                      false))
                                    (not X19)))))
                           (let
                            ((X24 Int (ite X23 (ite (= X21 8) 2 X21) X21)))
                            (let
                             ((X25
                               Int (ite
                                    (not (and (>= X24 3) (<= X24 6)))
                                    3
                                    X24)))
                             (let
                              ((X26
                                Bool (and
                                      (not (and (>= X24 3) (<= X24 6)))
                                      (and (>= X25 3) (<= X25 6)))))
                              (let
                               ((X27
                                 Int (ite
                                      X26
                                      (ite (not (= X25 4)) 4 X25)
                                      X25)))
                               (let
                                ((X28 Int (ite X23 X27 X24)))
                                (let
                                 ((X29 Bool (or X23 X19)))
                                 (let
                                  ((X30
                                    Bool (and
                                          (= X28 8)
                                          (and
                                           (and
                                            (ite
                                             (not
                                              (=
                                               (ite
                                                (not
                                                 (= (ite (not X3) 0 1) 1))
                                                0
                                                1)
                                               0))
                                             true
                                             false)
                                            (ite
                                             (not
                                              (= (ite (not (= X18 1)) 0 1) 0))
                                             true
                                             false))
                                           (not X29)))))
                                  (let
                                   ((X31
                                     Int (ite X30 (ite (= X28 8) 2 X28) X28)))
                                   (let
                                    ((X32
                                      Int (ite
                                           (not (and (>= X31 3) (<= X31 6)))
                                           3
                                           X31)))
                                    (let
                                     ((X33
                                       Bool (and
                                             (not
                                              (and (>= X31 3) (<= X31 6)))
                                             (and (>= X32 3) (<= X32 6)))))
                                     (let
                                      ((X34
                                        Int (ite
                                             X33
                                             (ite (not (= X32 4)) 4 X32)
                                             X32)))
                                      (let
                                       ((X35 Int (ite X30 X34 X31)))
                                       (let
                                        ((X36 Bool (or X30 X29)))
                                        (let
                                         ((X37
                                           Bool (and
                                                 (= X35 7)
                                                 (and
                                                  (and
                                                   (ite
                                                    (not
                                                     (=
                                                      (ite
                                                       (not (= X22 1))
                                                       0
                                                       1)
                                                      0))
                                                    true
                                                    false)
                                                   (ite
                                                    (not
                                                     (=
                                                      (ite
                                                       (not (= X18 1))
                                                       0
                                                       1)
                                                      0))
                                                    true
                                                    false))
                                                  (not X36)))))
                                         (let
                                          ((X38
                                            Int (ite
                                                 X37
                                                 (ite (= X35 7) 2 X35)
                                                 X35)))
                                          (let
                                           ((X39
                                             Int (ite
                                                  (not
                                                   (and
                                                    (>= X38 3)
                                                    (<= X38 6)))
                                                  3
                                                  X38)))
                                           (let
                                            ((X40
                                              Bool (and
                                                    (not
                                                     (and
                                                      (>= X38 3)
                                                      (<= X38 6)))
                                                    (and
                                                     (>= X39 3)
                                                     (<= X39 6)))))
                                            (let
                                             ((X41
                                               Int (ite
                                                    X40
                                                    (ite
                                                     (not (= X39 4))
                                                     4
                                                     X39)
                                                    X39)))
                                             (let
                                              ((X42 Int (ite X37 X41 X38)))
                                              (let
                                               ((X43
                                                 Int (ite
                                                      X37
                                                      1
                                                      (ite
                                                       X23
                                                       1
                                                       (ite
                                                        X19
                                                        (ite
                                                         (and
                                                          (>= X15 3)
                                                          (<= X15 6))
                                                         (ite
                                                          (= X15 4)
                                                          0
                                                          X17)
                                                         X17)
                                                        X17)))))
                                               (let
                                                ((X44 Bool (or X37 X36)))
                                                (let
                                                 ((X45
                                                   Bool (and
                                                         (= X42 4)
                                                         (= X22 1))))
                                                 (let
                                                  ((X46
                                                    Int (ite
                                                         X45
                                                         (ite
                                                          (= X42 4)
                                                          3
                                                          X42)
                                                         X42)))
                                                  (let
                                                   ((X47
                                                     Int (ite
                                                          X45
                                                          (ite
                                                           (not (= X46 4))
                                                           4
                                                           X46)
                                                          X46)))
                                                   (let
                                                    ((X48
                                                      Int (ite
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
                                                     ((X49
                                                       Bool (and
                                                             (= X47 4)
                                                             (and
                                                              (= X48 1)
                                                              (not X45)))))
                                                     (let
                                                      ((X50
                                                        Int (ite
                                                             X49
                                                             (ite
                                                              (= X47 4)
                                                              3
                                                              X47)
                                                             X47)))
                                                      (let
                                                       ((X51
                                                         Int (ite
                                                              X49
                                                              (ite
                                                               (not
                                                                (= X50 5))
                                                               5
                                                               X50)
                                                              X50)))
                                                       (let
                                                        ((X52
                                                          Bool (or X49 X45)))
                                                        (let
                                                         ((X53
                                                           Int (ite
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
                                                          ((X54
                                                            Bool (and
                                                                  (= X51 4)
                                                                  (and
                                                                   (= X53 1)
                                                                   (not X52)))))
                                                          (let
                                                           ((X55
                                                             Int (ite
                                                                  X54
                                                                  (ite
                                                                   (= X51 4)
                                                                   3
                                                                   X51)
                                                                  X51)))
                                                           (let
                                                            ((X56
                                                              Int (ite
                                                                   X54
                                                                   (ite
                                                                    (not
                                                                    (= X55 6))
                                                                    6
                                                                    X55)
                                                                   X55)))
                                                            (let
                                                             ((X57
                                                               Bool (or
                                                                    X54
                                                                    X52)))
                                                             (let
                                                              ((X58
                                                                Bool 
                                                                (and
                                                                 (= X56 6)
                                                                 (and
                                                                  (= X53 0)
                                                                  (not X57)))))
                                                              (let
                                                               ((X59
                                                                 Int 
                                                                 (ite
                                                                  X58
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)
                                                                  X56)))
                                                               (let
                                                                ((X60
                                                                  Int 
                                                                  (ite
                                                                   X58
                                                                   (ite
                                                                    (not
                                                                    (= X59 4))
                                                                    4
                                                                    X59)
                                                                   X59)))
                                                                (let
                                                                 ((X61
                                                                   Bool 
                                                                   (or
                                                                    X58
                                                                    X57)))
                                                                 (let
                                                                  ((X62
                                                                    Bool 
                                                                    (and
                                                                    (= X60 5)
                                                                    (and
                                                                    (= X48 0)
                                                                    (not X61)))))
                                                                  (let
                                                                   ((X63
                                                                    Int 
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (= X60 5)
                                                                    3
                                                                    X60)
                                                                    X60)))
                                                                   (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (not
                                                                    (= X63 4))
                                                                    4
                                                                    X63)
                                                                    X63)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X45
                                                                    1
                                                                    X43)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    X49
                                                                    (ite
                                                                    (= X47 4)
                                                                    0
                                                                    X65)
                                                                    X65)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1
                                                                    X4
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    (or
                                                                    X62
                                                                    X61))
                                                                    (= X64 4))
                                                                    0
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (= X51 4)
                                                                    0
                                                                    X66)
                                                                    X66))
                                                                    X43)
                                                                    X17))
                                                                    X4))
                                                                    (let
                                                                    ((X67
                                                                    Bool 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_1
                                                                    0))
                                                                    true
                                                                    false)))
                                                                    (let
                                                                    ((X68
                                                                    Int top.impl.usr.mode_a_0))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X7
                                                                    (ite
                                                                    (not
                                                                    (= X8 1))
                                                                    1
                                                                    X68)
                                                                    X68)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X10
                                                                    (ite
                                                                    X13
                                                                    (ite
                                                                    (not
                                                                    (= X12 7))
                                                                    2
                                                                    X69)
                                                                    X69)
                                                                    X69)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X19
                                                                    (ite
                                                                    (not
                                                                    (= X20 8))
                                                                    3
                                                                    X70)
                                                                    X70)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X23
                                                                    (ite
                                                                    X26
                                                                    (ite
                                                                    (not
                                                                    (= X25 4))
                                                                    4
                                                                    X71)
                                                                    X71)
                                                                    X71)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    X30
                                                                    (ite
                                                                    X33
                                                                    (ite
                                                                    (not
                                                                    (= X32 4))
                                                                    4
                                                                    X72)
                                                                    X72)
                                                                    X72)))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X37
                                                                    (ite
                                                                    X40
                                                                    (ite
                                                                    (not
                                                                    (= X39 4))
                                                                    4
                                                                    X73)
                                                                    X73)
                                                                    X73)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X45
                                                                    (ite
                                                                    (not
                                                                    (= X46 4))
                                                                    4
                                                                    X74)
                                                                    X74)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X49
                                                                    (ite
                                                                    (not
                                                                    (= X50 5))
                                                                    6
                                                                    X75)
                                                                    X75)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (not
                                                                    (= X55 6))
                                                                    5
                                                                    X76)
                                                                    X76)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X58
                                                                    (ite
                                                                    (not
                                                                    (= X59 4))
                                                                    4
                                                                    X77)
                                                                    X77)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1
                                                                    (ite
                                                                    (not
                                                                    (= X5 1))
                                                                    1
                                                                    X68)
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (not
                                                                    (= X63 4))
                                                                    4
                                                                    X78)
                                                                    X78)
                                                                    X74)
                                                                    X70))
                                                                    X68))
                                                                    (=
                                                                    top.usr.OK_a_1
                                                                    (or
                                                                    (not
                                                                    (or
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    1)
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    2)))
                                                                    (=
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_1
                                                                    1)
                                                                    X67)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X5 1))
                                                                    1
                                                                    X5)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1
                                                                    X79
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    X64
                                                                    X42)
                                                                    X15))
                                                                    X5))
                                                                    (<=
                                                                    0
                                                                    X53
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X22
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X18
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X6
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X48
                                                                    1)
                                                                    (not
                                                                    top.res.init_flag_a_1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
  (top.impl.usr.mode Int)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed Int)
  (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
  (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
))


(declare-primed-var top.usr.onOff Bool)
(declare-primed-var top.usr.decelSet Bool)
(declare-primed-var top.usr.accelResume Bool)
(declare-primed-var top.usr.cancel Bool)
(declare-primed-var top.usr.brakePedal Bool)
(declare-primed-var top.usr.carGear Int)
(declare-primed-var top.usr.carSpeed Real)
(declare-primed-var top.usr.validInputs Bool)
(declare-primed-var top.usr.OK Bool)
(declare-primed-var top.res.init_flag Bool)
(declare-primed-var top.impl.usr.mode Int)
(declare-primed-var top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
(declare-primed-var top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
(declare-primed-var top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
(declare-primed-var top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed Int)
(declare-primed-var top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
(declare-primed-var top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)

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
    (top.impl.usr.mode Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
  ) Bool
  
  (let
   ((X1 Bool false))
   (let
    ((X2
      Bool (and
            (and
             (and
              (and (not top.usr.cancel) (not top.usr.brakePedal))
              (ite (= top.usr.carGear 3) true false))
             (ite (>= top.usr.carSpeed 15.0) true false))
            top.usr.validInputs)))
    (let
     ((X3 Bool false))
     (and
      (=
       top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out
       (ite
        (<=
         (ite (>= 0 (ite top.usr.decelSet 1 0)) 0 (ite top.usr.decelSet 1 0))
         20)
        (ite (>= 0 (ite top.usr.decelSet 1 0)) 0 (ite top.usr.decelSet 1 0))
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
      (let
       ((X4 Int 0))
       (let
        ((X5 Int 0))
        (and
         (=
          top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep
          true)
         (let
          ((X6 Int (ite (not top.usr.onOff) 0 1)))
          (let
           ((X7
             Bool (and
                   (and (>= X5 2) (<= X5 8))
                   (not (ite (not (= X6 0)) true false)))))
           (let
            ((X8 Int (ite X7 (ite (and (>= X5 2) (<= X5 8)) 0 X5) X5)))
            (let
             ((X9 Int (ite X7 (ite (not (= X8 1)) 1 X8) X8)))
             (let
              ((X10
                Bool (and
                      (= X9 1)
                      (and (ite (not (= X6 0)) true false) (not X7)))))
              (let
               ((X11 Int (ite X10 (ite (= X9 1) 0 X9) X9)))
               (let
                ((X12 Int (ite (not (and (>= X11 2) (<= X11 8))) 2 X11)))
                (let
                 ((X13
                   Bool (and
                         (not (and (>= X11 2) (<= X11 8)))
                         (and (>= X12 2) (<= X12 8)))))
                 (let
                  ((X14 Int (ite X13 (ite (not (= X12 7)) 7 X12) X12)))
                  (let
                   ((X15 Int (ite X10 X14 X11)))
                   (let
                    ((X16 Bool (or X10 X7)))
                    (let
                     ((X17
                       Int (ite
                            X7
                            (ite
                             (and (>= X5 2) (<= X5 8))
                             (ite
                              (and (>= X5 3) (<= X5 6))
                              (ite (= X5 4) 0 X4)
                              X4)
                             X4)
                            X4)))
                     (let
                      ((X18 Int (ite (not X2) 0 1)))
                      (let
                       ((X19
                         Bool (and
                               (and (>= X15 3) (<= X15 6))
                               (not (ite (not (= X18 0)) true false)))))
                       (let
                        ((X20
                          Int (ite
                               X19
                               (ite (and (>= X15 3) (<= X15 6)) 2 X15)
                               X15)))
                        (let
                         ((X21 Int (ite X19 (ite (not (= X20 8)) 8 X20) X20)))
                         (let
                          ((X22 Int (ite (not X1) 0 1)))
                          (let
                           ((X23
                             Bool (and
                                   (= X21 8)
                                   (and
                                    (and
                                     (ite
                                      (not (= (ite (not (= X22 1)) 0 1) 0))
                                      true
                                      false)
                                     (ite
                                      (not (= (ite (not (= X18 1)) 0 1) 0))
                                      true
                                      false))
                                    (not X19)))))
                           (let
                            ((X24 Int (ite X23 (ite (= X21 8) 2 X21) X21)))
                            (let
                             ((X25
                               Int (ite
                                    (not (and (>= X24 3) (<= X24 6)))
                                    3
                                    X24)))
                             (let
                              ((X26
                                Bool (and
                                      (not (and (>= X24 3) (<= X24 6)))
                                      (and (>= X25 3) (<= X25 6)))))
                              (let
                               ((X27
                                 Int (ite
                                      X26
                                      (ite (not (= X25 4)) 4 X25)
                                      X25)))
                               (let
                                ((X28 Int (ite X23 X27 X24)))
                                (let
                                 ((X29 Bool (or X23 X19)))
                                 (let
                                  ((X30
                                    Bool (and
                                          (= X28 8)
                                          (and
                                           (and
                                            (ite
                                             (not
                                              (=
                                               (ite
                                                (not
                                                 (= (ite (not X3) 0 1) 1))
                                                0
                                                1)
                                               0))
                                             true
                                             false)
                                            (ite
                                             (not
                                              (= (ite (not (= X18 1)) 0 1) 0))
                                             true
                                             false))
                                           (not X29)))))
                                  (let
                                   ((X31
                                     Int (ite X30 (ite (= X28 8) 2 X28) X28)))
                                   (let
                                    ((X32
                                      Int (ite
                                           (not (and (>= X31 3) (<= X31 6)))
                                           3
                                           X31)))
                                    (let
                                     ((X33
                                       Bool (and
                                             (not
                                              (and (>= X31 3) (<= X31 6)))
                                             (and (>= X32 3) (<= X32 6)))))
                                     (let
                                      ((X34
                                        Int (ite
                                             X33
                                             (ite (not (= X32 4)) 4 X32)
                                             X32)))
                                      (let
                                       ((X35 Int (ite X30 X34 X31)))
                                       (let
                                        ((X36 Bool (or X30 X29)))
                                        (let
                                         ((X37
                                           Bool (and
                                                 (= X35 7)
                                                 (and
                                                  (and
                                                   (ite
                                                    (not
                                                     (=
                                                      (ite
                                                       (not (= X22 1))
                                                       0
                                                       1)
                                                      0))
                                                    true
                                                    false)
                                                   (ite
                                                    (not
                                                     (=
                                                      (ite
                                                       (not (= X18 1))
                                                       0
                                                       1)
                                                      0))
                                                    true
                                                    false))
                                                  (not X36)))))
                                         (let
                                          ((X38
                                            Int (ite
                                                 X37
                                                 (ite (= X35 7) 2 X35)
                                                 X35)))
                                          (let
                                           ((X39
                                             Int (ite
                                                  (not
                                                   (and
                                                    (>= X38 3)
                                                    (<= X38 6)))
                                                  3
                                                  X38)))
                                           (let
                                            ((X40
                                              Bool (and
                                                    (not
                                                     (and
                                                      (>= X38 3)
                                                      (<= X38 6)))
                                                    (and
                                                     (>= X39 3)
                                                     (<= X39 6)))))
                                            (let
                                             ((X41
                                               Int (ite
                                                    X40
                                                    (ite
                                                     (not (= X39 4))
                                                     4
                                                     X39)
                                                    X39)))
                                             (let
                                              ((X42 Int (ite X37 X41 X38)))
                                              (let
                                               ((X43
                                                 Int (ite
                                                      X37
                                                      1
                                                      (ite
                                                       X23
                                                       1
                                                       (ite
                                                        X19
                                                        (ite
                                                         (and
                                                          (>= X15 3)
                                                          (<= X15 6))
                                                         (ite
                                                          (= X15 4)
                                                          0
                                                          X17)
                                                         X17)
                                                        X17)))))
                                               (let
                                                ((X44 Bool (or X37 X36)))
                                                (let
                                                 ((X45
                                                   Bool (and
                                                         (= X42 4)
                                                         (= X22 1))))
                                                 (let
                                                  ((X46
                                                    Int (ite
                                                         X45
                                                         (ite
                                                          (= X42 4)
                                                          3
                                                          X42)
                                                         X42)))
                                                  (let
                                                   ((X47
                                                     Int (ite
                                                          X45
                                                          (ite
                                                           (not (= X46 4))
                                                           4
                                                           X46)
                                                          X46)))
                                                   (let
                                                    ((X48
                                                      Int (ite
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
                                                     ((X49
                                                       Bool (and
                                                             (= X47 4)
                                                             (and
                                                              (= X48 1)
                                                              (not X45)))))
                                                     (let
                                                      ((X50
                                                        Int (ite
                                                             X49
                                                             (ite
                                                              (= X47 4)
                                                              3
                                                              X47)
                                                             X47)))
                                                      (let
                                                       ((X51
                                                         Int (ite
                                                              X49
                                                              (ite
                                                               (not
                                                                (= X50 5))
                                                               5
                                                               X50)
                                                              X50)))
                                                       (let
                                                        ((X52
                                                          Bool (or X49 X45)))
                                                        (let
                                                         ((X53
                                                           Int (ite
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
                                                          ((X54
                                                            Bool (and
                                                                  (= X51 4)
                                                                  (and
                                                                   (= X53 1)
                                                                   (not X52)))))
                                                          (let
                                                           ((X55
                                                             Int (ite
                                                                  X54
                                                                  (ite
                                                                   (= X51 4)
                                                                   3
                                                                   X51)
                                                                  X51)))
                                                           (let
                                                            ((X56
                                                              Int (ite
                                                                   X54
                                                                   (ite
                                                                    (not
                                                                    (= X55 6))
                                                                    6
                                                                    X55)
                                                                   X55)))
                                                            (let
                                                             ((X57
                                                               Bool (or
                                                                    X54
                                                                    X52)))
                                                             (let
                                                              ((X58
                                                                Bool 
                                                                (and
                                                                 (= X56 6)
                                                                 (and
                                                                  (= X53 0)
                                                                  (not X57)))))
                                                              (let
                                                               ((X59
                                                                 Int 
                                                                 (ite
                                                                  X58
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)
                                                                  X56)))
                                                               (let
                                                                ((X60
                                                                  Int 
                                                                  (ite
                                                                   X58
                                                                   (ite
                                                                    (not
                                                                    (= X59 4))
                                                                    4
                                                                    X59)
                                                                   X59)))
                                                                (let
                                                                 ((X61
                                                                   Bool 
                                                                   (or
                                                                    X58
                                                                    X57)))
                                                                 (let
                                                                  ((X62
                                                                    Bool 
                                                                    (and
                                                                    (= X60 5)
                                                                    (and
                                                                    (= X48 0)
                                                                    (not X61)))))
                                                                  (let
                                                                   ((X63
                                                                    Int 
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (= X60 5)
                                                                    3
                                                                    X60)
                                                                    X60)))
                                                                   (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (not
                                                                    (= X63 4))
                                                                    4
                                                                    X63)
                                                                    X63)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X45
                                                                    1
                                                                    X43)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    X49
                                                                    (ite
                                                                    (= X47 4)
                                                                    0
                                                                    X65)
                                                                    X65)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep
                                                                    X4
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    (or
                                                                    X62
                                                                    X61))
                                                                    (= X64 4))
                                                                    0
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (= X51 4)
                                                                    0
                                                                    X66)
                                                                    X66))
                                                                    X43)
                                                                    X17))
                                                                    X4))
                                                                    (let
                                                                    ((X67
                                                                    Bool 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed
                                                                    0))
                                                                    true
                                                                    false)))
                                                                    (let
                                                                    ((X68
                                                                    Int 0))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X7
                                                                    (ite
                                                                    (not
                                                                    (= X8 1))
                                                                    1
                                                                    X68)
                                                                    X68)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X10
                                                                    (ite
                                                                    X13
                                                                    (ite
                                                                    (not
                                                                    (= X12 7))
                                                                    2
                                                                    X69)
                                                                    X69)
                                                                    X69)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X19
                                                                    (ite
                                                                    (not
                                                                    (= X20 8))
                                                                    3
                                                                    X70)
                                                                    X70)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X23
                                                                    (ite
                                                                    X26
                                                                    (ite
                                                                    (not
                                                                    (= X25 4))
                                                                    4
                                                                    X71)
                                                                    X71)
                                                                    X71)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    X30
                                                                    (ite
                                                                    X33
                                                                    (ite
                                                                    (not
                                                                    (= X32 4))
                                                                    4
                                                                    X72)
                                                                    X72)
                                                                    X72)))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X37
                                                                    (ite
                                                                    X40
                                                                    (ite
                                                                    (not
                                                                    (= X39 4))
                                                                    4
                                                                    X73)
                                                                    X73)
                                                                    X73)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X45
                                                                    (ite
                                                                    (not
                                                                    (= X46 4))
                                                                    4
                                                                    X74)
                                                                    X74)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X49
                                                                    (ite
                                                                    (not
                                                                    (= X50 5))
                                                                    6
                                                                    X75)
                                                                    X75)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (not
                                                                    (= X55 6))
                                                                    5
                                                                    X76)
                                                                    X76)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X58
                                                                    (ite
                                                                    (not
                                                                    (= X59 4))
                                                                    4
                                                                    X77)
                                                                    X77)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep
                                                                    (ite
                                                                    (not
                                                                    (= X5 1))
                                                                    1
                                                                    X68)
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (not
                                                                    (= X63 4))
                                                                    4
                                                                    X78)
                                                                    X78)
                                                                    X74)
                                                                    X70))
                                                                    X68))
                                                                    (=
                                                                    top.usr.OK
                                                                    (or
                                                                    (not
                                                                    (or
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    1)
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    2)))
                                                                    (=
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed
                                                                    1)
                                                                    X67)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X5 1))
                                                                    1
                                                                    X5)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep
                                                                    X79
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    X64
                                                                    X42)
                                                                    X15))
                                                                    X5))
                                                                    (<=
                                                                    0
                                                                    X53
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X22
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X18
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X6
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X48
                                                                    1)
                                                                    top.res.init_flag))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.mode Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed Int)
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
    (top.impl.usr.mode! Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___! Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep! Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root! Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed! Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out! Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out! Int)
  
  ) Bool
  
  (let
   ((X1 Bool (and (not top.usr.decelSet) top.usr.decelSet!)))
   (let
    ((X2
      Bool (and
            (and
             (and
              (and (not top.usr.cancel!) (not top.usr.brakePedal!))
              (ite (= top.usr.carGear! 3) true false))
             (ite (>= top.usr.carSpeed! 15.0) true false))
            top.usr.validInputs!)))
    (let
     ((X3 Bool (and (not top.usr.accelResume) top.usr.accelResume!)))
     (and
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
      (let
       ((X4
         Int top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed))
       (let
        ((X5
          Int top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root))
        (and
         (=
          top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep!
          (ite
           top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
           false
           top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep))
         (let
          ((X6 Int (ite (not top.usr.onOff!) 0 1)))
          (let
           ((X7
             Bool (and
                   (and (>= X5 2) (<= X5 8))
                   (not (ite (not (= X6 0)) true false)))))
           (let
            ((X8 Int (ite X7 (ite (and (>= X5 2) (<= X5 8)) 0 X5) X5)))
            (let
             ((X9 Int (ite X7 (ite (not (= X8 1)) 1 X8) X8)))
             (let
              ((X10
                Bool (and
                      (= X9 1)
                      (and (ite (not (= X6 0)) true false) (not X7)))))
              (let
               ((X11 Int (ite X10 (ite (= X9 1) 0 X9) X9)))
               (let
                ((X12 Int (ite (not (and (>= X11 2) (<= X11 8))) 2 X11)))
                (let
                 ((X13
                   Bool (and
                         (not (and (>= X11 2) (<= X11 8)))
                         (and (>= X12 2) (<= X12 8)))))
                 (let
                  ((X14 Int (ite X13 (ite (not (= X12 7)) 7 X12) X12)))
                  (let
                   ((X15 Int (ite X10 X14 X11)))
                   (let
                    ((X16 Bool (or X10 X7)))
                    (let
                     ((X17
                       Int (ite
                            X7
                            (ite
                             (and (>= X5 2) (<= X5 8))
                             (ite
                              (and (>= X5 3) (<= X5 6))
                              (ite (= X5 4) 0 X4)
                              X4)
                             X4)
                            X4)))
                     (let
                      ((X18 Int (ite (not X2) 0 1)))
                      (let
                       ((X19
                         Bool (and
                               (and (>= X15 3) (<= X15 6))
                               (not (ite (not (= X18 0)) true false)))))
                       (let
                        ((X20
                          Int (ite
                               X19
                               (ite (and (>= X15 3) (<= X15 6)) 2 X15)
                               X15)))
                        (let
                         ((X21 Int (ite X19 (ite (not (= X20 8)) 8 X20) X20)))
                         (let
                          ((X22 Int (ite (not X1) 0 1)))
                          (let
                           ((X23
                             Bool (and
                                   (= X21 8)
                                   (and
                                    (and
                                     (ite
                                      (not (= (ite (not (= X22 1)) 0 1) 0))
                                      true
                                      false)
                                     (ite
                                      (not (= (ite (not (= X18 1)) 0 1) 0))
                                      true
                                      false))
                                    (not X19)))))
                           (let
                            ((X24 Int (ite X23 (ite (= X21 8) 2 X21) X21)))
                            (let
                             ((X25
                               Int (ite
                                    (not (and (>= X24 3) (<= X24 6)))
                                    3
                                    X24)))
                             (let
                              ((X26
                                Bool (and
                                      (not (and (>= X24 3) (<= X24 6)))
                                      (and (>= X25 3) (<= X25 6)))))
                              (let
                               ((X27
                                 Int (ite
                                      X26
                                      (ite (not (= X25 4)) 4 X25)
                                      X25)))
                               (let
                                ((X28 Int (ite X23 X27 X24)))
                                (let
                                 ((X29 Bool (or X23 X19)))
                                 (let
                                  ((X30
                                    Bool (and
                                          (= X28 8)
                                          (and
                                           (and
                                            (ite
                                             (not
                                              (=
                                               (ite
                                                (not
                                                 (= (ite (not X3) 0 1) 1))
                                                0
                                                1)
                                               0))
                                             true
                                             false)
                                            (ite
                                             (not
                                              (= (ite (not (= X18 1)) 0 1) 0))
                                             true
                                             false))
                                           (not X29)))))
                                  (let
                                   ((X31
                                     Int (ite X30 (ite (= X28 8) 2 X28) X28)))
                                   (let
                                    ((X32
                                      Int (ite
                                           (not (and (>= X31 3) (<= X31 6)))
                                           3
                                           X31)))
                                    (let
                                     ((X33
                                       Bool (and
                                             (not
                                              (and (>= X31 3) (<= X31 6)))
                                             (and (>= X32 3) (<= X32 6)))))
                                     (let
                                      ((X34
                                        Int (ite
                                             X33
                                             (ite (not (= X32 4)) 4 X32)
                                             X32)))
                                      (let
                                       ((X35 Int (ite X30 X34 X31)))
                                       (let
                                        ((X36 Bool (or X30 X29)))
                                        (let
                                         ((X37
                                           Bool (and
                                                 (= X35 7)
                                                 (and
                                                  (and
                                                   (ite
                                                    (not
                                                     (=
                                                      (ite
                                                       (not (= X22 1))
                                                       0
                                                       1)
                                                      0))
                                                    true
                                                    false)
                                                   (ite
                                                    (not
                                                     (=
                                                      (ite
                                                       (not (= X18 1))
                                                       0
                                                       1)
                                                      0))
                                                    true
                                                    false))
                                                  (not X36)))))
                                         (let
                                          ((X38
                                            Int (ite
                                                 X37
                                                 (ite (= X35 7) 2 X35)
                                                 X35)))
                                          (let
                                           ((X39
                                             Int (ite
                                                  (not
                                                   (and
                                                    (>= X38 3)
                                                    (<= X38 6)))
                                                  3
                                                  X38)))
                                           (let
                                            ((X40
                                              Bool (and
                                                    (not
                                                     (and
                                                      (>= X38 3)
                                                      (<= X38 6)))
                                                    (and
                                                     (>= X39 3)
                                                     (<= X39 6)))))
                                            (let
                                             ((X41
                                               Int (ite
                                                    X40
                                                    (ite
                                                     (not (= X39 4))
                                                     4
                                                     X39)
                                                    X39)))
                                             (let
                                              ((X42 Int (ite X37 X41 X38)))
                                              (let
                                               ((X43
                                                 Int (ite
                                                      X37
                                                      1
                                                      (ite
                                                       X23
                                                       1
                                                       (ite
                                                        X19
                                                        (ite
                                                         (and
                                                          (>= X15 3)
                                                          (<= X15 6))
                                                         (ite
                                                          (= X15 4)
                                                          0
                                                          X17)
                                                         X17)
                                                        X17)))))
                                               (let
                                                ((X44 Bool (or X37 X36)))
                                                (let
                                                 ((X45
                                                   Bool (and
                                                         (= X42 4)
                                                         (= X22 1))))
                                                 (let
                                                  ((X46
                                                    Int (ite
                                                         X45
                                                         (ite
                                                          (= X42 4)
                                                          3
                                                          X42)
                                                         X42)))
                                                  (let
                                                   ((X47
                                                     Int (ite
                                                          X45
                                                          (ite
                                                           (not (= X46 4))
                                                           4
                                                           X46)
                                                          X46)))
                                                   (let
                                                    ((X48
                                                      Int (ite
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
                                                     ((X49
                                                       Bool (and
                                                             (= X47 4)
                                                             (and
                                                              (= X48 1)
                                                              (not X45)))))
                                                     (let
                                                      ((X50
                                                        Int (ite
                                                             X49
                                                             (ite
                                                              (= X47 4)
                                                              3
                                                              X47)
                                                             X47)))
                                                      (let
                                                       ((X51
                                                         Int (ite
                                                              X49
                                                              (ite
                                                               (not
                                                                (= X50 5))
                                                               5
                                                               X50)
                                                              X50)))
                                                       (let
                                                        ((X52
                                                          Bool (or X49 X45)))
                                                        (let
                                                         ((X53
                                                           Int (ite
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
                                                          ((X54
                                                            Bool (and
                                                                  (= X51 4)
                                                                  (and
                                                                   (= X53 1)
                                                                   (not X52)))))
                                                          (let
                                                           ((X55
                                                             Int (ite
                                                                  X54
                                                                  (ite
                                                                   (= X51 4)
                                                                   3
                                                                   X51)
                                                                  X51)))
                                                           (let
                                                            ((X56
                                                              Int (ite
                                                                   X54
                                                                   (ite
                                                                    (not
                                                                    (= X55 6))
                                                                    6
                                                                    X55)
                                                                   X55)))
                                                            (let
                                                             ((X57
                                                               Bool (or
                                                                    X54
                                                                    X52)))
                                                             (let
                                                              ((X58
                                                                Bool 
                                                                (and
                                                                 (= X56 6)
                                                                 (and
                                                                  (= X53 0)
                                                                  (not X57)))))
                                                              (let
                                                               ((X59
                                                                 Int 
                                                                 (ite
                                                                  X58
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)
                                                                  X56)))
                                                               (let
                                                                ((X60
                                                                  Int 
                                                                  (ite
                                                                   X58
                                                                   (ite
                                                                    (not
                                                                    (= X59 4))
                                                                    4
                                                                    X59)
                                                                   X59)))
                                                                (let
                                                                 ((X61
                                                                   Bool 
                                                                   (or
                                                                    X58
                                                                    X57)))
                                                                 (let
                                                                  ((X62
                                                                    Bool 
                                                                    (and
                                                                    (= X60 5)
                                                                    (and
                                                                    (= X48 0)
                                                                    (not X61)))))
                                                                  (let
                                                                   ((X63
                                                                    Int 
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (= X60 5)
                                                                    3
                                                                    X60)
                                                                    X60)))
                                                                   (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (not
                                                                    (= X63 4))
                                                                    4
                                                                    X63)
                                                                    X63)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X45
                                                                    1
                                                                    X43)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    X49
                                                                    (ite
                                                                    (= X47 4)
                                                                    0
                                                                    X65)
                                                                    X65)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___!
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep!
                                                                    X4
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    (or
                                                                    X62
                                                                    X61))
                                                                    (= X64 4))
                                                                    0
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (= X51 4)
                                                                    0
                                                                    X66)
                                                                    X66))
                                                                    X43)
                                                                    X17))
                                                                    X4))
                                                                    (let
                                                                    ((X67
                                                                    Bool 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed!
                                                                    0))
                                                                    true
                                                                    false)))
                                                                    (let
                                                                    ((X68
                                                                    Int top.impl.usr.mode))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X7
                                                                    (ite
                                                                    (not
                                                                    (= X8 1))
                                                                    1
                                                                    X68)
                                                                    X68)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X10
                                                                    (ite
                                                                    X13
                                                                    (ite
                                                                    (not
                                                                    (= X12 7))
                                                                    2
                                                                    X69)
                                                                    X69)
                                                                    X69)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X19
                                                                    (ite
                                                                    (not
                                                                    (= X20 8))
                                                                    3
                                                                    X70)
                                                                    X70)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X23
                                                                    (ite
                                                                    X26
                                                                    (ite
                                                                    (not
                                                                    (= X25 4))
                                                                    4
                                                                    X71)
                                                                    X71)
                                                                    X71)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    X30
                                                                    (ite
                                                                    X33
                                                                    (ite
                                                                    (not
                                                                    (= X32 4))
                                                                    4
                                                                    X72)
                                                                    X72)
                                                                    X72)))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X37
                                                                    (ite
                                                                    X40
                                                                    (ite
                                                                    (not
                                                                    (= X39 4))
                                                                    4
                                                                    X73)
                                                                    X73)
                                                                    X73)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X45
                                                                    (ite
                                                                    (not
                                                                    (= X46 4))
                                                                    4
                                                                    X74)
                                                                    X74)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X49
                                                                    (ite
                                                                    (not
                                                                    (= X50 5))
                                                                    6
                                                                    X75)
                                                                    X75)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (not
                                                                    (= X55 6))
                                                                    5
                                                                    X76)
                                                                    X76)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X58
                                                                    (ite
                                                                    (not
                                                                    (= X59 4))
                                                                    4
                                                                    X77)
                                                                    X77)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep!
                                                                    (ite
                                                                    (not
                                                                    (= X5 1))
                                                                    1
                                                                    X68)
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    (ite
                                                                    X62
                                                                    (ite
                                                                    (not
                                                                    (= X63 4))
                                                                    4
                                                                    X78)
                                                                    X78)
                                                                    X74)
                                                                    X70))
                                                                    X68))
                                                                    (=
                                                                    top.usr.OK!
                                                                    (or
                                                                    (not
                                                                    (or
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    1)
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    2)))
                                                                    (=
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed!
                                                                    1)
                                                                    X67)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X5 1))
                                                                    1
                                                                    X5)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep!
                                                                    X79
                                                                    (ite
                                                                    (and
                                                                    (not X16)
                                                                    (and
                                                                    (>=
                                                                    X15
                                                                    2)
                                                                    (<=
                                                                    X15
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X44)
                                                                    (and
                                                                    (>=
                                                                    X42
                                                                    3)
                                                                    (<=
                                                                    X42
                                                                    6)))
                                                                    X64
                                                                    X42)
                                                                    X15))
                                                                    X5))
                                                                    (<=
                                                                    0
                                                                    X53
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X22
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X18
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X6
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X48
                                                                    1)
                                                                    (not
                                                                    top.res.init_flag!)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.mode Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
  ) Bool
  
  top.usr.OK
)

(inv-constraint str_invariant init trans prop)

(check-synth)
