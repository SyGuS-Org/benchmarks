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
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock_a_0 Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step_a_0 Bool)
    (top.impl.usr.newDesiredSpeed1_a_0 Real)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock_a_0 Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step_a_0 Bool)
    (top.impl.usr.newDesiredSpeed_a_0 Real)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0 Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0 Bool)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0 Real)
    (top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_0 Real)
  ) Bool
  
  (let
   ((X1 Real 0.0))
   (let
    ((X2 Bool false))
    (let
     ((X3
       Bool (and
             (and
              (and
               (and (not top.usr.cancel_a_0) (not top.usr.brakePedal_a_0))
               (ite (= top.usr.carGear_a_0 3) true false))
              (ite (>= top.usr.carSpeed_a_0 15.0) true false))
             top.usr.validInputs_a_0)))
     (let
      ((X4 Bool false))
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
        ((X5 Int 0))
        (let
         ((X6 Int 0))
         (and
          (=
           top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0
           true)
          (let
           ((X7 Int (ite (not top.usr.onOff_a_0) 0 1)))
           (let
            ((X8
              Bool (and
                    (and (>= X6 2) (<= X6 8))
                    (not (ite (not (= X7 0)) true false)))))
            (let
             ((X9 Int (ite X8 (ite (and (>= X6 2) (<= X6 8)) 0 X6) X6)))
             (let
              ((X10 Int (ite X8 (ite (not (= X9 1)) 1 X5) X5)))
              (let
               ((X11 Int (ite X8 (ite (not (= X9 1)) 1 X9) X9)))
               (let
                ((X12
                  Bool (and
                        (= X11 1)
                        (and (ite (not (= X7 0)) true false) (not X8)))))
                (let
                 ((X13 Int (ite X12 (ite (= X11 1) 0 X11) X11)))
                 (let
                  ((X14 Int (ite (not (and (>= X13 2) (<= X13 8))) 2 X13)))
                  (let
                   ((X15
                     Bool (and
                           (not (and (>= X13 2) (<= X13 8)))
                           (and (>= X14 2) (<= X14 8)))))
                   (let
                    ((X16
                      Int (ite
                           X12
                           (ite X15 (ite (not (= X14 7)) 2 X10) X10)
                           X10)))
                    (let
                     ((X17 Int (ite X15 (ite (not (= X14 7)) 7 X14) X14)))
                     (let
                      ((X18 Int (ite X12 X17 X13)))
                      (let
                       ((X19 Bool (or X12 X8)))
                       (let
                        ((X20 Int (ite (not X3) 0 1)))
                        (let
                         ((X21
                           Bool (and
                                 (and (>= X18 3) (<= X18 6))
                                 (not (ite (not (= X20 0)) true false)))))
                         (let
                          ((X22
                            Int (ite
                                 X21
                                 (ite (and (>= X18 3) (<= X18 6)) 2 X18)
                                 X18)))
                          (let
                           ((X23
                             Int (ite X21 (ite (not (= X22 8)) 8 X22) X22)))
                           (let
                            ((X24 Int (ite (not X2) 0 1)))
                            (let
                             ((X25
                               Bool (and
                                     (= X23 8)
                                     (and
                                      (and
                                       (ite
                                        (not (= (ite (not (= X24 1)) 0 1) 0))
                                        true
                                        false)
                                       (ite
                                        (not (= (ite (not (= X20 1)) 0 1) 0))
                                        true
                                        false))
                                      (not X21)))))
                             (let
                              ((X26 Int (ite X25 (ite (= X23 8) 2 X23) X23)))
                              (let
                               ((X27
                                 Int (ite
                                      (not (and (>= X26 3) (<= X26 6)))
                                      3
                                      X26)))
                               (let
                                ((X28
                                  Bool (and
                                        (not (and (>= X26 3) (<= X26 6)))
                                        (and (>= X27 3) (<= X27 6)))))
                                (let
                                 ((X29
                                   Int (ite
                                        X28
                                        (ite (not (= X27 4)) 4 X27)
                                        X27)))
                                 (let
                                  ((X30 Int (ite X25 X29 X26)))
                                  (let
                                   ((X31 Bool (or X25 X21)))
                                   (let
                                    ((X32
                                      Bool (and
                                            (= X30 8)
                                            (and
                                             (and
                                              (ite
                                               (not
                                                (=
                                                 (ite
                                                  (not
                                                   (= (ite (not X4) 0 1) 1))
                                                  0
                                                  1)
                                                 0))
                                               true
                                               false)
                                              (ite
                                               (not
                                                (=
                                                 (ite (not (= X20 1)) 0 1)
                                                 0))
                                               true
                                               false))
                                             (not X31)))))
                                    (let
                                     ((X33
                                       Int (ite
                                            X32
                                            (ite (= X30 8) 2 X30)
                                            X30)))
                                     (let
                                      ((X34
                                        Int (ite
                                             (not
                                              (and (>= X33 3) (<= X33 6)))
                                             3
                                             X33)))
                                      (let
                                       ((X35
                                         Bool (and
                                               (not
                                                (and (>= X33 3) (<= X33 6)))
                                               (and (>= X34 3) (<= X34 6)))))
                                       (let
                                        ((X36
                                          Int (ite
                                               X35
                                               (ite (not (= X34 4)) 4 X34)
                                               X34)))
                                        (let
                                         ((X37 Int (ite X32 X36 X33)))
                                         (let
                                          ((X38 Bool (or X32 X31)))
                                          (let
                                           ((X39
                                             Bool (and
                                                   (= X37 7)
                                                   (and
                                                    (and
                                                     (ite
                                                      (not
                                                       (=
                                                        (ite
                                                         (not (= X24 1))
                                                         0
                                                         1)
                                                        0))
                                                      true
                                                      false)
                                                     (ite
                                                      (not
                                                       (=
                                                        (ite
                                                         (not (= X20 1))
                                                         0
                                                         1)
                                                        0))
                                                      true
                                                      false))
                                                    (not X38)))))
                                           (let
                                            ((X40
                                              Int (ite
                                                   X39
                                                   (ite (= X37 7) 2 X37)
                                                   X37)))
                                            (let
                                             ((X41
                                               Int (ite
                                                    X21
                                                    (ite
                                                     (not (= X22 8))
                                                     3
                                                     X16)
                                                    X16)))
                                             (let
                                              ((X42
                                                Int (ite
                                                     X25
                                                     (ite
                                                      X28
                                                      (ite
                                                       (not (= X27 4))
                                                       4
                                                       X41)
                                                      X41)
                                                     X41)))
                                              (let
                                               ((X43
                                                 Int (ite
                                                      X32
                                                      (ite
                                                       X35
                                                       (ite
                                                        (not (= X34 4))
                                                        4
                                                        X42)
                                                       X42)
                                                      X42)))
                                               (let
                                                ((X44
                                                  Int (ite
                                                       (not
                                                        (and
                                                         (>= X40 3)
                                                         (<= X40 6)))
                                                       3
                                                       X40)))
                                                (let
                                                 ((X45
                                                   Bool (and
                                                         (not
                                                          (and
                                                           (>= X40 3)
                                                           (<= X40 6)))
                                                         (and
                                                          (>= X44 3)
                                                          (<= X44 6)))))
                                                 (let
                                                  ((X46
                                                    Int (ite
                                                         X39
                                                         (ite
                                                          X45
                                                          (ite
                                                           (not (= X44 4))
                                                           4
                                                           X43)
                                                          X43)
                                                         X43)))
                                                  (let
                                                   ((X47
                                                     Int (ite
                                                          X45
                                                          (ite
                                                           (not (= X44 4))
                                                           4
                                                           X44)
                                                          X44)))
                                                   (let
                                                    ((X48
                                                      Int (ite X39 X47 X40)))
                                                    (let
                                                     ((X49 Bool (or X39 X38)))
                                                     (let
                                                      ((X50
                                                        Bool (and
                                                              (= X48 4)
                                                              (= X24 1))))
                                                      (let
                                                       ((X51
                                                         Int (ite
                                                              X50
                                                              (ite
                                                               (= X48 4)
                                                               3
                                                               X48)
                                                              X48)))
                                                       (let
                                                        ((X52
                                                          Int (ite
                                                               X50
                                                               (ite
                                                                (not
                                                                 (= X51 4))
                                                                4
                                                                X51)
                                                               X51)))
                                                        (let
                                                         ((X53
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
                                                          ((X54
                                                            Bool (and
                                                                  (= X52 4)
                                                                  (and
                                                                   (= X53 1)
                                                                   (not X50)))))
                                                          (let
                                                           ((X55
                                                             Int (ite
                                                                  X54
                                                                  (ite
                                                                   (= X52 4)
                                                                   3
                                                                   X52)
                                                                  X52)))
                                                           (let
                                                            ((X56
                                                              Int (ite
                                                                   X54
                                                                   (ite
                                                                    (not
                                                                    (= X55 5))
                                                                    5
                                                                    X55)
                                                                   X55)))
                                                            (let
                                                             ((X57
                                                               Bool (or
                                                                    X54
                                                                    X50)))
                                                             (let
                                                              ((X58
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
                                                               ((X59
                                                                 Bool 
                                                                 (and
                                                                  (= X56 4)
                                                                  (and
                                                                   (= X58 1)
                                                                   (not X57)))))
                                                               (let
                                                                ((X60
                                                                  Int 
                                                                  (ite
                                                                   X59
                                                                   (ite
                                                                    (= X56 4)
                                                                    3
                                                                    X56)
                                                                   X56)))
                                                                (let
                                                                 ((X61
                                                                   Int 
                                                                   (ite
                                                                    X59
                                                                    (ite
                                                                    (not
                                                                    (= X60 6))
                                                                    6
                                                                    X60)
                                                                    X60)))
                                                                 (let
                                                                  ((X62
                                                                    Bool 
                                                                    (or
                                                                    X59
                                                                    X57)))
                                                                  (let
                                                                   ((X63
                                                                    Bool 
                                                                    (and
                                                                    (= X61 6)
                                                                    (and
                                                                    (= X58 0)
                                                                    (not X62)))))
                                                                   (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (= X61 6)
                                                                    3
                                                                    X61)
                                                                    X61)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X64)
                                                                    X64)))
                                                                    (let
                                                                    ((X66
                                                                    Bool 
                                                                    (or
                                                                    X63
                                                                    X62)))
                                                                    (let
                                                                    ((X67
                                                                    Bool 
                                                                    (and
                                                                    (= X65 5)
                                                                    (and
                                                                    (= X53 0)
                                                                    (not X66)))))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (= X65 5)
                                                                    3
                                                                    X65)
                                                                    X65)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    (ite
                                                                    (not
                                                                    (= X51 4))
                                                                    4
                                                                    X46)
                                                                    X46)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (not
                                                                    (= X55 5))
                                                                    6
                                                                    X69)
                                                                    X69)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X59
                                                                    (ite
                                                                    (not
                                                                    (= X60 6))
                                                                    5
                                                                    X70)
                                                                    X70)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X71)
                                                                    X71)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step_a_0
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X5)
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (not
                                                                    (= X68 4))
                                                                    4
                                                                    X72)
                                                                    X72)
                                                                    X46)
                                                                    X16))
                                                                    X5))
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock_a_0
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    6)
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.newDesiredSpeed_a_0
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step_a_0
                                                                    (not
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock_a_0))
                                                                    0.0
                                                                    (+
                                                                    X1
                                                                    (/ 1 20))))
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step_a_0
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock_a_0
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    5)
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.newDesiredSpeed1_a_0
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step_a_0
                                                                    (not
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock_a_0))
                                                                    0.0
                                                                    (-
                                                                    X1
                                                                    (/ 1 20))))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    6)
                                                                    true
                                                                    false)
                                                                    top.impl.usr.newDesiredSpeed_a_0
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    5)
                                                                    true
                                                                    false)
                                                                    top.impl.usr.newDesiredSpeed1_a_0
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    4)
                                                                    true
                                                                    false)
                                                                    X1
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    3)
                                                                    true
                                                                    false)
                                                                    X1
                                                                    0.0)))))
                                                                    (let
                                                                    ((X73
                                                                    Int 0))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X8
                                                                    (ite
                                                                    (and
                                                                    (>= X6 2)
                                                                    (<= X6 8))
                                                                    (ite
                                                                    (and
                                                                    (>= X6 3)
                                                                    (<= X6 6))
                                                                    (ite
                                                                    (= X6 4)
                                                                    0
                                                                    X73)
                                                                    X73)
                                                                    X73)
                                                                    X73)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X39
                                                                    1
                                                                    (ite
                                                                    X25
                                                                    1
                                                                    (ite
                                                                    X21
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    3)
                                                                    (<=
                                                                    X18
                                                                    6))
                                                                    (ite
                                                                    (= X18 4)
                                                                    0
                                                                    X74)
                                                                    X74)
                                                                    X74)))))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (not
                                                                    (= X68 4))
                                                                    4
                                                                    X68)
                                                                    X68)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    1
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (= X52 4)
                                                                    0
                                                                    X77)
                                                                    X77)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0
                                                                    X73
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    (or
                                                                    X67
                                                                    X66))
                                                                    (= X76 4))
                                                                    0
                                                                    (ite
                                                                    X59
                                                                    (ite
                                                                    (= X56 4)
                                                                    0
                                                                    X78)
                                                                    X78))
                                                                    X75)
                                                                    X74))
                                                                    X73))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0
                                                                    0))
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_0
                                                                    (+
                                                                    (/
                                                                    (ite
                                                                    (<
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
                                                                    top.usr.carSpeed_a_0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
                                                                    top.usr.carSpeed_a_0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
                                                                    top.usr.carSpeed_a_0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)))
                                                                    top.usr.carSpeed_a_0)
                                                                    1.0)
                                                                    (- 10.0))
                                                                    (- 10.0)
                                                                    (ite
                                                                    (>
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
                                                                    top.usr.carSpeed_a_0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
                                                                    top.usr.carSpeed_a_0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
                                                                    top.usr.carSpeed_a_0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)))
                                                                    top.usr.carSpeed_a_0)
                                                                    1.0)
                                                                    10.0)
                                                                    10.0
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
                                                                    top.usr.carSpeed_a_0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
                                                                    top.usr.carSpeed_a_0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
                                                                    top.usr.carSpeed_a_0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)))
                                                                    top.usr.carSpeed_a_0)
                                                                    1.0)))
                                                                    20.0)
                                                                    0.0))
                                                                    (let
                                                                    ((X79
                                                                    Real 
                                                                    (ite
                                                                    (or
                                                                    (or
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    4)
                                                                    true
                                                                    false)
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    5)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    6)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (<
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_0
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_0
                                                                    100.0)
                                                                    100.0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_0))
                                                                    0.0)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK_a_0
                                                                    (or
                                                                    (or
                                                                    (or
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    4)
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    5))
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    6))
                                                                    (=
                                                                    X79
                                                                    0.0)))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X6)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0
                                                                    X80
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    X76
                                                                    X48)
                                                                    X18))
                                                                    X6))
                                                                    (<=
                                                                    0
                                                                    X58
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X24
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X20
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X7
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X53
                                                                    1)
                                                                    top.res.init_flag_a_0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock_a_1 Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step_a_1 Bool)
    (top.impl.usr.newDesiredSpeed1_a_1 Real)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock_a_1 Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step_a_1 Bool)
    (top.impl.usr.newDesiredSpeed_a_1 Real)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_1 Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_1 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_1 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_1 Int)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1 Bool)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1 Real)
    (top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_1 Real)
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
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock_a_0 Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step_a_0 Bool)
    (top.impl.usr.newDesiredSpeed1_a_0 Real)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock_a_0 Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step_a_0 Bool)
    (top.impl.usr.newDesiredSpeed_a_0 Real)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0 Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0 Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out_a_0 Int)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0 Bool)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0 Real)
    (top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_0 Real)
  ) Bool
  
  (let
   ((X1
     Real (ite
           (<
            (ite
             top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
             top.usr.carSpeed_a_0
             top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)
            0.0)
           0.0
           (ite
            (>
             (ite
              top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
              top.usr.carSpeed_a_0
              top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)
             100.0)
            100.0
            (ite
             top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_0
             top.usr.carSpeed_a_0
             top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_0)))))
   (let
    ((X2 Bool (and (not top.usr.decelSet_a_0) top.usr.decelSet_a_1)))
    (let
     ((X3
       Bool (and
             (and
              (and
               (and (not top.usr.cancel_a_1) (not top.usr.brakePedal_a_1))
               (ite (= top.usr.carGear_a_1 3) true false))
              (ite (>= top.usr.carSpeed_a_1 15.0) true false))
             top.usr.validInputs_a_1)))
     (let
      ((X4 Bool (and (not top.usr.accelResume_a_0) top.usr.accelResume_a_1)))
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
        ((X5 Int top.impl.usr.mode_a_0))
        (let
         ((X6
           Int top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_0))
         (and
          (=
           top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1
           (ite
            top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_0
            false
            top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_0))
          (let
           ((X7 Int (ite (not top.usr.onOff_a_1) 0 1)))
           (let
            ((X8
              Bool (and
                    (and (>= X6 2) (<= X6 8))
                    (not (ite (not (= X7 0)) true false)))))
            (let
             ((X9 Int (ite X8 (ite (and (>= X6 2) (<= X6 8)) 0 X6) X6)))
             (let
              ((X10 Int (ite X8 (ite (not (= X9 1)) 1 X5) X5)))
              (let
               ((X11 Int (ite X8 (ite (not (= X9 1)) 1 X9) X9)))
               (let
                ((X12
                  Bool (and
                        (= X11 1)
                        (and (ite (not (= X7 0)) true false) (not X8)))))
                (let
                 ((X13 Int (ite X12 (ite (= X11 1) 0 X11) X11)))
                 (let
                  ((X14 Int (ite (not (and (>= X13 2) (<= X13 8))) 2 X13)))
                  (let
                   ((X15
                     Bool (and
                           (not (and (>= X13 2) (<= X13 8)))
                           (and (>= X14 2) (<= X14 8)))))
                   (let
                    ((X16
                      Int (ite
                           X12
                           (ite X15 (ite (not (= X14 7)) 2 X10) X10)
                           X10)))
                    (let
                     ((X17 Int (ite X15 (ite (not (= X14 7)) 7 X14) X14)))
                     (let
                      ((X18 Int (ite X12 X17 X13)))
                      (let
                       ((X19 Bool (or X12 X8)))
                       (let
                        ((X20 Int (ite (not X3) 0 1)))
                        (let
                         ((X21
                           Bool (and
                                 (and (>= X18 3) (<= X18 6))
                                 (not (ite (not (= X20 0)) true false)))))
                         (let
                          ((X22
                            Int (ite
                                 X21
                                 (ite (and (>= X18 3) (<= X18 6)) 2 X18)
                                 X18)))
                          (let
                           ((X23
                             Int (ite X21 (ite (not (= X22 8)) 8 X22) X22)))
                           (let
                            ((X24 Int (ite (not X2) 0 1)))
                            (let
                             ((X25
                               Bool (and
                                     (= X23 8)
                                     (and
                                      (and
                                       (ite
                                        (not (= (ite (not (= X24 1)) 0 1) 0))
                                        true
                                        false)
                                       (ite
                                        (not (= (ite (not (= X20 1)) 0 1) 0))
                                        true
                                        false))
                                      (not X21)))))
                             (let
                              ((X26 Int (ite X25 (ite (= X23 8) 2 X23) X23)))
                              (let
                               ((X27
                                 Int (ite
                                      (not (and (>= X26 3) (<= X26 6)))
                                      3
                                      X26)))
                               (let
                                ((X28
                                  Bool (and
                                        (not (and (>= X26 3) (<= X26 6)))
                                        (and (>= X27 3) (<= X27 6)))))
                                (let
                                 ((X29
                                   Int (ite
                                        X28
                                        (ite (not (= X27 4)) 4 X27)
                                        X27)))
                                 (let
                                  ((X30 Int (ite X25 X29 X26)))
                                  (let
                                   ((X31 Bool (or X25 X21)))
                                   (let
                                    ((X32
                                      Bool (and
                                            (= X30 8)
                                            (and
                                             (and
                                              (ite
                                               (not
                                                (=
                                                 (ite
                                                  (not
                                                   (= (ite (not X4) 0 1) 1))
                                                  0
                                                  1)
                                                 0))
                                               true
                                               false)
                                              (ite
                                               (not
                                                (=
                                                 (ite (not (= X20 1)) 0 1)
                                                 0))
                                               true
                                               false))
                                             (not X31)))))
                                    (let
                                     ((X33
                                       Int (ite
                                            X32
                                            (ite (= X30 8) 2 X30)
                                            X30)))
                                     (let
                                      ((X34
                                        Int (ite
                                             (not
                                              (and (>= X33 3) (<= X33 6)))
                                             3
                                             X33)))
                                      (let
                                       ((X35
                                         Bool (and
                                               (not
                                                (and (>= X33 3) (<= X33 6)))
                                               (and (>= X34 3) (<= X34 6)))))
                                       (let
                                        ((X36
                                          Int (ite
                                               X35
                                               (ite (not (= X34 4)) 4 X34)
                                               X34)))
                                        (let
                                         ((X37 Int (ite X32 X36 X33)))
                                         (let
                                          ((X38 Bool (or X32 X31)))
                                          (let
                                           ((X39
                                             Bool (and
                                                   (= X37 7)
                                                   (and
                                                    (and
                                                     (ite
                                                      (not
                                                       (=
                                                        (ite
                                                         (not (= X24 1))
                                                         0
                                                         1)
                                                        0))
                                                      true
                                                      false)
                                                     (ite
                                                      (not
                                                       (=
                                                        (ite
                                                         (not (= X20 1))
                                                         0
                                                         1)
                                                        0))
                                                      true
                                                      false))
                                                    (not X38)))))
                                           (let
                                            ((X40
                                              Int (ite
                                                   X39
                                                   (ite (= X37 7) 2 X37)
                                                   X37)))
                                            (let
                                             ((X41
                                               Int (ite
                                                    X21
                                                    (ite
                                                     (not (= X22 8))
                                                     3
                                                     X16)
                                                    X16)))
                                             (let
                                              ((X42
                                                Int (ite
                                                     X25
                                                     (ite
                                                      X28
                                                      (ite
                                                       (not (= X27 4))
                                                       4
                                                       X41)
                                                      X41)
                                                     X41)))
                                              (let
                                               ((X43
                                                 Int (ite
                                                      X32
                                                      (ite
                                                       X35
                                                       (ite
                                                        (not (= X34 4))
                                                        4
                                                        X42)
                                                       X42)
                                                      X42)))
                                               (let
                                                ((X44
                                                  Int (ite
                                                       (not
                                                        (and
                                                         (>= X40 3)
                                                         (<= X40 6)))
                                                       3
                                                       X40)))
                                                (let
                                                 ((X45
                                                   Bool (and
                                                         (not
                                                          (and
                                                           (>= X40 3)
                                                           (<= X40 6)))
                                                         (and
                                                          (>= X44 3)
                                                          (<= X44 6)))))
                                                 (let
                                                  ((X46
                                                    Int (ite
                                                         X39
                                                         (ite
                                                          X45
                                                          (ite
                                                           (not (= X44 4))
                                                           4
                                                           X43)
                                                          X43)
                                                         X43)))
                                                  (let
                                                   ((X47
                                                     Int (ite
                                                          X45
                                                          (ite
                                                           (not (= X44 4))
                                                           4
                                                           X44)
                                                          X44)))
                                                   (let
                                                    ((X48
                                                      Int (ite X39 X47 X40)))
                                                    (let
                                                     ((X49 Bool (or X39 X38)))
                                                     (let
                                                      ((X50
                                                        Bool (and
                                                              (= X48 4)
                                                              (= X24 1))))
                                                      (let
                                                       ((X51
                                                         Int (ite
                                                              X50
                                                              (ite
                                                               (= X48 4)
                                                               3
                                                               X48)
                                                              X48)))
                                                       (let
                                                        ((X52
                                                          Int (ite
                                                               X50
                                                               (ite
                                                                (not
                                                                 (= X51 4))
                                                                4
                                                                X51)
                                                               X51)))
                                                        (let
                                                         ((X53
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
                                                          ((X54
                                                            Bool (and
                                                                  (= X52 4)
                                                                  (and
                                                                   (= X53 1)
                                                                   (not X50)))))
                                                          (let
                                                           ((X55
                                                             Int (ite
                                                                  X54
                                                                  (ite
                                                                   (= X52 4)
                                                                   3
                                                                   X52)
                                                                  X52)))
                                                           (let
                                                            ((X56
                                                              Int (ite
                                                                   X54
                                                                   (ite
                                                                    (not
                                                                    (= X55 5))
                                                                    5
                                                                    X55)
                                                                   X55)))
                                                            (let
                                                             ((X57
                                                               Bool (or
                                                                    X54
                                                                    X50)))
                                                             (let
                                                              ((X58
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
                                                               ((X59
                                                                 Bool 
                                                                 (and
                                                                  (= X56 4)
                                                                  (and
                                                                   (= X58 1)
                                                                   (not X57)))))
                                                               (let
                                                                ((X60
                                                                  Int 
                                                                  (ite
                                                                   X59
                                                                   (ite
                                                                    (= X56 4)
                                                                    3
                                                                    X56)
                                                                   X56)))
                                                                (let
                                                                 ((X61
                                                                   Int 
                                                                   (ite
                                                                    X59
                                                                    (ite
                                                                    (not
                                                                    (= X60 6))
                                                                    6
                                                                    X60)
                                                                    X60)))
                                                                 (let
                                                                  ((X62
                                                                    Bool 
                                                                    (or
                                                                    X59
                                                                    X57)))
                                                                  (let
                                                                   ((X63
                                                                    Bool 
                                                                    (and
                                                                    (= X61 6)
                                                                    (and
                                                                    (= X58 0)
                                                                    (not X62)))))
                                                                   (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (= X61 6)
                                                                    3
                                                                    X61)
                                                                    X61)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X64)
                                                                    X64)))
                                                                    (let
                                                                    ((X66
                                                                    Bool 
                                                                    (or
                                                                    X63
                                                                    X62)))
                                                                    (let
                                                                    ((X67
                                                                    Bool 
                                                                    (and
                                                                    (= X65 5)
                                                                    (and
                                                                    (= X53 0)
                                                                    (not X66)))))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (= X65 5)
                                                                    3
                                                                    X65)
                                                                    X65)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    (ite
                                                                    (not
                                                                    (= X51 4))
                                                                    4
                                                                    X46)
                                                                    X46)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (not
                                                                    (= X55 5))
                                                                    6
                                                                    X69)
                                                                    X69)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X59
                                                                    (ite
                                                                    (not
                                                                    (= X60 6))
                                                                    5
                                                                    X70)
                                                                    X70)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X71)
                                                                    X71)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step_a_1
                                                                    (ite
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock_a_0
                                                                    false
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step_a_0))
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X5)
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (not
                                                                    (= X68 4))
                                                                    4
                                                                    X72)
                                                                    X72)
                                                                    X46)
                                                                    X16))
                                                                    X5))
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock_a_1
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    6)
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.newDesiredSpeed_a_1
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step_a_1
                                                                    (not
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock_a_1))
                                                                    0.0
                                                                    (ite
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock_a_1
                                                                    (+
                                                                    X1
                                                                    (/ 1 20))
                                                                    top.impl.usr.newDesiredSpeed_a_0)))
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step_a_1
                                                                    (ite
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock_a_0
                                                                    false
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step_a_0))
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock_a_1
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    5)
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.newDesiredSpeed1_a_1
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step_a_1
                                                                    (not
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock_a_1))
                                                                    0.0
                                                                    (ite
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock_a_1
                                                                    (-
                                                                    X1
                                                                    (/ 1 20))
                                                                    top.impl.usr.newDesiredSpeed1_a_0)))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    6)
                                                                    true
                                                                    false)
                                                                    top.impl.usr.newDesiredSpeed_a_1
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    5)
                                                                    true
                                                                    false)
                                                                    top.impl.usr.newDesiredSpeed1_a_1
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    4)
                                                                    true
                                                                    false)
                                                                    X1
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    3)
                                                                    true
                                                                    false)
                                                                    X1
                                                                    0.0)))))
                                                                    (let
                                                                    ((X73
                                                                    Int top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_0))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X8
                                                                    (ite
                                                                    (and
                                                                    (>= X6 2)
                                                                    (<= X6 8))
                                                                    (ite
                                                                    (and
                                                                    (>= X6 3)
                                                                    (<= X6 6))
                                                                    (ite
                                                                    (= X6 4)
                                                                    0
                                                                    X73)
                                                                    X73)
                                                                    X73)
                                                                    X73)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X39
                                                                    1
                                                                    (ite
                                                                    X25
                                                                    1
                                                                    (ite
                                                                    X21
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    3)
                                                                    (<=
                                                                    X18
                                                                    6))
                                                                    (ite
                                                                    (= X18 4)
                                                                    0
                                                                    X74)
                                                                    X74)
                                                                    X74)))))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (not
                                                                    (= X68 4))
                                                                    4
                                                                    X68)
                                                                    X68)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    1
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (= X52 4)
                                                                    0
                                                                    X77)
                                                                    X77)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1
                                                                    X73
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    (or
                                                                    X67
                                                                    X66))
                                                                    (= X76 4))
                                                                    0
                                                                    (ite
                                                                    X59
                                                                    (ite
                                                                    (= X56 4)
                                                                    0
                                                                    X78)
                                                                    X78))
                                                                    X75)
                                                                    X74))
                                                                    X73))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed_a_1
                                                                    0))
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_1
                                                                    (+
                                                                    (/
                                                                    (ite
                                                                    (<
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1
                                                                    top.usr.carSpeed_a_1
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1
                                                                    top.usr.carSpeed_a_1
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1
                                                                    top.usr.carSpeed_a_1
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1)))
                                                                    top.usr.carSpeed_a_1)
                                                                    1.0)
                                                                    (- 10.0))
                                                                    (- 10.0)
                                                                    (ite
                                                                    (>
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1
                                                                    top.usr.carSpeed_a_1
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1
                                                                    top.usr.carSpeed_a_1
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1
                                                                    top.usr.carSpeed_a_1
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1)))
                                                                    top.usr.carSpeed_a_1)
                                                                    1.0)
                                                                    10.0)
                                                                    10.0
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1
                                                                    top.usr.carSpeed_a_1
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1
                                                                    top.usr.carSpeed_a_1
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed_a_1
                                                                    top.usr.carSpeed_a_1
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed_a_1)))
                                                                    top.usr.carSpeed_a_1)
                                                                    1.0)))
                                                                    20.0)
                                                                    (ite
                                                                    (or
                                                                    (or
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    4)
                                                                    true
                                                                    false)
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    5)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    6)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (<
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_0
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_0
                                                                    100.0)
                                                                    100.0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_0))
                                                                    0.0)))
                                                                    (let
                                                                    ((X79
                                                                    Real 
                                                                    (ite
                                                                    (or
                                                                    (or
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    4)
                                                                    true
                                                                    false)
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    5)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    6)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (<
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_1
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_1
                                                                    100.0)
                                                                    100.0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta_a_1))
                                                                    0.0)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK_a_1
                                                                    (or
                                                                    (or
                                                                    (or
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    4)
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    5))
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    6))
                                                                    (=
                                                                    X79
                                                                    0.0)))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X6)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root_a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup____a_1
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep_a_1
                                                                    X80
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    X76
                                                                    X48)
                                                                    X18))
                                                                    X6))
                                                                    (<=
                                                                    0
                                                                    X58
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X24
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X20
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X7
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X53
                                                                    1)
                                                                    (not
                                                                    top.res.init_flag_a_1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
  (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock Bool)
  (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step Bool)
  (top.impl.usr.newDesiredSpeed1 Real)
  (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock Bool)
  (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step Bool)
  (top.impl.usr.newDesiredSpeed Real)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
  (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed Int)
  (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
  (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
  (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed Bool)
  (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed Real)
  (top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta Real)
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
(declare-primed-var top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock Bool)
(declare-primed-var top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step Bool)
(declare-primed-var top.impl.usr.newDesiredSpeed1 Real)
(declare-primed-var top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock Bool)
(declare-primed-var top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step Bool)
(declare-primed-var top.impl.usr.newDesiredSpeed Real)
(declare-primed-var top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
(declare-primed-var top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
(declare-primed-var top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
(declare-primed-var top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed Int)
(declare-primed-var top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
(declare-primed-var top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
(declare-primed-var top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed Bool)
(declare-primed-var top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed Real)
(declare-primed-var top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta Real)

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
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step Bool)
    (top.impl.usr.newDesiredSpeed1 Real)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step Bool)
    (top.impl.usr.newDesiredSpeed Real)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed Bool)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed Real)
    (top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta Real)
  ) Bool
  
  (let
   ((X1 Real 0.0))
   (let
    ((X2 Bool false))
    (let
     ((X3
       Bool (and
             (and
              (and
               (and (not top.usr.cancel) (not top.usr.brakePedal))
               (ite (= top.usr.carGear 3) true false))
              (ite (>= top.usr.carSpeed 15.0) true false))
             top.usr.validInputs)))
     (let
      ((X4 Bool false))
      (and
       (=
        top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out
        (ite
         (<=
          (ite
           (>= 0 (ite top.usr.decelSet 1 0))
           0
           (ite top.usr.decelSet 1 0))
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
        ((X5 Int 0))
        (let
         ((X6 Int 0))
         (and
          (=
           top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep
           true)
          (let
           ((X7 Int (ite (not top.usr.onOff) 0 1)))
           (let
            ((X8
              Bool (and
                    (and (>= X6 2) (<= X6 8))
                    (not (ite (not (= X7 0)) true false)))))
            (let
             ((X9 Int (ite X8 (ite (and (>= X6 2) (<= X6 8)) 0 X6) X6)))
             (let
              ((X10 Int (ite X8 (ite (not (= X9 1)) 1 X5) X5)))
              (let
               ((X11 Int (ite X8 (ite (not (= X9 1)) 1 X9) X9)))
               (let
                ((X12
                  Bool (and
                        (= X11 1)
                        (and (ite (not (= X7 0)) true false) (not X8)))))
                (let
                 ((X13 Int (ite X12 (ite (= X11 1) 0 X11) X11)))
                 (let
                  ((X14 Int (ite (not (and (>= X13 2) (<= X13 8))) 2 X13)))
                  (let
                   ((X15
                     Bool (and
                           (not (and (>= X13 2) (<= X13 8)))
                           (and (>= X14 2) (<= X14 8)))))
                   (let
                    ((X16
                      Int (ite
                           X12
                           (ite X15 (ite (not (= X14 7)) 2 X10) X10)
                           X10)))
                    (let
                     ((X17 Int (ite X15 (ite (not (= X14 7)) 7 X14) X14)))
                     (let
                      ((X18 Int (ite X12 X17 X13)))
                      (let
                       ((X19 Bool (or X12 X8)))
                       (let
                        ((X20 Int (ite (not X3) 0 1)))
                        (let
                         ((X21
                           Bool (and
                                 (and (>= X18 3) (<= X18 6))
                                 (not (ite (not (= X20 0)) true false)))))
                         (let
                          ((X22
                            Int (ite
                                 X21
                                 (ite (and (>= X18 3) (<= X18 6)) 2 X18)
                                 X18)))
                          (let
                           ((X23
                             Int (ite X21 (ite (not (= X22 8)) 8 X22) X22)))
                           (let
                            ((X24 Int (ite (not X2) 0 1)))
                            (let
                             ((X25
                               Bool (and
                                     (= X23 8)
                                     (and
                                      (and
                                       (ite
                                        (not (= (ite (not (= X24 1)) 0 1) 0))
                                        true
                                        false)
                                       (ite
                                        (not (= (ite (not (= X20 1)) 0 1) 0))
                                        true
                                        false))
                                      (not X21)))))
                             (let
                              ((X26 Int (ite X25 (ite (= X23 8) 2 X23) X23)))
                              (let
                               ((X27
                                 Int (ite
                                      (not (and (>= X26 3) (<= X26 6)))
                                      3
                                      X26)))
                               (let
                                ((X28
                                  Bool (and
                                        (not (and (>= X26 3) (<= X26 6)))
                                        (and (>= X27 3) (<= X27 6)))))
                                (let
                                 ((X29
                                   Int (ite
                                        X28
                                        (ite (not (= X27 4)) 4 X27)
                                        X27)))
                                 (let
                                  ((X30 Int (ite X25 X29 X26)))
                                  (let
                                   ((X31 Bool (or X25 X21)))
                                   (let
                                    ((X32
                                      Bool (and
                                            (= X30 8)
                                            (and
                                             (and
                                              (ite
                                               (not
                                                (=
                                                 (ite
                                                  (not
                                                   (= (ite (not X4) 0 1) 1))
                                                  0
                                                  1)
                                                 0))
                                               true
                                               false)
                                              (ite
                                               (not
                                                (=
                                                 (ite (not (= X20 1)) 0 1)
                                                 0))
                                               true
                                               false))
                                             (not X31)))))
                                    (let
                                     ((X33
                                       Int (ite
                                            X32
                                            (ite (= X30 8) 2 X30)
                                            X30)))
                                     (let
                                      ((X34
                                        Int (ite
                                             (not
                                              (and (>= X33 3) (<= X33 6)))
                                             3
                                             X33)))
                                      (let
                                       ((X35
                                         Bool (and
                                               (not
                                                (and (>= X33 3) (<= X33 6)))
                                               (and (>= X34 3) (<= X34 6)))))
                                       (let
                                        ((X36
                                          Int (ite
                                               X35
                                               (ite (not (= X34 4)) 4 X34)
                                               X34)))
                                        (let
                                         ((X37 Int (ite X32 X36 X33)))
                                         (let
                                          ((X38 Bool (or X32 X31)))
                                          (let
                                           ((X39
                                             Bool (and
                                                   (= X37 7)
                                                   (and
                                                    (and
                                                     (ite
                                                      (not
                                                       (=
                                                        (ite
                                                         (not (= X24 1))
                                                         0
                                                         1)
                                                        0))
                                                      true
                                                      false)
                                                     (ite
                                                      (not
                                                       (=
                                                        (ite
                                                         (not (= X20 1))
                                                         0
                                                         1)
                                                        0))
                                                      true
                                                      false))
                                                    (not X38)))))
                                           (let
                                            ((X40
                                              Int (ite
                                                   X39
                                                   (ite (= X37 7) 2 X37)
                                                   X37)))
                                            (let
                                             ((X41
                                               Int (ite
                                                    X21
                                                    (ite
                                                     (not (= X22 8))
                                                     3
                                                     X16)
                                                    X16)))
                                             (let
                                              ((X42
                                                Int (ite
                                                     X25
                                                     (ite
                                                      X28
                                                      (ite
                                                       (not (= X27 4))
                                                       4
                                                       X41)
                                                      X41)
                                                     X41)))
                                              (let
                                               ((X43
                                                 Int (ite
                                                      X32
                                                      (ite
                                                       X35
                                                       (ite
                                                        (not (= X34 4))
                                                        4
                                                        X42)
                                                       X42)
                                                      X42)))
                                               (let
                                                ((X44
                                                  Int (ite
                                                       (not
                                                        (and
                                                         (>= X40 3)
                                                         (<= X40 6)))
                                                       3
                                                       X40)))
                                                (let
                                                 ((X45
                                                   Bool (and
                                                         (not
                                                          (and
                                                           (>= X40 3)
                                                           (<= X40 6)))
                                                         (and
                                                          (>= X44 3)
                                                          (<= X44 6)))))
                                                 (let
                                                  ((X46
                                                    Int (ite
                                                         X39
                                                         (ite
                                                          X45
                                                          (ite
                                                           (not (= X44 4))
                                                           4
                                                           X43)
                                                          X43)
                                                         X43)))
                                                  (let
                                                   ((X47
                                                     Int (ite
                                                          X45
                                                          (ite
                                                           (not (= X44 4))
                                                           4
                                                           X44)
                                                          X44)))
                                                   (let
                                                    ((X48
                                                      Int (ite X39 X47 X40)))
                                                    (let
                                                     ((X49 Bool (or X39 X38)))
                                                     (let
                                                      ((X50
                                                        Bool (and
                                                              (= X48 4)
                                                              (= X24 1))))
                                                      (let
                                                       ((X51
                                                         Int (ite
                                                              X50
                                                              (ite
                                                               (= X48 4)
                                                               3
                                                               X48)
                                                              X48)))
                                                       (let
                                                        ((X52
                                                          Int (ite
                                                               X50
                                                               (ite
                                                                (not
                                                                 (= X51 4))
                                                                4
                                                                X51)
                                                               X51)))
                                                        (let
                                                         ((X53
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
                                                          ((X54
                                                            Bool (and
                                                                  (= X52 4)
                                                                  (and
                                                                   (= X53 1)
                                                                   (not X50)))))
                                                          (let
                                                           ((X55
                                                             Int (ite
                                                                  X54
                                                                  (ite
                                                                   (= X52 4)
                                                                   3
                                                                   X52)
                                                                  X52)))
                                                           (let
                                                            ((X56
                                                              Int (ite
                                                                   X54
                                                                   (ite
                                                                    (not
                                                                    (= X55 5))
                                                                    5
                                                                    X55)
                                                                   X55)))
                                                            (let
                                                             ((X57
                                                               Bool (or
                                                                    X54
                                                                    X50)))
                                                             (let
                                                              ((X58
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
                                                               ((X59
                                                                 Bool 
                                                                 (and
                                                                  (= X56 4)
                                                                  (and
                                                                   (= X58 1)
                                                                   (not X57)))))
                                                               (let
                                                                ((X60
                                                                  Int 
                                                                  (ite
                                                                   X59
                                                                   (ite
                                                                    (= X56 4)
                                                                    3
                                                                    X56)
                                                                   X56)))
                                                                (let
                                                                 ((X61
                                                                   Int 
                                                                   (ite
                                                                    X59
                                                                    (ite
                                                                    (not
                                                                    (= X60 6))
                                                                    6
                                                                    X60)
                                                                    X60)))
                                                                 (let
                                                                  ((X62
                                                                    Bool 
                                                                    (or
                                                                    X59
                                                                    X57)))
                                                                  (let
                                                                   ((X63
                                                                    Bool 
                                                                    (and
                                                                    (= X61 6)
                                                                    (and
                                                                    (= X58 0)
                                                                    (not X62)))))
                                                                   (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (= X61 6)
                                                                    3
                                                                    X61)
                                                                    X61)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X64)
                                                                    X64)))
                                                                    (let
                                                                    ((X66
                                                                    Bool 
                                                                    (or
                                                                    X63
                                                                    X62)))
                                                                    (let
                                                                    ((X67
                                                                    Bool 
                                                                    (and
                                                                    (= X65 5)
                                                                    (and
                                                                    (= X53 0)
                                                                    (not X66)))))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (= X65 5)
                                                                    3
                                                                    X65)
                                                                    X65)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    (ite
                                                                    (not
                                                                    (= X51 4))
                                                                    4
                                                                    X46)
                                                                    X46)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (not
                                                                    (= X55 5))
                                                                    6
                                                                    X69)
                                                                    X69)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X59
                                                                    (ite
                                                                    (not
                                                                    (= X60 6))
                                                                    5
                                                                    X70)
                                                                    X70)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X71)
                                                                    X71)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X5)
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (not
                                                                    (= X68 4))
                                                                    4
                                                                    X72)
                                                                    X72)
                                                                    X46)
                                                                    X16))
                                                                    X5))
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    6)
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.newDesiredSpeed
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step
                                                                    (not
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock))
                                                                    0.0
                                                                    (+
                                                                    X1
                                                                    (/ 1 20))))
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    5)
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.newDesiredSpeed1
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step
                                                                    (not
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock))
                                                                    0.0
                                                                    (-
                                                                    X1
                                                                    (/ 1 20))))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    6)
                                                                    true
                                                                    false)
                                                                    top.impl.usr.newDesiredSpeed
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    5)
                                                                    true
                                                                    false)
                                                                    top.impl.usr.newDesiredSpeed1
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    4)
                                                                    true
                                                                    false)
                                                                    X1
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    3)
                                                                    true
                                                                    false)
                                                                    X1
                                                                    0.0)))))
                                                                    (let
                                                                    ((X73
                                                                    Int 0))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X8
                                                                    (ite
                                                                    (and
                                                                    (>= X6 2)
                                                                    (<= X6 8))
                                                                    (ite
                                                                    (and
                                                                    (>= X6 3)
                                                                    (<= X6 6))
                                                                    (ite
                                                                    (= X6 4)
                                                                    0
                                                                    X73)
                                                                    X73)
                                                                    X73)
                                                                    X73)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X39
                                                                    1
                                                                    (ite
                                                                    X25
                                                                    1
                                                                    (ite
                                                                    X21
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    3)
                                                                    (<=
                                                                    X18
                                                                    6))
                                                                    (ite
                                                                    (= X18 4)
                                                                    0
                                                                    X74)
                                                                    X74)
                                                                    X74)))))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (not
                                                                    (= X68 4))
                                                                    4
                                                                    X68)
                                                                    X68)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    1
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (= X52 4)
                                                                    0
                                                                    X77)
                                                                    X77)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep
                                                                    X73
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    (or
                                                                    X67
                                                                    X66))
                                                                    (= X76 4))
                                                                    0
                                                                    (ite
                                                                    X59
                                                                    (ite
                                                                    (= X56 4)
                                                                    0
                                                                    X78)
                                                                    X78))
                                                                    X75)
                                                                    X74))
                                                                    X73))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed
                                                                    0))
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta
                                                                    (+
                                                                    (/
                                                                    (ite
                                                                    (<
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
                                                                    top.usr.carSpeed
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
                                                                    top.usr.carSpeed
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
                                                                    top.usr.carSpeed
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)))
                                                                    top.usr.carSpeed)
                                                                    1.0)
                                                                    (- 10.0))
                                                                    (- 10.0)
                                                                    (ite
                                                                    (>
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
                                                                    top.usr.carSpeed
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
                                                                    top.usr.carSpeed
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
                                                                    top.usr.carSpeed
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)))
                                                                    top.usr.carSpeed)
                                                                    1.0)
                                                                    10.0)
                                                                    10.0
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
                                                                    top.usr.carSpeed
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
                                                                    top.usr.carSpeed
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
                                                                    top.usr.carSpeed
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)))
                                                                    top.usr.carSpeed)
                                                                    1.0)))
                                                                    20.0)
                                                                    0.0))
                                                                    (let
                                                                    ((X79
                                                                    Real 
                                                                    (ite
                                                                    (or
                                                                    (or
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    4)
                                                                    true
                                                                    false)
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    5)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    6)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (<
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta
                                                                    100.0)
                                                                    100.0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta))
                                                                    0.0)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK
                                                                    (or
                                                                    (or
                                                                    (or
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    4)
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    5))
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    6))
                                                                    (=
                                                                    X79
                                                                    0.0)))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X6)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep
                                                                    X80
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    X76
                                                                    X48)
                                                                    X18))
                                                                    X6))
                                                                    (<=
                                                                    0
                                                                    X58
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X24
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X20
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X7
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X53
                                                                    1)
                                                                    top.res.init_flag))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step Bool)
    (top.impl.usr.newDesiredSpeed1 Real)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step Bool)
    (top.impl.usr.newDesiredSpeed Real)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed Bool)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed Real)
    (top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta Real)
    
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
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock! Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step! Bool)
    (top.impl.usr.newDesiredSpeed1! Real)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock! Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step! Bool)
    (top.impl.usr.newDesiredSpeed! Real)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___! Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep! Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root! Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed! Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out! Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out! Int)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed! Bool)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed! Real)
    (top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta! Real)
  
  ) Bool
  
  (let
   ((X1
     Real (ite
           (<
            (ite
             top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
             top.usr.carSpeed
             top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)
            0.0)
           0.0
           (ite
            (>
             (ite
              top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
              top.usr.carSpeed
              top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)
             100.0)
            100.0
            (ite
             top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed
             top.usr.carSpeed
             top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed)))))
   (let
    ((X2 Bool (and (not top.usr.decelSet) top.usr.decelSet!)))
    (let
     ((X3
       Bool (and
             (and
              (and
               (and (not top.usr.cancel!) (not top.usr.brakePedal!))
               (ite (= top.usr.carGear! 3) true false))
              (ite (>= top.usr.carSpeed! 15.0) true false))
             top.usr.validInputs!)))
     (let
      ((X4 Bool (and (not top.usr.accelResume) top.usr.accelResume!)))
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
        ((X5 Int top.impl.usr.mode))
        (let
         ((X6
           Int top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root))
         (and
          (=
           top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep!
           (ite
            top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___
            false
            top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep))
          (let
           ((X7 Int (ite (not top.usr.onOff!) 0 1)))
           (let
            ((X8
              Bool (and
                    (and (>= X6 2) (<= X6 8))
                    (not (ite (not (= X7 0)) true false)))))
            (let
             ((X9 Int (ite X8 (ite (and (>= X6 2) (<= X6 8)) 0 X6) X6)))
             (let
              ((X10 Int (ite X8 (ite (not (= X9 1)) 1 X5) X5)))
              (let
               ((X11 Int (ite X8 (ite (not (= X9 1)) 1 X9) X9)))
               (let
                ((X12
                  Bool (and
                        (= X11 1)
                        (and (ite (not (= X7 0)) true false) (not X8)))))
                (let
                 ((X13 Int (ite X12 (ite (= X11 1) 0 X11) X11)))
                 (let
                  ((X14 Int (ite (not (and (>= X13 2) (<= X13 8))) 2 X13)))
                  (let
                   ((X15
                     Bool (and
                           (not (and (>= X13 2) (<= X13 8)))
                           (and (>= X14 2) (<= X14 8)))))
                   (let
                    ((X16
                      Int (ite
                           X12
                           (ite X15 (ite (not (= X14 7)) 2 X10) X10)
                           X10)))
                    (let
                     ((X17 Int (ite X15 (ite (not (= X14 7)) 7 X14) X14)))
                     (let
                      ((X18 Int (ite X12 X17 X13)))
                      (let
                       ((X19 Bool (or X12 X8)))
                       (let
                        ((X20 Int (ite (not X3) 0 1)))
                        (let
                         ((X21
                           Bool (and
                                 (and (>= X18 3) (<= X18 6))
                                 (not (ite (not (= X20 0)) true false)))))
                         (let
                          ((X22
                            Int (ite
                                 X21
                                 (ite (and (>= X18 3) (<= X18 6)) 2 X18)
                                 X18)))
                          (let
                           ((X23
                             Int (ite X21 (ite (not (= X22 8)) 8 X22) X22)))
                           (let
                            ((X24 Int (ite (not X2) 0 1)))
                            (let
                             ((X25
                               Bool (and
                                     (= X23 8)
                                     (and
                                      (and
                                       (ite
                                        (not (= (ite (not (= X24 1)) 0 1) 0))
                                        true
                                        false)
                                       (ite
                                        (not (= (ite (not (= X20 1)) 0 1) 0))
                                        true
                                        false))
                                      (not X21)))))
                             (let
                              ((X26 Int (ite X25 (ite (= X23 8) 2 X23) X23)))
                              (let
                               ((X27
                                 Int (ite
                                      (not (and (>= X26 3) (<= X26 6)))
                                      3
                                      X26)))
                               (let
                                ((X28
                                  Bool (and
                                        (not (and (>= X26 3) (<= X26 6)))
                                        (and (>= X27 3) (<= X27 6)))))
                                (let
                                 ((X29
                                   Int (ite
                                        X28
                                        (ite (not (= X27 4)) 4 X27)
                                        X27)))
                                 (let
                                  ((X30 Int (ite X25 X29 X26)))
                                  (let
                                   ((X31 Bool (or X25 X21)))
                                   (let
                                    ((X32
                                      Bool (and
                                            (= X30 8)
                                            (and
                                             (and
                                              (ite
                                               (not
                                                (=
                                                 (ite
                                                  (not
                                                   (= (ite (not X4) 0 1) 1))
                                                  0
                                                  1)
                                                 0))
                                               true
                                               false)
                                              (ite
                                               (not
                                                (=
                                                 (ite (not (= X20 1)) 0 1)
                                                 0))
                                               true
                                               false))
                                             (not X31)))))
                                    (let
                                     ((X33
                                       Int (ite
                                            X32
                                            (ite (= X30 8) 2 X30)
                                            X30)))
                                     (let
                                      ((X34
                                        Int (ite
                                             (not
                                              (and (>= X33 3) (<= X33 6)))
                                             3
                                             X33)))
                                      (let
                                       ((X35
                                         Bool (and
                                               (not
                                                (and (>= X33 3) (<= X33 6)))
                                               (and (>= X34 3) (<= X34 6)))))
                                       (let
                                        ((X36
                                          Int (ite
                                               X35
                                               (ite (not (= X34 4)) 4 X34)
                                               X34)))
                                        (let
                                         ((X37 Int (ite X32 X36 X33)))
                                         (let
                                          ((X38 Bool (or X32 X31)))
                                          (let
                                           ((X39
                                             Bool (and
                                                   (= X37 7)
                                                   (and
                                                    (and
                                                     (ite
                                                      (not
                                                       (=
                                                        (ite
                                                         (not (= X24 1))
                                                         0
                                                         1)
                                                        0))
                                                      true
                                                      false)
                                                     (ite
                                                      (not
                                                       (=
                                                        (ite
                                                         (not (= X20 1))
                                                         0
                                                         1)
                                                        0))
                                                      true
                                                      false))
                                                    (not X38)))))
                                           (let
                                            ((X40
                                              Int (ite
                                                   X39
                                                   (ite (= X37 7) 2 X37)
                                                   X37)))
                                            (let
                                             ((X41
                                               Int (ite
                                                    X21
                                                    (ite
                                                     (not (= X22 8))
                                                     3
                                                     X16)
                                                    X16)))
                                             (let
                                              ((X42
                                                Int (ite
                                                     X25
                                                     (ite
                                                      X28
                                                      (ite
                                                       (not (= X27 4))
                                                       4
                                                       X41)
                                                      X41)
                                                     X41)))
                                              (let
                                               ((X43
                                                 Int (ite
                                                      X32
                                                      (ite
                                                       X35
                                                       (ite
                                                        (not (= X34 4))
                                                        4
                                                        X42)
                                                       X42)
                                                      X42)))
                                               (let
                                                ((X44
                                                  Int (ite
                                                       (not
                                                        (and
                                                         (>= X40 3)
                                                         (<= X40 6)))
                                                       3
                                                       X40)))
                                                (let
                                                 ((X45
                                                   Bool (and
                                                         (not
                                                          (and
                                                           (>= X40 3)
                                                           (<= X40 6)))
                                                         (and
                                                          (>= X44 3)
                                                          (<= X44 6)))))
                                                 (let
                                                  ((X46
                                                    Int (ite
                                                         X39
                                                         (ite
                                                          X45
                                                          (ite
                                                           (not (= X44 4))
                                                           4
                                                           X43)
                                                          X43)
                                                         X43)))
                                                  (let
                                                   ((X47
                                                     Int (ite
                                                          X45
                                                          (ite
                                                           (not (= X44 4))
                                                           4
                                                           X44)
                                                          X44)))
                                                   (let
                                                    ((X48
                                                      Int (ite X39 X47 X40)))
                                                    (let
                                                     ((X49 Bool (or X39 X38)))
                                                     (let
                                                      ((X50
                                                        Bool (and
                                                              (= X48 4)
                                                              (= X24 1))))
                                                      (let
                                                       ((X51
                                                         Int (ite
                                                              X50
                                                              (ite
                                                               (= X48 4)
                                                               3
                                                               X48)
                                                              X48)))
                                                       (let
                                                        ((X52
                                                          Int (ite
                                                               X50
                                                               (ite
                                                                (not
                                                                 (= X51 4))
                                                                4
                                                                X51)
                                                               X51)))
                                                        (let
                                                         ((X53
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
                                                          ((X54
                                                            Bool (and
                                                                  (= X52 4)
                                                                  (and
                                                                   (= X53 1)
                                                                   (not X50)))))
                                                          (let
                                                           ((X55
                                                             Int (ite
                                                                  X54
                                                                  (ite
                                                                   (= X52 4)
                                                                   3
                                                                   X52)
                                                                  X52)))
                                                           (let
                                                            ((X56
                                                              Int (ite
                                                                   X54
                                                                   (ite
                                                                    (not
                                                                    (= X55 5))
                                                                    5
                                                                    X55)
                                                                   X55)))
                                                            (let
                                                             ((X57
                                                               Bool (or
                                                                    X54
                                                                    X50)))
                                                             (let
                                                              ((X58
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
                                                               ((X59
                                                                 Bool 
                                                                 (and
                                                                  (= X56 4)
                                                                  (and
                                                                   (= X58 1)
                                                                   (not X57)))))
                                                               (let
                                                                ((X60
                                                                  Int 
                                                                  (ite
                                                                   X59
                                                                   (ite
                                                                    (= X56 4)
                                                                    3
                                                                    X56)
                                                                   X56)))
                                                                (let
                                                                 ((X61
                                                                   Int 
                                                                   (ite
                                                                    X59
                                                                    (ite
                                                                    (not
                                                                    (= X60 6))
                                                                    6
                                                                    X60)
                                                                    X60)))
                                                                 (let
                                                                  ((X62
                                                                    Bool 
                                                                    (or
                                                                    X59
                                                                    X57)))
                                                                  (let
                                                                   ((X63
                                                                    Bool 
                                                                    (and
                                                                    (= X61 6)
                                                                    (and
                                                                    (= X58 0)
                                                                    (not X62)))))
                                                                   (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (= X61 6)
                                                                    3
                                                                    X61)
                                                                    X61)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X64)
                                                                    X64)))
                                                                    (let
                                                                    ((X66
                                                                    Bool 
                                                                    (or
                                                                    X63
                                                                    X62)))
                                                                    (let
                                                                    ((X67
                                                                    Bool 
                                                                    (and
                                                                    (= X65 5)
                                                                    (and
                                                                    (= X53 0)
                                                                    (not X66)))))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (= X65 5)
                                                                    3
                                                                    X65)
                                                                    X65)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    (ite
                                                                    (not
                                                                    (= X51 4))
                                                                    4
                                                                    X46)
                                                                    X46)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (not
                                                                    (= X55 5))
                                                                    6
                                                                    X69)
                                                                    X69)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X59
                                                                    (ite
                                                                    (not
                                                                    (= X60 6))
                                                                    5
                                                                    X70)
                                                                    X70)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X71)
                                                                    X71)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___!
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step!
                                                                    (ite
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock
                                                                    false
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step))
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep!
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X5)
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (not
                                                                    (= X68 4))
                                                                    4
                                                                    X72)
                                                                    X72)
                                                                    X46)
                                                                    X16))
                                                                    X5))
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock!
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    6)
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.newDesiredSpeed!
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step!
                                                                    (not
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock!))
                                                                    0.0
                                                                    (ite
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock!
                                                                    (+
                                                                    X1
                                                                    (/ 1 20))
                                                                    top.impl.usr.newDesiredSpeed)))
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step!
                                                                    (ite
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock
                                                                    false
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step))
                                                                    (=
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock!
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    5)
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.newDesiredSpeed1!
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step!
                                                                    (not
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock!))
                                                                    0.0
                                                                    (ite
                                                                    top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock!
                                                                    (-
                                                                    X1
                                                                    (/ 1 20))
                                                                    top.impl.usr.newDesiredSpeed1)))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed!
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    6)
                                                                    true
                                                                    false)
                                                                    top.impl.usr.newDesiredSpeed!
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    5)
                                                                    true
                                                                    false)
                                                                    top.impl.usr.newDesiredSpeed1!
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    4)
                                                                    true
                                                                    false)
                                                                    X1
                                                                    (ite
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    3)
                                                                    true
                                                                    false)
                                                                    X1
                                                                    0.0)))))
                                                                    (let
                                                                    ((X73
                                                                    Int top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X8
                                                                    (ite
                                                                    (and
                                                                    (>= X6 2)
                                                                    (<= X6 8))
                                                                    (ite
                                                                    (and
                                                                    (>= X6 3)
                                                                    (<= X6 6))
                                                                    (ite
                                                                    (= X6 4)
                                                                    0
                                                                    X73)
                                                                    X73)
                                                                    X73)
                                                                    X73)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X39
                                                                    1
                                                                    (ite
                                                                    X25
                                                                    1
                                                                    (ite
                                                                    X21
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    3)
                                                                    (<=
                                                                    X18
                                                                    6))
                                                                    (ite
                                                                    (= X18 4)
                                                                    0
                                                                    X74)
                                                                    X74)
                                                                    X74)))))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    (ite
                                                                    (not
                                                                    (= X68 4))
                                                                    4
                                                                    X68)
                                                                    X68)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    1
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X54
                                                                    (ite
                                                                    (= X52 4)
                                                                    0
                                                                    X77)
                                                                    X77)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep!
                                                                    X73
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    (or
                                                                    X67
                                                                    X66))
                                                                    (= X76 4))
                                                                    0
                                                                    (ite
                                                                    X59
                                                                    (ite
                                                                    (= X56 4)
                                                                    0
                                                                    X78)
                                                                    X78))
                                                                    X75)
                                                                    X74))
                                                                    X73))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed!
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed!
                                                                    0))
                                                                    true
                                                                    false))
                                                                    (=
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta!
                                                                    (+
                                                                    (/
                                                                    (ite
                                                                    (<
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed!
                                                                    top.usr.carSpeed!
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed!)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed!
                                                                    top.usr.carSpeed!
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed!)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed!
                                                                    top.usr.carSpeed!
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed!)))
                                                                    top.usr.carSpeed!)
                                                                    1.0)
                                                                    (- 10.0))
                                                                    (- 10.0)
                                                                    (ite
                                                                    (>
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed!
                                                                    top.usr.carSpeed!
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed!)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed!
                                                                    top.usr.carSpeed!
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed!)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed!
                                                                    top.usr.carSpeed!
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed!)))
                                                                    top.usr.carSpeed!)
                                                                    1.0)
                                                                    10.0)
                                                                    10.0
                                                                    (*
                                                                    (-
                                                                    (ite
                                                                    (<
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed!
                                                                    top.usr.carSpeed!
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed!)
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed!
                                                                    top.usr.carSpeed!
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed!)
                                                                    100.0)
                                                                    100.0
                                                                    (ite
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed!
                                                                    top.usr.carSpeed!
                                                                    top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed!)))
                                                                    top.usr.carSpeed!)
                                                                    1.0)))
                                                                    20.0)
                                                                    (ite
                                                                    (or
                                                                    (or
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    4)
                                                                    true
                                                                    false)
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    5)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    6)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (<
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta
                                                                    100.0)
                                                                    100.0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta))
                                                                    0.0)))
                                                                    (let
                                                                    ((X79
                                                                    Real 
                                                                    (ite
                                                                    (or
                                                                    (or
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    4)
                                                                    true
                                                                    false)
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    5)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    6)
                                                                    true
                                                                    false))
                                                                    (ite
                                                                    (<
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta!
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta!
                                                                    100.0)
                                                                    100.0
                                                                    top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta!))
                                                                    0.0)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK!
                                                                    (or
                                                                    (or
                                                                    (or
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    4)
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    5))
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    6))
                                                                    (=
                                                                    X79
                                                                    0.0)))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X6)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___!
                                                                    (ite
                                                                    top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep!
                                                                    X80
                                                                    (ite
                                                                    (and
                                                                    (not X19)
                                                                    (and
                                                                    (>=
                                                                    X18
                                                                    2)
                                                                    (<=
                                                                    X18
                                                                    8)))
                                                                    (ite
                                                                    (and
                                                                    (not X49)
                                                                    (and
                                                                    (>=
                                                                    X48
                                                                    3)
                                                                    (<=
                                                                    X48
                                                                    6)))
                                                                    X76
                                                                    X48)
                                                                    X18))
                                                                    X6))
                                                                    (<=
                                                                    0
                                                                    X58
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X24
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X20
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X7
                                                                    1)
                                                                    (<=
                                                                    0
                                                                    X53
                                                                    1)
                                                                    (not
                                                                    top.res.init_flag!)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_clock Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeDecreaseInDesiredSpeed_rlt_init_step Bool)
    (top.impl.usr.newDesiredSpeed1 Real)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_clock Bool)
    (top.impl.usr.rlt_condact_cruise_controller_CruiseController_SetDesiredSpeed_computeIncreaseInDesiredSpeed_rlt_init_step Bool)
    (top.impl.usr.newDesiredSpeed Real)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic____wakeup___ Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_rlt_evtInitStep Bool)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_final_state_states___root Int)
    (top.impl.usr.chart_CruiseController_ModeLogic_mode_logic_setDesiredSpeed Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetAccel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_ModeLogic_DelayOnsetDecel_Bounded_Count_Out Int)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_setDesiredSpeed Bool)
    (top.impl.usr.cruise_controller_CruiseController_SetDesiredSpeed_IncreaseDesiredSpeed Real)
    (top.impl.usr.cruise_controller_CruiseController_SetThrottle_cruiseThrottlePrevPlusDelta Real)
  ) Bool
  
  top.usr.OK
)

(inv-constraint str_invariant init trans prop)

(check-synth)
