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
    (top.impl.usr.SP3c_a_0 Bool)
    (top.impl.usr.zz155_a_0 Bool)
    (top.impl.usr.zz161_a_0 Int)
    (top.impl.usr.zz170_a_0 Int)
    (top.impl.usr.zz176_a_0 Int)
    (top.impl.usr.zz178_a_0 Bool)
    (top.impl.usr.zz183_a_0 Bool)
  ) Bool
  
  (let
   ((X1 (>= top.usr.carSpeed_a_0 15.0)))
   (let
    ((X2 (= top.usr.carGear_a_0 3)))
    (let
     ((X3
       (and
             (and
              (and
               (and (not top.usr.cancel_a_0) (not top.usr.brakePedal_a_0))
               X2)
              X1)
             top.usr.validInputs_a_0)))
     (let
      ((X4 true))
      (and
       (= top.impl.usr.zz183_a_0 top.usr.decelSet_a_0)
       (let
        ((X5 (and (not X4) top.impl.usr.zz183_a_0)))
        (let
         ((X6 true))
         (and
          (= top.impl.usr.zz178_a_0 top.usr.accelResume_a_0)
          (let
           ((X7 (and (not X6) top.impl.usr.zz178_a_0)))
           (let
            ((X8 0))
            (let
             ((X9 (and (and (>= X8 2) (<= X8 8)) (not top.usr.onOff_a_0))))
             (let
              ((X10 (ite (= X8 4) 3 X8)))
              (let
               ((X11 (ite (and (>= X8 3) (<= X8 6)) X10 X8)))
               (let
                ((X12 (ite (= X11 5) 3 X11)))
                (let
                 ((X13 (ite (and (>= X8 3) (<= X8 6)) X12 X11)))
                 (let
                  ((X14 (ite (= X13 6) 3 X13)))
                  (let
                   ((X15 (ite (and (>= X8 3) (<= X8 6)) X14 X13)))
                   (let
                    ((X16 (ite (and (>= X8 3) (<= X8 6)) 2 X15)))
                    (let
                     ((X17 (ite (and (>= X8 2) (<= X8 8)) X16 X8)))
                     (let
                      ((X18 (ite (= X17 7) 2 X17)))
                      (let
                       ((X19 (ite (and (>= X8 2) (<= X8 8)) X18 X17)))
                       (let
                        ((X20 (ite (= X19 8) 2 X19)))
                        (let
                         ((X21 (ite (and (>= X8 2) (<= X8 8)) X20 X19)))
                         (let
                          ((X22 (ite (and (>= X8 2) (<= X8 8)) 0 X21)))
                          (let
                           ((X23 (ite X9 X22 X8)))
                           (let
                            ((X24 (ite (not (= X23 1)) 1 X23)))
                            (let
                             ((X25 (ite X9 X24 X23)))
                             (let
                              ((X26
                                (and
                                      (= X25 1)
                                      (and top.usr.onOff_a_0 (not X9)))))
                              (let
                               ((X27 (ite (= X25 1) 0 X25)))
                               (let
                                ((X28 (ite X26 X27 X25)))
                                (let
                                 ((X29
                                   (ite
                                        (not (and (>= X28 2) (<= X28 8)))
                                        2
                                        X28)))
                                 (let
                                  ((X30
                                    (and
                                          (not (and (>= X28 2) (<= X28 8)))
                                          (and (>= X29 2) (<= X29 8)))))
                                  (let
                                   ((X31 (ite (not (= X29 7)) 7 X29)))
                                   (let
                                    ((X32 (ite X30 X31 X29)))
                                    (let
                                     ((X33 (ite X26 X32 X28)))
                                     (let
                                      ((X34
                                        (and
                                              (and (>= X33 3) (<= X33 6))
                                              (not X3))))
                                      (let
                                       ((X35 (ite (= X33 4) 3 X33)))
                                       (let
                                        ((X36
                                          (ite
                                               (and (>= X33 3) (<= X33 6))
                                               X35
                                               X33)))
                                        (let
                                         ((X37 (ite (= X36 5) 3 X36)))
                                         (let
                                          ((X38
                                            (ite
                                                 (and (>= X33 3) (<= X33 6))
                                                 X37
                                                 X36)))
                                          (let
                                           ((X39 (ite (= X38 6) 3 X38)))
                                           (let
                                            ((X40
                                              (ite
                                                   (and
                                                    (>= X33 3)
                                                    (<= X33 6))
                                                   X39
                                                   X38)))
                                            (let
                                             ((X41
                                               (ite
                                                    (and
                                                     (>= X33 3)
                                                     (<= X33 6))
                                                    2
                                                    X40)))
                                             (let
                                              ((X42 (ite X34 X41 X33)))
                                              (let
                                               ((X43
                                                 (ite
                                                      (not (= X42 8))
                                                      8
                                                      X42)))
                                               (let
                                                ((X44 (ite X34 X43 X42)))
                                                (let
                                                 ((X45
                                                   (and
                                                         (= X44 8)
                                                         (and
                                                          (and
                                                           (not
                                                            (=
                                                             (ite
                                                              (not X5)
                                                              0
                                                              1)
                                                             0))
                                                           (not
                                                            (=
                                                             (ite
                                                              (not X3)
                                                              0
                                                              1)
                                                             0)))
                                                          (not X34)))))
                                                 (let
                                                  ((X46
                                                    (ite (= X44 8) 2 X44)))
                                                  (let
                                                   ((X47
                                                     (ite X45 X46 X44)))
                                                   (let
                                                    ((X48
                                                      (ite
                                                           (not
                                                            (and
                                                             (>= X47 3)
                                                             (<= X47 6)))
                                                           3
                                                           X47)))
                                                    (let
                                                     ((X49
                                                       (and
                                                             (not
                                                              (and
                                                               (>= X47 3)
                                                               (<= X47 6)))
                                                             (and
                                                              (>= X48 3)
                                                              (<= X48 6)))))
                                                     (let
                                                      ((X50
                                                        (ite
                                                             (not (= X48 4))
                                                             4
                                                             X48)))
                                                      (let
                                                       ((X51
                                                         (ite
                                                              X49
                                                              X50
                                                              X48)))
                                                       (let
                                                        ((X52
                                                          (ite
                                                               X45
                                                               X51
                                                               X47)))
                                                        (let
                                                         ((X53
                                                           (or X45 X34)))
                                                         (let
                                                          ((X54
                                                            (and
                                                                  (= X52 8)
                                                                  (and
                                                                   (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X7)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X3)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                   (not X53)))))
                                                          (let
                                                           ((X55
                                                             (ite
                                                                  (= X52 8)
                                                                  2
                                                                  X52)))
                                                           (let
                                                            ((X56
                                                              (ite
                                                                   X54
                                                                   X55
                                                                   X52)))
                                                            (let
                                                             ((X57
                                                               (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X56
                                                                    3)
                                                                    (<=
                                                                    X56
                                                                    6)))
                                                                    3
                                                                    X56)))
                                                             (let
                                                              ((X58
                                                                (and
                                                                 (not
                                                                  (and
                                                                   (>= X56 3)
                                                                   (<= X56 6)))
                                                                 (and
                                                                  (>= X57 3)
                                                                  (<= X57 6)))))
                                                              (let
                                                               ((X59
                                                                 (ite
                                                                  (not
                                                                   (= X57 4))
                                                                  4
                                                                  X57)))
                                                               (let
                                                                ((X60
                                                                  (ite
                                                                   X58
                                                                   X59
                                                                   X57)))
                                                                (and
                                                                 (=
                                                                  top.usr.OK_a_0
                                                                  (or
                                                                   (= X60 4)
                                                                   (or
                                                                    (= X60 5)
                                                                    (= X60 6))))
                                                                 (let
                                                                  ((X61
                                                                    0))
                                                                  (let
                                                                   ((X62
                                                                    (+
                                                                    X61
                                                                    1)))
                                                                   (let
                                                                    ((X63
                                                                    (ite
                                                                    top.usr.decelSet_a_0
                                                                    X62
                                                                    0)))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X63)
                                                                    0
                                                                    X63)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz176_a_0
                                                                    (ite
                                                                    (<=
                                                                    X64
                                                                    20)
                                                                    X64
                                                                    20))
                                                                    (let
                                                                    ((X65
                                                                    (=
                                                                    top.impl.usr.zz176_a_0
                                                                    20)))
                                                                    (let
                                                                    ((X66
                                                                    0))
                                                                    (let
                                                                    ((X67
                                                                    (+
                                                                    X66
                                                                    1)))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    top.usr.accelResume_a_0
                                                                    X67
                                                                    0)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X68)
                                                                    0
                                                                    X68)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz170_a_0
                                                                    (ite
                                                                    (<=
                                                                    X69
                                                                    20)
                                                                    X69
                                                                    20))
                                                                    (let
                                                                    ((X70
                                                                    (=
                                                                    top.impl.usr.zz170_a_0
                                                                    20)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz155_a_0
                                                                    true)
                                                                    (let
                                                                    ((X71
                                                                    (ite
                                                                    (not
                                                                    (= X8 1))
                                                                    1
                                                                    X8)))
                                                                    (let
                                                                    ((X72
                                                                    (or
                                                                    X26
                                                                    X9)))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    X54
                                                                    X60
                                                                    X56)))
                                                                    (let
                                                                    ((X74
                                                                    (or
                                                                    X54
                                                                    X53)))
                                                                    (let
                                                                    ((X75
                                                                    (and
                                                                    (= X73 7)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X3)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X74)))))
                                                                    (let
                                                                    ((X76
                                                                    (ite
                                                                    (= X73 7)
                                                                    2
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    (ite
                                                                    X75
                                                                    X76
                                                                    X73)))
                                                                    (let
                                                                    ((X78
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X77
                                                                    3)
                                                                    (<=
                                                                    X77
                                                                    6)))
                                                                    3
                                                                    X77)))
                                                                    (let
                                                                    ((X79
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X77
                                                                    3)
                                                                    (<=
                                                                    X77
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X78
                                                                    3)
                                                                    (<=
                                                                    X78
                                                                    6)))))
                                                                    (let
                                                                    ((X80
                                                                    (ite
                                                                    (not
                                                                    (= X78 4))
                                                                    4
                                                                    X78)))
                                                                    (let
                                                                    ((X81
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X78)))
                                                                    (let
                                                                    ((X82
                                                                    (ite
                                                                    X75
                                                                    X81
                                                                    X77)))
                                                                    (let
                                                                    ((X83
                                                                    (or
                                                                    X75
                                                                    X74)))
                                                                    (let
                                                                    ((X84
                                                                    (and
                                                                    (= X82 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X85
                                                                    (ite
                                                                    (= X82 4)
                                                                    3
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    (ite
                                                                    X84
                                                                    X85
                                                                    X82)))
                                                                    (let
                                                                    ((X87
                                                                    (ite
                                                                    (not
                                                                    (= X86 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    (ite
                                                                    X84
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    (and
                                                                    (= X88 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X70)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X84)))))
                                                                    (let
                                                                    ((X90
                                                                    (ite
                                                                    (= X88 4)
                                                                    3
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    (ite
                                                                    X89
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    (ite
                                                                    (not
                                                                    (= X91 5))
                                                                    5
                                                                    X91)))
                                                                    (let
                                                                    ((X93
                                                                    (ite
                                                                    X89
                                                                    X92
                                                                    X91)))
                                                                    (let
                                                                    ((X94
                                                                    (or
                                                                    X89
                                                                    X84)))
                                                                    (let
                                                                    ((X95
                                                                    (and
                                                                    (= X93 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X65)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X94)))))
                                                                    (let
                                                                    ((X96
                                                                    (ite
                                                                    (= X93 4)
                                                                    3
                                                                    X93)))
                                                                    (let
                                                                    ((X97
                                                                    (ite
                                                                    X95
                                                                    X96
                                                                    X93)))
                                                                    (let
                                                                    ((X98
                                                                    (ite
                                                                    (not
                                                                    (= X97 6))
                                                                    6
                                                                    X97)))
                                                                    (let
                                                                    ((X99
                                                                    (ite
                                                                    X95
                                                                    X98
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    (or
                                                                    X95
                                                                    X94)))
                                                                    (let
                                                                    ((X101
                                                                    (and
                                                                    (= X99 6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X65))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X100)))))
                                                                    (let
                                                                    ((X102
                                                                    (ite
                                                                    (= X99 6)
                                                                    3
                                                                    X99)))
                                                                    (let
                                                                    ((X103
                                                                    (ite
                                                                    X101
                                                                    X102
                                                                    X99)))
                                                                    (let
                                                                    ((X104
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X103)))
                                                                    (let
                                                                    ((X105
                                                                    (ite
                                                                    X101
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X106
                                                                    (or
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X107
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X70))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X106)))))
                                                                    (let
                                                                    ((X108
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X105)))
                                                                    (let
                                                                    ((X110
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    4))
                                                                    4
                                                                    X109)))
                                                                    (let
                                                                    ((X111
                                                                    (ite
                                                                    X107
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X112
                                                                    (ite
                                                                    (and
                                                                    (not X83)
                                                                    (and
                                                                    (>=
                                                                    X82
                                                                    3)
                                                                    (<=
                                                                    X82
                                                                    6)))
                                                                    X111
                                                                    X82)))
                                                                    (let
                                                                    ((X113
                                                                    (ite
                                                                    (and
                                                                    (not X72)
                                                                    (and
                                                                    (>=
                                                                    X33
                                                                    2)
                                                                    (<=
                                                                    X33
                                                                    8)))
                                                                    X112
                                                                    X33)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c_a_0
                                                                    true)
                                                                    (let
                                                                    ((X114
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    (ite
                                                                    top.impl.usr.zz155_a_0
                                                                    X71
                                                                    X113)
                                                                    X8)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161_a_0
                                                                    X114)
                                                                    top.res.init_flag_a_0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.SP3c_a_1 Bool)
    (top.impl.usr.zz155_a_1 Bool)
    (top.impl.usr.zz161_a_1 Int)
    (top.impl.usr.zz170_a_1 Int)
    (top.impl.usr.zz176_a_1 Int)
    (top.impl.usr.zz178_a_1 Bool)
    (top.impl.usr.zz183_a_1 Bool)
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
    (top.impl.usr.SP3c_a_0 Bool)
    (top.impl.usr.zz155_a_0 Bool)
    (top.impl.usr.zz161_a_0 Int)
    (top.impl.usr.zz170_a_0 Int)
    (top.impl.usr.zz176_a_0 Int)
    (top.impl.usr.zz178_a_0 Bool)
    (top.impl.usr.zz183_a_0 Bool)
  ) Bool
  
  (let
   ((X1 (>= top.usr.carSpeed_a_1 15.0)))
   (let
    ((X2 (= top.usr.carGear_a_1 3)))
    (let
     ((X3
       (and
             (and
              (and
               (and (not top.usr.cancel_a_1) (not top.usr.brakePedal_a_1))
               X2)
              X1)
             top.usr.validInputs_a_1)))
     (let
      ((X4 top.impl.usr.zz183_a_0))
      (and
       (= top.impl.usr.zz183_a_1 top.usr.decelSet_a_1)
       (let
        ((X5 (and (not X4) top.impl.usr.zz183_a_1)))
        (let
         ((X6 top.impl.usr.zz178_a_0))
         (and
          (= top.impl.usr.zz178_a_1 top.usr.accelResume_a_1)
          (let
           ((X7 (and (not X6) top.impl.usr.zz178_a_1)))
           (let
            ((X8 top.impl.usr.zz161_a_0))
            (let
             ((X9 (and (and (>= X8 2) (<= X8 8)) (not top.usr.onOff_a_1))))
             (let
              ((X10 (ite (= X8 4) 3 X8)))
              (let
               ((X11 (ite (and (>= X8 3) (<= X8 6)) X10 X8)))
               (let
                ((X12 (ite (= X11 5) 3 X11)))
                (let
                 ((X13 (ite (and (>= X8 3) (<= X8 6)) X12 X11)))
                 (let
                  ((X14 (ite (= X13 6) 3 X13)))
                  (let
                   ((X15 (ite (and (>= X8 3) (<= X8 6)) X14 X13)))
                   (let
                    ((X16 (ite (and (>= X8 3) (<= X8 6)) 2 X15)))
                    (let
                     ((X17 (ite (and (>= X8 2) (<= X8 8)) X16 X8)))
                     (let
                      ((X18 (ite (= X17 7) 2 X17)))
                      (let
                       ((X19 (ite (and (>= X8 2) (<= X8 8)) X18 X17)))
                       (let
                        ((X20 (ite (= X19 8) 2 X19)))
                        (let
                         ((X21 (ite (and (>= X8 2) (<= X8 8)) X20 X19)))
                         (let
                          ((X22 (ite (and (>= X8 2) (<= X8 8)) 0 X21)))
                          (let
                           ((X23 (ite X9 X22 X8)))
                           (let
                            ((X24 (ite (not (= X23 1)) 1 X23)))
                            (let
                             ((X25 (ite X9 X24 X23)))
                             (let
                              ((X26
                                (and
                                      (= X25 1)
                                      (and top.usr.onOff_a_1 (not X9)))))
                              (let
                               ((X27 (ite (= X25 1) 0 X25)))
                               (let
                                ((X28 (ite X26 X27 X25)))
                                (let
                                 ((X29
                                   (ite
                                        (not (and (>= X28 2) (<= X28 8)))
                                        2
                                        X28)))
                                 (let
                                  ((X30
                                    (and
                                          (not (and (>= X28 2) (<= X28 8)))
                                          (and (>= X29 2) (<= X29 8)))))
                                  (let
                                   ((X31 (ite (not (= X29 7)) 7 X29)))
                                   (let
                                    ((X32 (ite X30 X31 X29)))
                                    (let
                                     ((X33 (ite X26 X32 X28)))
                                     (let
                                      ((X34
                                        (and
                                              (and (>= X33 3) (<= X33 6))
                                              (not X3))))
                                      (let
                                       ((X35 (ite (= X33 4) 3 X33)))
                                       (let
                                        ((X36
                                          (ite
                                               (and (>= X33 3) (<= X33 6))
                                               X35
                                               X33)))
                                        (let
                                         ((X37 (ite (= X36 5) 3 X36)))
                                         (let
                                          ((X38
                                            (ite
                                                 (and (>= X33 3) (<= X33 6))
                                                 X37
                                                 X36)))
                                          (let
                                           ((X39 (ite (= X38 6) 3 X38)))
                                           (let
                                            ((X40
                                              (ite
                                                   (and
                                                    (>= X33 3)
                                                    (<= X33 6))
                                                   X39
                                                   X38)))
                                            (let
                                             ((X41
                                               (ite
                                                    (and
                                                     (>= X33 3)
                                                     (<= X33 6))
                                                    2
                                                    X40)))
                                             (let
                                              ((X42 (ite X34 X41 X33)))
                                              (let
                                               ((X43
                                                 (ite
                                                      (not (= X42 8))
                                                      8
                                                      X42)))
                                               (let
                                                ((X44 (ite X34 X43 X42)))
                                                (let
                                                 ((X45
                                                   (and
                                                         (= X44 8)
                                                         (and
                                                          (and
                                                           (not
                                                            (=
                                                             (ite
                                                              (not X5)
                                                              0
                                                              1)
                                                             0))
                                                           (not
                                                            (=
                                                             (ite
                                                              (not X3)
                                                              0
                                                              1)
                                                             0)))
                                                          (not X34)))))
                                                 (let
                                                  ((X46
                                                    (ite (= X44 8) 2 X44)))
                                                  (let
                                                   ((X47
                                                     (ite X45 X46 X44)))
                                                   (let
                                                    ((X48
                                                      (ite
                                                           (not
                                                            (and
                                                             (>= X47 3)
                                                             (<= X47 6)))
                                                           3
                                                           X47)))
                                                    (let
                                                     ((X49
                                                       (and
                                                             (not
                                                              (and
                                                               (>= X47 3)
                                                               (<= X47 6)))
                                                             (and
                                                              (>= X48 3)
                                                              (<= X48 6)))))
                                                     (let
                                                      ((X50
                                                        (ite
                                                             (not (= X48 4))
                                                             4
                                                             X48)))
                                                      (let
                                                       ((X51
                                                         (ite
                                                              X49
                                                              X50
                                                              X48)))
                                                       (let
                                                        ((X52
                                                          (ite
                                                               X45
                                                               X51
                                                               X47)))
                                                        (let
                                                         ((X53
                                                           (or X45 X34)))
                                                         (let
                                                          ((X54
                                                            (and
                                                                  (= X52 8)
                                                                  (and
                                                                   (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X7)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X3)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                   (not X53)))))
                                                          (let
                                                           ((X55
                                                             (ite
                                                                  (= X52 8)
                                                                  2
                                                                  X52)))
                                                           (let
                                                            ((X56
                                                              (ite
                                                                   X54
                                                                   X55
                                                                   X52)))
                                                            (let
                                                             ((X57
                                                               (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X56
                                                                    3)
                                                                    (<=
                                                                    X56
                                                                    6)))
                                                                    3
                                                                    X56)))
                                                             (let
                                                              ((X58
                                                                (and
                                                                 (not
                                                                  (and
                                                                   (>= X56 3)
                                                                   (<= X56 6)))
                                                                 (and
                                                                  (>= X57 3)
                                                                  (<= X57 6)))))
                                                              (let
                                                               ((X59
                                                                 (ite
                                                                  (not
                                                                   (= X57 4))
                                                                  4
                                                                  X57)))
                                                               (let
                                                                ((X60
                                                                  (ite
                                                                   X58
                                                                   X59
                                                                   X57)))
                                                                (and
                                                                 (=
                                                                  top.usr.OK_a_1
                                                                  (or
                                                                   (= X60 4)
                                                                   (or
                                                                    (= X60 5)
                                                                    (= X60 6))))
                                                                 (let
                                                                  ((X61
                                                                    top.impl.usr.zz176_a_0))
                                                                  (let
                                                                   ((X62
                                                                    (+
                                                                    X61
                                                                    1)))
                                                                   (let
                                                                    ((X63
                                                                    (ite
                                                                    top.usr.decelSet_a_1
                                                                    X62
                                                                    0)))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X63)
                                                                    0
                                                                    X63)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz176_a_1
                                                                    (ite
                                                                    (<=
                                                                    X64
                                                                    20)
                                                                    X64
                                                                    20))
                                                                    (let
                                                                    ((X65
                                                                    (=
                                                                    top.impl.usr.zz176_a_1
                                                                    20)))
                                                                    (let
                                                                    ((X66
                                                                    top.impl.usr.zz170_a_0))
                                                                    (let
                                                                    ((X67
                                                                    (+
                                                                    X66
                                                                    1)))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    top.usr.accelResume_a_1
                                                                    X67
                                                                    0)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X68)
                                                                    0
                                                                    X68)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz170_a_1
                                                                    (ite
                                                                    (<=
                                                                    X69
                                                                    20)
                                                                    X69
                                                                    20))
                                                                    (let
                                                                    ((X70
                                                                    (=
                                                                    top.impl.usr.zz170_a_1
                                                                    20)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz155_a_1
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    false
                                                                    top.impl.usr.zz155_a_0))
                                                                    (let
                                                                    ((X71
                                                                    (ite
                                                                    (not
                                                                    (= X8 1))
                                                                    1
                                                                    X8)))
                                                                    (let
                                                                    ((X72
                                                                    (or
                                                                    X26
                                                                    X9)))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    X54
                                                                    X60
                                                                    X56)))
                                                                    (let
                                                                    ((X74
                                                                    (or
                                                                    X54
                                                                    X53)))
                                                                    (let
                                                                    ((X75
                                                                    (and
                                                                    (= X73 7)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X3)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X74)))))
                                                                    (let
                                                                    ((X76
                                                                    (ite
                                                                    (= X73 7)
                                                                    2
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    (ite
                                                                    X75
                                                                    X76
                                                                    X73)))
                                                                    (let
                                                                    ((X78
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X77
                                                                    3)
                                                                    (<=
                                                                    X77
                                                                    6)))
                                                                    3
                                                                    X77)))
                                                                    (let
                                                                    ((X79
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X77
                                                                    3)
                                                                    (<=
                                                                    X77
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X78
                                                                    3)
                                                                    (<=
                                                                    X78
                                                                    6)))))
                                                                    (let
                                                                    ((X80
                                                                    (ite
                                                                    (not
                                                                    (= X78 4))
                                                                    4
                                                                    X78)))
                                                                    (let
                                                                    ((X81
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X78)))
                                                                    (let
                                                                    ((X82
                                                                    (ite
                                                                    X75
                                                                    X81
                                                                    X77)))
                                                                    (let
                                                                    ((X83
                                                                    (or
                                                                    X75
                                                                    X74)))
                                                                    (let
                                                                    ((X84
                                                                    (and
                                                                    (= X82 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X85
                                                                    (ite
                                                                    (= X82 4)
                                                                    3
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    (ite
                                                                    X84
                                                                    X85
                                                                    X82)))
                                                                    (let
                                                                    ((X87
                                                                    (ite
                                                                    (not
                                                                    (= X86 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    (ite
                                                                    X84
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    (and
                                                                    (= X88 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X70)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X84)))))
                                                                    (let
                                                                    ((X90
                                                                    (ite
                                                                    (= X88 4)
                                                                    3
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    (ite
                                                                    X89
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    (ite
                                                                    (not
                                                                    (= X91 5))
                                                                    5
                                                                    X91)))
                                                                    (let
                                                                    ((X93
                                                                    (ite
                                                                    X89
                                                                    X92
                                                                    X91)))
                                                                    (let
                                                                    ((X94
                                                                    (or
                                                                    X89
                                                                    X84)))
                                                                    (let
                                                                    ((X95
                                                                    (and
                                                                    (= X93 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X65)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X94)))))
                                                                    (let
                                                                    ((X96
                                                                    (ite
                                                                    (= X93 4)
                                                                    3
                                                                    X93)))
                                                                    (let
                                                                    ((X97
                                                                    (ite
                                                                    X95
                                                                    X96
                                                                    X93)))
                                                                    (let
                                                                    ((X98
                                                                    (ite
                                                                    (not
                                                                    (= X97 6))
                                                                    6
                                                                    X97)))
                                                                    (let
                                                                    ((X99
                                                                    (ite
                                                                    X95
                                                                    X98
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    (or
                                                                    X95
                                                                    X94)))
                                                                    (let
                                                                    ((X101
                                                                    (and
                                                                    (= X99 6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X65))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X100)))))
                                                                    (let
                                                                    ((X102
                                                                    (ite
                                                                    (= X99 6)
                                                                    3
                                                                    X99)))
                                                                    (let
                                                                    ((X103
                                                                    (ite
                                                                    X101
                                                                    X102
                                                                    X99)))
                                                                    (let
                                                                    ((X104
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X103)))
                                                                    (let
                                                                    ((X105
                                                                    (ite
                                                                    X101
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X106
                                                                    (or
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X107
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X70))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X106)))))
                                                                    (let
                                                                    ((X108
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X105)))
                                                                    (let
                                                                    ((X110
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    4))
                                                                    4
                                                                    X109)))
                                                                    (let
                                                                    ((X111
                                                                    (ite
                                                                    X107
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X112
                                                                    (ite
                                                                    (and
                                                                    (not X83)
                                                                    (and
                                                                    (>=
                                                                    X82
                                                                    3)
                                                                    (<=
                                                                    X82
                                                                    6)))
                                                                    X111
                                                                    X82)))
                                                                    (let
                                                                    ((X113
                                                                    (ite
                                                                    (and
                                                                    (not X72)
                                                                    (and
                                                                    (>=
                                                                    X33
                                                                    2)
                                                                    (<=
                                                                    X33
                                                                    8)))
                                                                    X112
                                                                    X33)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c_a_1
                                                                    true)
                                                                    (let
                                                                    ((X114
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_1
                                                                    (ite
                                                                    top.impl.usr.zz155_a_1
                                                                    X71
                                                                    X113)
                                                                    X8)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161_a_1
                                                                    X114)
                                                                    (not
                                                                    top.res.init_flag_a_1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
  (top.impl.usr.SP3c Bool)
  (top.impl.usr.zz155 Bool)
  (top.impl.usr.zz161 Int)
  (top.impl.usr.zz170 Int)
  (top.impl.usr.zz176 Int)
  (top.impl.usr.zz178 Bool)
  (top.impl.usr.zz183 Bool)
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
    (top.impl.usr.SP3c Bool)
    (top.impl.usr.zz155 Bool)
    (top.impl.usr.zz161 Int)
    (top.impl.usr.zz170 Int)
    (top.impl.usr.zz176 Int)
    (top.impl.usr.zz178 Bool)
    (top.impl.usr.zz183 Bool)
  ) Bool
  
  (let
   ((X1 (>= top.usr.carSpeed 15.0)))
   (let
    ((X2 (= top.usr.carGear 3)))
    (let
     ((X3
       (and
             (and
              (and (and (not top.usr.cancel) (not top.usr.brakePedal)) X2)
              X1)
             top.usr.validInputs)))
     (let
      ((X4 true))
      (and
       (= top.impl.usr.zz183 top.usr.decelSet)
       (let
        ((X5 (and (not X4) top.impl.usr.zz183)))
        (let
         ((X6 true))
         (and
          (= top.impl.usr.zz178 top.usr.accelResume)
          (let
           ((X7 (and (not X6) top.impl.usr.zz178)))
           (let
            ((X8 0))
            (let
             ((X9 (and (and (>= X8 2) (<= X8 8)) (not top.usr.onOff))))
             (let
              ((X10 (ite (= X8 4) 3 X8)))
              (let
               ((X11 (ite (and (>= X8 3) (<= X8 6)) X10 X8)))
               (let
                ((X12 (ite (= X11 5) 3 X11)))
                (let
                 ((X13 (ite (and (>= X8 3) (<= X8 6)) X12 X11)))
                 (let
                  ((X14 (ite (= X13 6) 3 X13)))
                  (let
                   ((X15 (ite (and (>= X8 3) (<= X8 6)) X14 X13)))
                   (let
                    ((X16 (ite (and (>= X8 3) (<= X8 6)) 2 X15)))
                    (let
                     ((X17 (ite (and (>= X8 2) (<= X8 8)) X16 X8)))
                     (let
                      ((X18 (ite (= X17 7) 2 X17)))
                      (let
                       ((X19 (ite (and (>= X8 2) (<= X8 8)) X18 X17)))
                       (let
                        ((X20 (ite (= X19 8) 2 X19)))
                        (let
                         ((X21 (ite (and (>= X8 2) (<= X8 8)) X20 X19)))
                         (let
                          ((X22 (ite (and (>= X8 2) (<= X8 8)) 0 X21)))
                          (let
                           ((X23 (ite X9 X22 X8)))
                           (let
                            ((X24 (ite (not (= X23 1)) 1 X23)))
                            (let
                             ((X25 (ite X9 X24 X23)))
                             (let
                              ((X26
                                (and
                                      (= X25 1)
                                      (and top.usr.onOff (not X9)))))
                              (let
                               ((X27 (ite (= X25 1) 0 X25)))
                               (let
                                ((X28 (ite X26 X27 X25)))
                                (let
                                 ((X29
                                   (ite
                                        (not (and (>= X28 2) (<= X28 8)))
                                        2
                                        X28)))
                                 (let
                                  ((X30
                                    (and
                                          (not (and (>= X28 2) (<= X28 8)))
                                          (and (>= X29 2) (<= X29 8)))))
                                  (let
                                   ((X31 (ite (not (= X29 7)) 7 X29)))
                                   (let
                                    ((X32 (ite X30 X31 X29)))
                                    (let
                                     ((X33 (ite X26 X32 X28)))
                                     (let
                                      ((X34
                                        (and
                                              (and (>= X33 3) (<= X33 6))
                                              (not X3))))
                                      (let
                                       ((X35 (ite (= X33 4) 3 X33)))
                                       (let
                                        ((X36
                                          (ite
                                               (and (>= X33 3) (<= X33 6))
                                               X35
                                               X33)))
                                        (let
                                         ((X37 (ite (= X36 5) 3 X36)))
                                         (let
                                          ((X38
                                            (ite
                                                 (and (>= X33 3) (<= X33 6))
                                                 X37
                                                 X36)))
                                          (let
                                           ((X39 (ite (= X38 6) 3 X38)))
                                           (let
                                            ((X40
                                              (ite
                                                   (and
                                                    (>= X33 3)
                                                    (<= X33 6))
                                                   X39
                                                   X38)))
                                            (let
                                             ((X41
                                               (ite
                                                    (and
                                                     (>= X33 3)
                                                     (<= X33 6))
                                                    2
                                                    X40)))
                                             (let
                                              ((X42 (ite X34 X41 X33)))
                                              (let
                                               ((X43
                                                 (ite
                                                      (not (= X42 8))
                                                      8
                                                      X42)))
                                               (let
                                                ((X44 (ite X34 X43 X42)))
                                                (let
                                                 ((X45
                                                   (and
                                                         (= X44 8)
                                                         (and
                                                          (and
                                                           (not
                                                            (=
                                                             (ite
                                                              (not X5)
                                                              0
                                                              1)
                                                             0))
                                                           (not
                                                            (=
                                                             (ite
                                                              (not X3)
                                                              0
                                                              1)
                                                             0)))
                                                          (not X34)))))
                                                 (let
                                                  ((X46
                                                    (ite (= X44 8) 2 X44)))
                                                  (let
                                                   ((X47
                                                     (ite X45 X46 X44)))
                                                   (let
                                                    ((X48
                                                      (ite
                                                           (not
                                                            (and
                                                             (>= X47 3)
                                                             (<= X47 6)))
                                                           3
                                                           X47)))
                                                    (let
                                                     ((X49
                                                       (and
                                                             (not
                                                              (and
                                                               (>= X47 3)
                                                               (<= X47 6)))
                                                             (and
                                                              (>= X48 3)
                                                              (<= X48 6)))))
                                                     (let
                                                      ((X50
                                                        (ite
                                                             (not (= X48 4))
                                                             4
                                                             X48)))
                                                      (let
                                                       ((X51
                                                         (ite
                                                              X49
                                                              X50
                                                              X48)))
                                                       (let
                                                        ((X52
                                                          (ite
                                                               X45
                                                               X51
                                                               X47)))
                                                        (let
                                                         ((X53
                                                           (or X45 X34)))
                                                         (let
                                                          ((X54
                                                            (and
                                                                  (= X52 8)
                                                                  (and
                                                                   (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X7)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X3)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                   (not X53)))))
                                                          (let
                                                           ((X55
                                                             (ite
                                                                  (= X52 8)
                                                                  2
                                                                  X52)))
                                                           (let
                                                            ((X56
                                                              (ite
                                                                   X54
                                                                   X55
                                                                   X52)))
                                                            (let
                                                             ((X57
                                                               (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X56
                                                                    3)
                                                                    (<=
                                                                    X56
                                                                    6)))
                                                                    3
                                                                    X56)))
                                                             (let
                                                              ((X58
                                                                (and
                                                                 (not
                                                                  (and
                                                                   (>= X56 3)
                                                                   (<= X56 6)))
                                                                 (and
                                                                  (>= X57 3)
                                                                  (<= X57 6)))))
                                                              (let
                                                               ((X59
                                                                 (ite
                                                                  (not
                                                                   (= X57 4))
                                                                  4
                                                                  X57)))
                                                               (let
                                                                ((X60
                                                                  (ite
                                                                   X58
                                                                   X59
                                                                   X57)))
                                                                (and
                                                                 (=
                                                                  top.usr.OK
                                                                  (or
                                                                   (= X60 4)
                                                                   (or
                                                                    (= X60 5)
                                                                    (= X60 6))))
                                                                 (let
                                                                  ((X61
                                                                    0))
                                                                  (let
                                                                   ((X62
                                                                    (+
                                                                    X61
                                                                    1)))
                                                                   (let
                                                                    ((X63
                                                                    (ite
                                                                    top.usr.decelSet
                                                                    X62
                                                                    0)))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X63)
                                                                    0
                                                                    X63)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz176
                                                                    (ite
                                                                    (<=
                                                                    X64
                                                                    20)
                                                                    X64
                                                                    20))
                                                                    (let
                                                                    ((X65
                                                                    (=
                                                                    top.impl.usr.zz176
                                                                    20)))
                                                                    (let
                                                                    ((X66
                                                                    0))
                                                                    (let
                                                                    ((X67
                                                                    (+
                                                                    X66
                                                                    1)))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    top.usr.accelResume
                                                                    X67
                                                                    0)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X68)
                                                                    0
                                                                    X68)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz170
                                                                    (ite
                                                                    (<=
                                                                    X69
                                                                    20)
                                                                    X69
                                                                    20))
                                                                    (let
                                                                    ((X70
                                                                    (=
                                                                    top.impl.usr.zz170
                                                                    20)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz155
                                                                    true)
                                                                    (let
                                                                    ((X71
                                                                    (ite
                                                                    (not
                                                                    (= X8 1))
                                                                    1
                                                                    X8)))
                                                                    (let
                                                                    ((X72
                                                                    (or
                                                                    X26
                                                                    X9)))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    X54
                                                                    X60
                                                                    X56)))
                                                                    (let
                                                                    ((X74
                                                                    (or
                                                                    X54
                                                                    X53)))
                                                                    (let
                                                                    ((X75
                                                                    (and
                                                                    (= X73 7)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X3)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X74)))))
                                                                    (let
                                                                    ((X76
                                                                    (ite
                                                                    (= X73 7)
                                                                    2
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    (ite
                                                                    X75
                                                                    X76
                                                                    X73)))
                                                                    (let
                                                                    ((X78
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X77
                                                                    3)
                                                                    (<=
                                                                    X77
                                                                    6)))
                                                                    3
                                                                    X77)))
                                                                    (let
                                                                    ((X79
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X77
                                                                    3)
                                                                    (<=
                                                                    X77
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X78
                                                                    3)
                                                                    (<=
                                                                    X78
                                                                    6)))))
                                                                    (let
                                                                    ((X80
                                                                    (ite
                                                                    (not
                                                                    (= X78 4))
                                                                    4
                                                                    X78)))
                                                                    (let
                                                                    ((X81
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X78)))
                                                                    (let
                                                                    ((X82
                                                                    (ite
                                                                    X75
                                                                    X81
                                                                    X77)))
                                                                    (let
                                                                    ((X83
                                                                    (or
                                                                    X75
                                                                    X74)))
                                                                    (let
                                                                    ((X84
                                                                    (and
                                                                    (= X82 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X85
                                                                    (ite
                                                                    (= X82 4)
                                                                    3
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    (ite
                                                                    X84
                                                                    X85
                                                                    X82)))
                                                                    (let
                                                                    ((X87
                                                                    (ite
                                                                    (not
                                                                    (= X86 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    (ite
                                                                    X84
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    (and
                                                                    (= X88 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X70)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X84)))))
                                                                    (let
                                                                    ((X90
                                                                    (ite
                                                                    (= X88 4)
                                                                    3
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    (ite
                                                                    X89
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    (ite
                                                                    (not
                                                                    (= X91 5))
                                                                    5
                                                                    X91)))
                                                                    (let
                                                                    ((X93
                                                                    (ite
                                                                    X89
                                                                    X92
                                                                    X91)))
                                                                    (let
                                                                    ((X94
                                                                    (or
                                                                    X89
                                                                    X84)))
                                                                    (let
                                                                    ((X95
                                                                    (and
                                                                    (= X93 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X65)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X94)))))
                                                                    (let
                                                                    ((X96
                                                                    (ite
                                                                    (= X93 4)
                                                                    3
                                                                    X93)))
                                                                    (let
                                                                    ((X97
                                                                    (ite
                                                                    X95
                                                                    X96
                                                                    X93)))
                                                                    (let
                                                                    ((X98
                                                                    (ite
                                                                    (not
                                                                    (= X97 6))
                                                                    6
                                                                    X97)))
                                                                    (let
                                                                    ((X99
                                                                    (ite
                                                                    X95
                                                                    X98
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    (or
                                                                    X95
                                                                    X94)))
                                                                    (let
                                                                    ((X101
                                                                    (and
                                                                    (= X99 6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X65))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X100)))))
                                                                    (let
                                                                    ((X102
                                                                    (ite
                                                                    (= X99 6)
                                                                    3
                                                                    X99)))
                                                                    (let
                                                                    ((X103
                                                                    (ite
                                                                    X101
                                                                    X102
                                                                    X99)))
                                                                    (let
                                                                    ((X104
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X103)))
                                                                    (let
                                                                    ((X105
                                                                    (ite
                                                                    X101
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X106
                                                                    (or
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X107
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X70))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X106)))))
                                                                    (let
                                                                    ((X108
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X105)))
                                                                    (let
                                                                    ((X110
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    4))
                                                                    4
                                                                    X109)))
                                                                    (let
                                                                    ((X111
                                                                    (ite
                                                                    X107
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X112
                                                                    (ite
                                                                    (and
                                                                    (not X83)
                                                                    (and
                                                                    (>=
                                                                    X82
                                                                    3)
                                                                    (<=
                                                                    X82
                                                                    6)))
                                                                    X111
                                                                    X82)))
                                                                    (let
                                                                    ((X113
                                                                    (ite
                                                                    (and
                                                                    (not X72)
                                                                    (and
                                                                    (>=
                                                                    X33
                                                                    2)
                                                                    (<=
                                                                    X33
                                                                    8)))
                                                                    X112
                                                                    X33)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c
                                                                    true)
                                                                    (let
                                                                    ((X114
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    (ite
                                                                    top.impl.usr.zz155
                                                                    X71
                                                                    X113)
                                                                    X8)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161
                                                                    X114)
                                                                    top.res.init_flag))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.SP3c Bool)
    (top.impl.usr.zz155 Bool)
    (top.impl.usr.zz161 Int)
    (top.impl.usr.zz170 Int)
    (top.impl.usr.zz176 Int)
    (top.impl.usr.zz178 Bool)
    (top.impl.usr.zz183 Bool)
    
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
    (top.impl.usr.SP3c! Bool)
    (top.impl.usr.zz155! Bool)
    (top.impl.usr.zz161! Int)
    (top.impl.usr.zz170! Int)
    (top.impl.usr.zz176! Int)
    (top.impl.usr.zz178! Bool)
    (top.impl.usr.zz183! Bool)
  
  ) Bool
  
  (let
   ((X1 (>= top.usr.carSpeed! 15.0)))
   (let
    ((X2 (= top.usr.carGear! 3)))
    (let
     ((X3
       (and
             (and
              (and (and (not top.usr.cancel!) (not top.usr.brakePedal!)) X2)
              X1)
             top.usr.validInputs!)))
     (let
      ((X4 top.impl.usr.zz183))
      (and
       (= top.impl.usr.zz183! top.usr.decelSet!)
       (let
        ((X5 (and (not X4) top.impl.usr.zz183!)))
        (let
         ((X6 top.impl.usr.zz178))
         (and
          (= top.impl.usr.zz178! top.usr.accelResume!)
          (let
           ((X7 (and (not X6) top.impl.usr.zz178!)))
           (let
            ((X8 top.impl.usr.zz161))
            (let
             ((X9 (and (and (>= X8 2) (<= X8 8)) (not top.usr.onOff!))))
             (let
              ((X10 (ite (= X8 4) 3 X8)))
              (let
               ((X11 (ite (and (>= X8 3) (<= X8 6)) X10 X8)))
               (let
                ((X12 (ite (= X11 5) 3 X11)))
                (let
                 ((X13 (ite (and (>= X8 3) (<= X8 6)) X12 X11)))
                 (let
                  ((X14 (ite (= X13 6) 3 X13)))
                  (let
                   ((X15 (ite (and (>= X8 3) (<= X8 6)) X14 X13)))
                   (let
                    ((X16 (ite (and (>= X8 3) (<= X8 6)) 2 X15)))
                    (let
                     ((X17 (ite (and (>= X8 2) (<= X8 8)) X16 X8)))
                     (let
                      ((X18 (ite (= X17 7) 2 X17)))
                      (let
                       ((X19 (ite (and (>= X8 2) (<= X8 8)) X18 X17)))
                       (let
                        ((X20 (ite (= X19 8) 2 X19)))
                        (let
                         ((X21 (ite (and (>= X8 2) (<= X8 8)) X20 X19)))
                         (let
                          ((X22 (ite (and (>= X8 2) (<= X8 8)) 0 X21)))
                          (let
                           ((X23 (ite X9 X22 X8)))
                           (let
                            ((X24 (ite (not (= X23 1)) 1 X23)))
                            (let
                             ((X25 (ite X9 X24 X23)))
                             (let
                              ((X26
                                (and
                                      (= X25 1)
                                      (and top.usr.onOff! (not X9)))))
                              (let
                               ((X27 (ite (= X25 1) 0 X25)))
                               (let
                                ((X28 (ite X26 X27 X25)))
                                (let
                                 ((X29
                                   (ite
                                        (not (and (>= X28 2) (<= X28 8)))
                                        2
                                        X28)))
                                 (let
                                  ((X30
                                    (and
                                          (not (and (>= X28 2) (<= X28 8)))
                                          (and (>= X29 2) (<= X29 8)))))
                                  (let
                                   ((X31 (ite (not (= X29 7)) 7 X29)))
                                   (let
                                    ((X32 (ite X30 X31 X29)))
                                    (let
                                     ((X33 (ite X26 X32 X28)))
                                     (let
                                      ((X34
                                        (and
                                              (and (>= X33 3) (<= X33 6))
                                              (not X3))))
                                      (let
                                       ((X35 (ite (= X33 4) 3 X33)))
                                       (let
                                        ((X36
                                          (ite
                                               (and (>= X33 3) (<= X33 6))
                                               X35
                                               X33)))
                                        (let
                                         ((X37 (ite (= X36 5) 3 X36)))
                                         (let
                                          ((X38
                                            (ite
                                                 (and (>= X33 3) (<= X33 6))
                                                 X37
                                                 X36)))
                                          (let
                                           ((X39 (ite (= X38 6) 3 X38)))
                                           (let
                                            ((X40
                                              (ite
                                                   (and
                                                    (>= X33 3)
                                                    (<= X33 6))
                                                   X39
                                                   X38)))
                                            (let
                                             ((X41
                                               (ite
                                                    (and
                                                     (>= X33 3)
                                                     (<= X33 6))
                                                    2
                                                    X40)))
                                             (let
                                              ((X42 (ite X34 X41 X33)))
                                              (let
                                               ((X43
                                                 (ite
                                                      (not (= X42 8))
                                                      8
                                                      X42)))
                                               (let
                                                ((X44 (ite X34 X43 X42)))
                                                (let
                                                 ((X45
                                                   (and
                                                         (= X44 8)
                                                         (and
                                                          (and
                                                           (not
                                                            (=
                                                             (ite
                                                              (not X5)
                                                              0
                                                              1)
                                                             0))
                                                           (not
                                                            (=
                                                             (ite
                                                              (not X3)
                                                              0
                                                              1)
                                                             0)))
                                                          (not X34)))))
                                                 (let
                                                  ((X46
                                                    (ite (= X44 8) 2 X44)))
                                                  (let
                                                   ((X47
                                                     (ite X45 X46 X44)))
                                                   (let
                                                    ((X48
                                                      (ite
                                                           (not
                                                            (and
                                                             (>= X47 3)
                                                             (<= X47 6)))
                                                           3
                                                           X47)))
                                                    (let
                                                     ((X49
                                                       (and
                                                             (not
                                                              (and
                                                               (>= X47 3)
                                                               (<= X47 6)))
                                                             (and
                                                              (>= X48 3)
                                                              (<= X48 6)))))
                                                     (let
                                                      ((X50
                                                        (ite
                                                             (not (= X48 4))
                                                             4
                                                             X48)))
                                                      (let
                                                       ((X51
                                                         (ite
                                                              X49
                                                              X50
                                                              X48)))
                                                       (let
                                                        ((X52
                                                          (ite
                                                               X45
                                                               X51
                                                               X47)))
                                                        (let
                                                         ((X53
                                                           (or X45 X34)))
                                                         (let
                                                          ((X54
                                                            (and
                                                                  (= X52 8)
                                                                  (and
                                                                   (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X7)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X3)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                   (not X53)))))
                                                          (let
                                                           ((X55
                                                             (ite
                                                                  (= X52 8)
                                                                  2
                                                                  X52)))
                                                           (let
                                                            ((X56
                                                              (ite
                                                                   X54
                                                                   X55
                                                                   X52)))
                                                            (let
                                                             ((X57
                                                               (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X56
                                                                    3)
                                                                    (<=
                                                                    X56
                                                                    6)))
                                                                    3
                                                                    X56)))
                                                             (let
                                                              ((X58
                                                                (and
                                                                 (not
                                                                  (and
                                                                   (>= X56 3)
                                                                   (<= X56 6)))
                                                                 (and
                                                                  (>= X57 3)
                                                                  (<= X57 6)))))
                                                              (let
                                                               ((X59
                                                                 (ite
                                                                  (not
                                                                   (= X57 4))
                                                                  4
                                                                  X57)))
                                                               (let
                                                                ((X60
                                                                  (ite
                                                                   X58
                                                                   X59
                                                                   X57)))
                                                                (and
                                                                 (=
                                                                  top.usr.OK!
                                                                  (or
                                                                   (= X60 4)
                                                                   (or
                                                                    (= X60 5)
                                                                    (= X60 6))))
                                                                 (let
                                                                  ((X61
                                                                    top.impl.usr.zz176))
                                                                  (let
                                                                   ((X62
                                                                    (+
                                                                    X61
                                                                    1)))
                                                                   (let
                                                                    ((X63
                                                                    (ite
                                                                    top.usr.decelSet!
                                                                    X62
                                                                    0)))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X63)
                                                                    0
                                                                    X63)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz176!
                                                                    (ite
                                                                    (<=
                                                                    X64
                                                                    20)
                                                                    X64
                                                                    20))
                                                                    (let
                                                                    ((X65
                                                                    (=
                                                                    top.impl.usr.zz176!
                                                                    20)))
                                                                    (let
                                                                    ((X66
                                                                    top.impl.usr.zz170))
                                                                    (let
                                                                    ((X67
                                                                    (+
                                                                    X66
                                                                    1)))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    top.usr.accelResume!
                                                                    X67
                                                                    0)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X68)
                                                                    0
                                                                    X68)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz170!
                                                                    (ite
                                                                    (<=
                                                                    X69
                                                                    20)
                                                                    X69
                                                                    20))
                                                                    (let
                                                                    ((X70
                                                                    (=
                                                                    top.impl.usr.zz170!
                                                                    20)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz155!
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    false
                                                                    top.impl.usr.zz155))
                                                                    (let
                                                                    ((X71
                                                                    (ite
                                                                    (not
                                                                    (= X8 1))
                                                                    1
                                                                    X8)))
                                                                    (let
                                                                    ((X72
                                                                    (or
                                                                    X26
                                                                    X9)))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    X54
                                                                    X60
                                                                    X56)))
                                                                    (let
                                                                    ((X74
                                                                    (or
                                                                    X54
                                                                    X53)))
                                                                    (let
                                                                    ((X75
                                                                    (and
                                                                    (= X73 7)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X3)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X74)))))
                                                                    (let
                                                                    ((X76
                                                                    (ite
                                                                    (= X73 7)
                                                                    2
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    (ite
                                                                    X75
                                                                    X76
                                                                    X73)))
                                                                    (let
                                                                    ((X78
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X77
                                                                    3)
                                                                    (<=
                                                                    X77
                                                                    6)))
                                                                    3
                                                                    X77)))
                                                                    (let
                                                                    ((X79
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X77
                                                                    3)
                                                                    (<=
                                                                    X77
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X78
                                                                    3)
                                                                    (<=
                                                                    X78
                                                                    6)))))
                                                                    (let
                                                                    ((X80
                                                                    (ite
                                                                    (not
                                                                    (= X78 4))
                                                                    4
                                                                    X78)))
                                                                    (let
                                                                    ((X81
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X78)))
                                                                    (let
                                                                    ((X82
                                                                    (ite
                                                                    X75
                                                                    X81
                                                                    X77)))
                                                                    (let
                                                                    ((X83
                                                                    (or
                                                                    X75
                                                                    X74)))
                                                                    (let
                                                                    ((X84
                                                                    (and
                                                                    (= X82 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X85
                                                                    (ite
                                                                    (= X82 4)
                                                                    3
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    (ite
                                                                    X84
                                                                    X85
                                                                    X82)))
                                                                    (let
                                                                    ((X87
                                                                    (ite
                                                                    (not
                                                                    (= X86 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    (ite
                                                                    X84
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    (and
                                                                    (= X88 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X70)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X84)))))
                                                                    (let
                                                                    ((X90
                                                                    (ite
                                                                    (= X88 4)
                                                                    3
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    (ite
                                                                    X89
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    (ite
                                                                    (not
                                                                    (= X91 5))
                                                                    5
                                                                    X91)))
                                                                    (let
                                                                    ((X93
                                                                    (ite
                                                                    X89
                                                                    X92
                                                                    X91)))
                                                                    (let
                                                                    ((X94
                                                                    (or
                                                                    X89
                                                                    X84)))
                                                                    (let
                                                                    ((X95
                                                                    (and
                                                                    (= X93 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X65)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X94)))))
                                                                    (let
                                                                    ((X96
                                                                    (ite
                                                                    (= X93 4)
                                                                    3
                                                                    X93)))
                                                                    (let
                                                                    ((X97
                                                                    (ite
                                                                    X95
                                                                    X96
                                                                    X93)))
                                                                    (let
                                                                    ((X98
                                                                    (ite
                                                                    (not
                                                                    (= X97 6))
                                                                    6
                                                                    X97)))
                                                                    (let
                                                                    ((X99
                                                                    (ite
                                                                    X95
                                                                    X98
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    (or
                                                                    X95
                                                                    X94)))
                                                                    (let
                                                                    ((X101
                                                                    (and
                                                                    (= X99 6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X65))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X100)))))
                                                                    (let
                                                                    ((X102
                                                                    (ite
                                                                    (= X99 6)
                                                                    3
                                                                    X99)))
                                                                    (let
                                                                    ((X103
                                                                    (ite
                                                                    X101
                                                                    X102
                                                                    X99)))
                                                                    (let
                                                                    ((X104
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X103)))
                                                                    (let
                                                                    ((X105
                                                                    (ite
                                                                    X101
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X106
                                                                    (or
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X107
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X70))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X106)))))
                                                                    (let
                                                                    ((X108
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X105)))
                                                                    (let
                                                                    ((X110
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    4))
                                                                    4
                                                                    X109)))
                                                                    (let
                                                                    ((X111
                                                                    (ite
                                                                    X107
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X112
                                                                    (ite
                                                                    (and
                                                                    (not X83)
                                                                    (and
                                                                    (>=
                                                                    X82
                                                                    3)
                                                                    (<=
                                                                    X82
                                                                    6)))
                                                                    X111
                                                                    X82)))
                                                                    (let
                                                                    ((X113
                                                                    (ite
                                                                    (and
                                                                    (not X72)
                                                                    (and
                                                                    (>=
                                                                    X33
                                                                    2)
                                                                    (<=
                                                                    X33
                                                                    8)))
                                                                    X112
                                                                    X33)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c!
                                                                    true)
                                                                    (let
                                                                    ((X114
                                                                    (ite
                                                                    top.impl.usr.SP3c!
                                                                    (ite
                                                                    top.impl.usr.zz155!
                                                                    X71
                                                                    X113)
                                                                    X8)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161!
                                                                    X114)
                                                                    (not
                                                                    top.res.init_flag!)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.SP3c Bool)
    (top.impl.usr.zz155 Bool)
    (top.impl.usr.zz161 Int)
    (top.impl.usr.zz170 Int)
    (top.impl.usr.zz176 Int)
    (top.impl.usr.zz178 Bool)
    (top.impl.usr.zz183 Bool)
  ) Bool
  
  top.usr.OK
)

(inv-constraint str_invariant init trans prop)

(check-synth)
