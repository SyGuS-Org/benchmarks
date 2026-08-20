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
         ((X6 0))
         (let
          ((X7 (and (and (>= X6 2) (<= X6 8)) (not top.usr.onOff_a_0))))
          (let
           ((X8 (ite (= X6 4) 3 X6)))
           (let
            ((X9 (ite (and (>= X6 3) (<= X6 6)) X8 X6)))
            (let
             ((X10 (ite (= X9 5) 3 X9)))
             (let
              ((X11 (ite (and (>= X6 3) (<= X6 6)) X10 X9)))
              (let
               ((X12 (ite (= X11 6) 3 X11)))
               (let
                ((X13 (ite (and (>= X6 3) (<= X6 6)) X12 X11)))
                (let
                 ((X14 (ite (and (>= X6 3) (<= X6 6)) 2 X13)))
                 (let
                  ((X15 (ite (and (>= X6 2) (<= X6 8)) X14 X6)))
                  (let
                   ((X16 (ite (= X15 7) 2 X15)))
                   (let
                    ((X17 (ite (and (>= X6 2) (<= X6 8)) X16 X15)))
                    (let
                     ((X18 (ite (= X17 8) 2 X17)))
                     (let
                      ((X19 (ite (and (>= X6 2) (<= X6 8)) X18 X17)))
                      (let
                       ((X20 (ite (and (>= X6 2) (<= X6 8)) 0 X19)))
                       (let
                        ((X21 (ite X7 X20 X6)))
                        (let
                         ((X22 (ite (not (= X21 1)) 1 X21)))
                         (let
                          ((X23 (ite X7 X22 X21)))
                          (let
                           ((X24
                             (and
                                   (= X23 1)
                                   (and top.usr.onOff_a_0 (not X7)))))
                           (let
                            ((X25 (ite (= X23 1) 0 X23)))
                            (let
                             ((X26 (ite X24 X25 X23)))
                             (let
                              ((X27
                                (ite
                                     (not (and (>= X26 2) (<= X26 8)))
                                     2
                                     X26)))
                              (let
                               ((X28
                                 (and
                                       (not (and (>= X26 2) (<= X26 8)))
                                       (and (>= X27 2) (<= X27 8)))))
                               (let
                                ((X29 (ite (not (= X27 7)) 7 X27)))
                                (let
                                 ((X30 (ite X28 X29 X27)))
                                 (let
                                  ((X31 (ite X24 X30 X26)))
                                  (let
                                   ((X32
                                     (and
                                           (and (>= X31 3) (<= X31 6))
                                           (not X3))))
                                   (let
                                    ((X33 (ite (= X31 4) 3 X31)))
                                    (let
                                     ((X34
                                       (ite
                                            (and (>= X31 3) (<= X31 6))
                                            X33
                                            X31)))
                                     (let
                                      ((X35 (ite (= X34 5) 3 X34)))
                                      (let
                                       ((X36
                                         (ite
                                              (and (>= X31 3) (<= X31 6))
                                              X35
                                              X34)))
                                       (let
                                        ((X37 (ite (= X36 6) 3 X36)))
                                        (let
                                         ((X38
                                           (ite
                                                (and (>= X31 3) (<= X31 6))
                                                X37
                                                X36)))
                                         (let
                                          ((X39
                                            (ite
                                                 (and (>= X31 3) (<= X31 6))
                                                 2
                                                 X38)))
                                          (let
                                           ((X40 (ite X32 X39 X31)))
                                           (let
                                            ((X41
                                              (ite (not (= X40 8)) 8 X40)))
                                            (let
                                             ((X42 (ite X32 X41 X40)))
                                             (let
                                              ((X43
                                                (and
                                                      (= X42 8)
                                                      (and
                                                       (and
                                                        (not
                                                         (=
                                                          (ite (not X5) 0 1)
                                                          0))
                                                        (not
                                                         (=
                                                          (ite (not X3) 0 1)
                                                          0)))
                                                       (not X32)))))
                                              (let
                                               ((X44
                                                 (ite (= X42 8) 2 X42)))
                                               (let
                                                ((X45 (ite X43 X44 X42)))
                                                (let
                                                 ((X46
                                                   (ite
                                                        (not
                                                         (and
                                                          (>= X45 3)
                                                          (<= X45 6)))
                                                        3
                                                        X45)))
                                                 (let
                                                  ((X47
                                                    (and
                                                          (not
                                                           (and
                                                            (>= X45 3)
                                                            (<= X45 6)))
                                                          (and
                                                           (>= X46 3)
                                                           (<= X46 6)))))
                                                  (let
                                                   ((X48
                                                     (ite
                                                          (not (= X46 4))
                                                          4
                                                          X46)))
                                                   (let
                                                    ((X49
                                                      (ite X47 X48 X46)))
                                                    (and
                                                     (=
                                                      top.usr.OK_a_0
                                                      (or
                                                       (= X49 4)
                                                       (or
                                                        (= X49 5)
                                                        (= X49 6))))
                                                     (let
                                                      ((X50 true))
                                                      (and
                                                       (=
                                                        top.impl.usr.zz178_a_0
                                                        top.usr.accelResume_a_0)
                                                       (let
                                                        ((X51
                                                          (and
                                                                (not X50)
                                                                top.impl.usr.zz178_a_0)))
                                                        (let
                                                         ((X52 0))
                                                         (let
                                                          ((X53
                                                            (+ X52 1)))
                                                          (let
                                                           ((X54
                                                             (ite
                                                                  top.usr.decelSet_a_0
                                                                  X53
                                                                  0)))
                                                           (let
                                                            ((X55
                                                              (ite
                                                                   (>= 0 X54)
                                                                   0
                                                                   X54)))
                                                            (and
                                                             (=
                                                              top.impl.usr.zz176_a_0
                                                              (ite
                                                               (<= X55 20)
                                                               X55
                                                               20))
                                                             (let
                                                              ((X56
                                                                (=
                                                                 top.impl.usr.zz176_a_0
                                                                 20)))
                                                              (let
                                                               ((X57 0))
                                                               (let
                                                                ((X58
                                                                  (+
                                                                   X57
                                                                   1)))
                                                                (let
                                                                 ((X59
                                                                   (ite
                                                                    top.usr.accelResume_a_0
                                                                    X58
                                                                    0)))
                                                                 (let
                                                                  ((X60
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X59)
                                                                    0
                                                                    X59)))
                                                                  (and
                                                                   (=
                                                                    top.impl.usr.zz170_a_0
                                                                    (ite
                                                                    (<=
                                                                    X60
                                                                    20)
                                                                    X60
                                                                    20))
                                                                   (let
                                                                    ((X61
                                                                    (=
                                                                    top.impl.usr.zz170_a_0
                                                                    20)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz155_a_0
                                                                    true)
                                                                    (let
                                                                    ((X62
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X6)))
                                                                    (let
                                                                    ((X63
                                                                    (or
                                                                    X24
                                                                    X7)))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    X43
                                                                    X49
                                                                    X45)))
                                                                    (let
                                                                    ((X65
                                                                    (or
                                                                    X43
                                                                    X32)))
                                                                    (let
                                                                    ((X66
                                                                    (and
                                                                    (= X64 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X51)
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
                                                                    (not X65)))))
                                                                    (let
                                                                    ((X67
                                                                    (ite
                                                                    (= X64 8)
                                                                    2
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    X66
                                                                    X67
                                                                    X64)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X68
                                                                    3)
                                                                    (<=
                                                                    X68
                                                                    6)))
                                                                    3
                                                                    X68)))
                                                                    (let
                                                                    ((X70
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X68
                                                                    3)
                                                                    (<=
                                                                    X68
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X69
                                                                    3)
                                                                    (<=
                                                                    X69
                                                                    6)))))
                                                                    (let
                                                                    ((X71
                                                                    (ite
                                                                    (not
                                                                    (= X69 4))
                                                                    4
                                                                    X69)))
                                                                    (let
                                                                    ((X72
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X69)))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    X66
                                                                    X72
                                                                    X68)))
                                                                    (let
                                                                    ((X74
                                                                    (or
                                                                    X66
                                                                    X65)))
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
                                                                    (not X61)
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
                                                                    (not X56)
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
                                                                    (not X56))
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
                                                                    (not X61))
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
                                                                    (not X63)
                                                                    (and
                                                                    (>=
                                                                    X31
                                                                    2)
                                                                    (<=
                                                                    X31
                                                                    8)))
                                                                    X112
                                                                    X31)))
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
                                                                    X62
                                                                    X113)
                                                                    X6)))
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
         ((X6 top.impl.usr.zz161_a_0))
         (let
          ((X7 (and (and (>= X6 2) (<= X6 8)) (not top.usr.onOff_a_1))))
          (let
           ((X8 (ite (= X6 4) 3 X6)))
           (let
            ((X9 (ite (and (>= X6 3) (<= X6 6)) X8 X6)))
            (let
             ((X10 (ite (= X9 5) 3 X9)))
             (let
              ((X11 (ite (and (>= X6 3) (<= X6 6)) X10 X9)))
              (let
               ((X12 (ite (= X11 6) 3 X11)))
               (let
                ((X13 (ite (and (>= X6 3) (<= X6 6)) X12 X11)))
                (let
                 ((X14 (ite (and (>= X6 3) (<= X6 6)) 2 X13)))
                 (let
                  ((X15 (ite (and (>= X6 2) (<= X6 8)) X14 X6)))
                  (let
                   ((X16 (ite (= X15 7) 2 X15)))
                   (let
                    ((X17 (ite (and (>= X6 2) (<= X6 8)) X16 X15)))
                    (let
                     ((X18 (ite (= X17 8) 2 X17)))
                     (let
                      ((X19 (ite (and (>= X6 2) (<= X6 8)) X18 X17)))
                      (let
                       ((X20 (ite (and (>= X6 2) (<= X6 8)) 0 X19)))
                       (let
                        ((X21 (ite X7 X20 X6)))
                        (let
                         ((X22 (ite (not (= X21 1)) 1 X21)))
                         (let
                          ((X23 (ite X7 X22 X21)))
                          (let
                           ((X24
                             (and
                                   (= X23 1)
                                   (and top.usr.onOff_a_1 (not X7)))))
                           (let
                            ((X25 (ite (= X23 1) 0 X23)))
                            (let
                             ((X26 (ite X24 X25 X23)))
                             (let
                              ((X27
                                (ite
                                     (not (and (>= X26 2) (<= X26 8)))
                                     2
                                     X26)))
                              (let
                               ((X28
                                 (and
                                       (not (and (>= X26 2) (<= X26 8)))
                                       (and (>= X27 2) (<= X27 8)))))
                               (let
                                ((X29 (ite (not (= X27 7)) 7 X27)))
                                (let
                                 ((X30 (ite X28 X29 X27)))
                                 (let
                                  ((X31 (ite X24 X30 X26)))
                                  (let
                                   ((X32
                                     (and
                                           (and (>= X31 3) (<= X31 6))
                                           (not X3))))
                                   (let
                                    ((X33 (ite (= X31 4) 3 X31)))
                                    (let
                                     ((X34
                                       (ite
                                            (and (>= X31 3) (<= X31 6))
                                            X33
                                            X31)))
                                     (let
                                      ((X35 (ite (= X34 5) 3 X34)))
                                      (let
                                       ((X36
                                         (ite
                                              (and (>= X31 3) (<= X31 6))
                                              X35
                                              X34)))
                                       (let
                                        ((X37 (ite (= X36 6) 3 X36)))
                                        (let
                                         ((X38
                                           (ite
                                                (and (>= X31 3) (<= X31 6))
                                                X37
                                                X36)))
                                         (let
                                          ((X39
                                            (ite
                                                 (and (>= X31 3) (<= X31 6))
                                                 2
                                                 X38)))
                                          (let
                                           ((X40 (ite X32 X39 X31)))
                                           (let
                                            ((X41
                                              (ite (not (= X40 8)) 8 X40)))
                                            (let
                                             ((X42 (ite X32 X41 X40)))
                                             (let
                                              ((X43
                                                (and
                                                      (= X42 8)
                                                      (and
                                                       (and
                                                        (not
                                                         (=
                                                          (ite (not X5) 0 1)
                                                          0))
                                                        (not
                                                         (=
                                                          (ite (not X3) 0 1)
                                                          0)))
                                                       (not X32)))))
                                              (let
                                               ((X44
                                                 (ite (= X42 8) 2 X42)))
                                               (let
                                                ((X45 (ite X43 X44 X42)))
                                                (let
                                                 ((X46
                                                   (ite
                                                        (not
                                                         (and
                                                          (>= X45 3)
                                                          (<= X45 6)))
                                                        3
                                                        X45)))
                                                 (let
                                                  ((X47
                                                    (and
                                                          (not
                                                           (and
                                                            (>= X45 3)
                                                            (<= X45 6)))
                                                          (and
                                                           (>= X46 3)
                                                           (<= X46 6)))))
                                                  (let
                                                   ((X48
                                                     (ite
                                                          (not (= X46 4))
                                                          4
                                                          X46)))
                                                   (let
                                                    ((X49
                                                      (ite X47 X48 X46)))
                                                    (and
                                                     (=
                                                      top.usr.OK_a_1
                                                      (or
                                                       (= X49 4)
                                                       (or
                                                        (= X49 5)
                                                        (= X49 6))))
                                                     (let
                                                      ((X50
                                                        top.impl.usr.zz178_a_0))
                                                      (and
                                                       (=
                                                        top.impl.usr.zz178_a_1
                                                        top.usr.accelResume_a_1)
                                                       (let
                                                        ((X51
                                                          (and
                                                                (not X50)
                                                                top.impl.usr.zz178_a_1)))
                                                        (let
                                                         ((X52
                                                           top.impl.usr.zz176_a_0))
                                                         (let
                                                          ((X53
                                                            (+ X52 1)))
                                                          (let
                                                           ((X54
                                                             (ite
                                                                  top.usr.decelSet_a_1
                                                                  X53
                                                                  0)))
                                                           (let
                                                            ((X55
                                                              (ite
                                                                   (>= 0 X54)
                                                                   0
                                                                   X54)))
                                                            (and
                                                             (=
                                                              top.impl.usr.zz176_a_1
                                                              (ite
                                                               (<= X55 20)
                                                               X55
                                                               20))
                                                             (let
                                                              ((X56
                                                                (=
                                                                 top.impl.usr.zz176_a_1
                                                                 20)))
                                                              (let
                                                               ((X57
                                                                 top.impl.usr.zz170_a_0))
                                                               (let
                                                                ((X58
                                                                  (+
                                                                   X57
                                                                   1)))
                                                                (let
                                                                 ((X59
                                                                   (ite
                                                                    top.usr.accelResume_a_1
                                                                    X58
                                                                    0)))
                                                                 (let
                                                                  ((X60
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X59)
                                                                    0
                                                                    X59)))
                                                                  (and
                                                                   (=
                                                                    top.impl.usr.zz170_a_1
                                                                    (ite
                                                                    (<=
                                                                    X60
                                                                    20)
                                                                    X60
                                                                    20))
                                                                   (let
                                                                    ((X61
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
                                                                    ((X62
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X6)))
                                                                    (let
                                                                    ((X63
                                                                    (or
                                                                    X24
                                                                    X7)))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    X43
                                                                    X49
                                                                    X45)))
                                                                    (let
                                                                    ((X65
                                                                    (or
                                                                    X43
                                                                    X32)))
                                                                    (let
                                                                    ((X66
                                                                    (and
                                                                    (= X64 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X51)
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
                                                                    (not X65)))))
                                                                    (let
                                                                    ((X67
                                                                    (ite
                                                                    (= X64 8)
                                                                    2
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    X66
                                                                    X67
                                                                    X64)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X68
                                                                    3)
                                                                    (<=
                                                                    X68
                                                                    6)))
                                                                    3
                                                                    X68)))
                                                                    (let
                                                                    ((X70
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X68
                                                                    3)
                                                                    (<=
                                                                    X68
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X69
                                                                    3)
                                                                    (<=
                                                                    X69
                                                                    6)))))
                                                                    (let
                                                                    ((X71
                                                                    (ite
                                                                    (not
                                                                    (= X69 4))
                                                                    4
                                                                    X69)))
                                                                    (let
                                                                    ((X72
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X69)))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    X66
                                                                    X72
                                                                    X68)))
                                                                    (let
                                                                    ((X74
                                                                    (or
                                                                    X66
                                                                    X65)))
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
                                                                    (not X61)
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
                                                                    (not X56)
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
                                                                    (not X56))
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
                                                                    (not X61))
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
                                                                    (not X63)
                                                                    (and
                                                                    (>=
                                                                    X31
                                                                    2)
                                                                    (<=
                                                                    X31
                                                                    8)))
                                                                    X112
                                                                    X31)))
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
                                                                    X62
                                                                    X113)
                                                                    X6)))
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
         ((X6 0))
         (let
          ((X7 (and (and (>= X6 2) (<= X6 8)) (not top.usr.onOff))))
          (let
           ((X8 (ite (= X6 4) 3 X6)))
           (let
            ((X9 (ite (and (>= X6 3) (<= X6 6)) X8 X6)))
            (let
             ((X10 (ite (= X9 5) 3 X9)))
             (let
              ((X11 (ite (and (>= X6 3) (<= X6 6)) X10 X9)))
              (let
               ((X12 (ite (= X11 6) 3 X11)))
               (let
                ((X13 (ite (and (>= X6 3) (<= X6 6)) X12 X11)))
                (let
                 ((X14 (ite (and (>= X6 3) (<= X6 6)) 2 X13)))
                 (let
                  ((X15 (ite (and (>= X6 2) (<= X6 8)) X14 X6)))
                  (let
                   ((X16 (ite (= X15 7) 2 X15)))
                   (let
                    ((X17 (ite (and (>= X6 2) (<= X6 8)) X16 X15)))
                    (let
                     ((X18 (ite (= X17 8) 2 X17)))
                     (let
                      ((X19 (ite (and (>= X6 2) (<= X6 8)) X18 X17)))
                      (let
                       ((X20 (ite (and (>= X6 2) (<= X6 8)) 0 X19)))
                       (let
                        ((X21 (ite X7 X20 X6)))
                        (let
                         ((X22 (ite (not (= X21 1)) 1 X21)))
                         (let
                          ((X23 (ite X7 X22 X21)))
                          (let
                           ((X24
                             (and
                                   (= X23 1)
                                   (and top.usr.onOff (not X7)))))
                           (let
                            ((X25 (ite (= X23 1) 0 X23)))
                            (let
                             ((X26 (ite X24 X25 X23)))
                             (let
                              ((X27
                                (ite
                                     (not (and (>= X26 2) (<= X26 8)))
                                     2
                                     X26)))
                              (let
                               ((X28
                                 (and
                                       (not (and (>= X26 2) (<= X26 8)))
                                       (and (>= X27 2) (<= X27 8)))))
                               (let
                                ((X29 (ite (not (= X27 7)) 7 X27)))
                                (let
                                 ((X30 (ite X28 X29 X27)))
                                 (let
                                  ((X31 (ite X24 X30 X26)))
                                  (let
                                   ((X32
                                     (and
                                           (and (>= X31 3) (<= X31 6))
                                           (not X3))))
                                   (let
                                    ((X33 (ite (= X31 4) 3 X31)))
                                    (let
                                     ((X34
                                       (ite
                                            (and (>= X31 3) (<= X31 6))
                                            X33
                                            X31)))
                                     (let
                                      ((X35 (ite (= X34 5) 3 X34)))
                                      (let
                                       ((X36
                                         (ite
                                              (and (>= X31 3) (<= X31 6))
                                              X35
                                              X34)))
                                       (let
                                        ((X37 (ite (= X36 6) 3 X36)))
                                        (let
                                         ((X38
                                           (ite
                                                (and (>= X31 3) (<= X31 6))
                                                X37
                                                X36)))
                                         (let
                                          ((X39
                                            (ite
                                                 (and (>= X31 3) (<= X31 6))
                                                 2
                                                 X38)))
                                          (let
                                           ((X40 (ite X32 X39 X31)))
                                           (let
                                            ((X41
                                              (ite (not (= X40 8)) 8 X40)))
                                            (let
                                             ((X42 (ite X32 X41 X40)))
                                             (let
                                              ((X43
                                                (and
                                                      (= X42 8)
                                                      (and
                                                       (and
                                                        (not
                                                         (=
                                                          (ite (not X5) 0 1)
                                                          0))
                                                        (not
                                                         (=
                                                          (ite (not X3) 0 1)
                                                          0)))
                                                       (not X32)))))
                                              (let
                                               ((X44
                                                 (ite (= X42 8) 2 X42)))
                                               (let
                                                ((X45 (ite X43 X44 X42)))
                                                (let
                                                 ((X46
                                                   (ite
                                                        (not
                                                         (and
                                                          (>= X45 3)
                                                          (<= X45 6)))
                                                        3
                                                        X45)))
                                                 (let
                                                  ((X47
                                                    (and
                                                          (not
                                                           (and
                                                            (>= X45 3)
                                                            (<= X45 6)))
                                                          (and
                                                           (>= X46 3)
                                                           (<= X46 6)))))
                                                  (let
                                                   ((X48
                                                     (ite
                                                          (not (= X46 4))
                                                          4
                                                          X46)))
                                                   (let
                                                    ((X49
                                                      (ite X47 X48 X46)))
                                                    (and
                                                     (=
                                                      top.usr.OK
                                                      (or
                                                       (= X49 4)
                                                       (or
                                                        (= X49 5)
                                                        (= X49 6))))
                                                     (let
                                                      ((X50 true))
                                                      (and
                                                       (=
                                                        top.impl.usr.zz178
                                                        top.usr.accelResume)
                                                       (let
                                                        ((X51
                                                          (and
                                                                (not X50)
                                                                top.impl.usr.zz178)))
                                                        (let
                                                         ((X52 0))
                                                         (let
                                                          ((X53
                                                            (+ X52 1)))
                                                          (let
                                                           ((X54
                                                             (ite
                                                                  top.usr.decelSet
                                                                  X53
                                                                  0)))
                                                           (let
                                                            ((X55
                                                              (ite
                                                                   (>= 0 X54)
                                                                   0
                                                                   X54)))
                                                            (and
                                                             (=
                                                              top.impl.usr.zz176
                                                              (ite
                                                               (<= X55 20)
                                                               X55
                                                               20))
                                                             (let
                                                              ((X56
                                                                (=
                                                                 top.impl.usr.zz176
                                                                 20)))
                                                              (let
                                                               ((X57 0))
                                                               (let
                                                                ((X58
                                                                  (+
                                                                   X57
                                                                   1)))
                                                                (let
                                                                 ((X59
                                                                   (ite
                                                                    top.usr.accelResume
                                                                    X58
                                                                    0)))
                                                                 (let
                                                                  ((X60
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X59)
                                                                    0
                                                                    X59)))
                                                                  (and
                                                                   (=
                                                                    top.impl.usr.zz170
                                                                    (ite
                                                                    (<=
                                                                    X60
                                                                    20)
                                                                    X60
                                                                    20))
                                                                   (let
                                                                    ((X61
                                                                    (=
                                                                    top.impl.usr.zz170
                                                                    20)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz155
                                                                    true)
                                                                    (let
                                                                    ((X62
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X6)))
                                                                    (let
                                                                    ((X63
                                                                    (or
                                                                    X24
                                                                    X7)))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    X43
                                                                    X49
                                                                    X45)))
                                                                    (let
                                                                    ((X65
                                                                    (or
                                                                    X43
                                                                    X32)))
                                                                    (let
                                                                    ((X66
                                                                    (and
                                                                    (= X64 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X51)
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
                                                                    (not X65)))))
                                                                    (let
                                                                    ((X67
                                                                    (ite
                                                                    (= X64 8)
                                                                    2
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    X66
                                                                    X67
                                                                    X64)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X68
                                                                    3)
                                                                    (<=
                                                                    X68
                                                                    6)))
                                                                    3
                                                                    X68)))
                                                                    (let
                                                                    ((X70
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X68
                                                                    3)
                                                                    (<=
                                                                    X68
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X69
                                                                    3)
                                                                    (<=
                                                                    X69
                                                                    6)))))
                                                                    (let
                                                                    ((X71
                                                                    (ite
                                                                    (not
                                                                    (= X69 4))
                                                                    4
                                                                    X69)))
                                                                    (let
                                                                    ((X72
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X69)))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    X66
                                                                    X72
                                                                    X68)))
                                                                    (let
                                                                    ((X74
                                                                    (or
                                                                    X66
                                                                    X65)))
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
                                                                    (not X61)
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
                                                                    (not X56)
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
                                                                    (not X56))
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
                                                                    (not X61))
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
                                                                    (not X63)
                                                                    (and
                                                                    (>=
                                                                    X31
                                                                    2)
                                                                    (<=
                                                                    X31
                                                                    8)))
                                                                    X112
                                                                    X31)))
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
                                                                    X62
                                                                    X113)
                                                                    X6)))
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
         ((X6 top.impl.usr.zz161))
         (let
          ((X7 (and (and (>= X6 2) (<= X6 8)) (not top.usr.onOff!))))
          (let
           ((X8 (ite (= X6 4) 3 X6)))
           (let
            ((X9 (ite (and (>= X6 3) (<= X6 6)) X8 X6)))
            (let
             ((X10 (ite (= X9 5) 3 X9)))
             (let
              ((X11 (ite (and (>= X6 3) (<= X6 6)) X10 X9)))
              (let
               ((X12 (ite (= X11 6) 3 X11)))
               (let
                ((X13 (ite (and (>= X6 3) (<= X6 6)) X12 X11)))
                (let
                 ((X14 (ite (and (>= X6 3) (<= X6 6)) 2 X13)))
                 (let
                  ((X15 (ite (and (>= X6 2) (<= X6 8)) X14 X6)))
                  (let
                   ((X16 (ite (= X15 7) 2 X15)))
                   (let
                    ((X17 (ite (and (>= X6 2) (<= X6 8)) X16 X15)))
                    (let
                     ((X18 (ite (= X17 8) 2 X17)))
                     (let
                      ((X19 (ite (and (>= X6 2) (<= X6 8)) X18 X17)))
                      (let
                       ((X20 (ite (and (>= X6 2) (<= X6 8)) 0 X19)))
                       (let
                        ((X21 (ite X7 X20 X6)))
                        (let
                         ((X22 (ite (not (= X21 1)) 1 X21)))
                         (let
                          ((X23 (ite X7 X22 X21)))
                          (let
                           ((X24
                             (and
                                   (= X23 1)
                                   (and top.usr.onOff! (not X7)))))
                           (let
                            ((X25 (ite (= X23 1) 0 X23)))
                            (let
                             ((X26 (ite X24 X25 X23)))
                             (let
                              ((X27
                                (ite
                                     (not (and (>= X26 2) (<= X26 8)))
                                     2
                                     X26)))
                              (let
                               ((X28
                                 (and
                                       (not (and (>= X26 2) (<= X26 8)))
                                       (and (>= X27 2) (<= X27 8)))))
                               (let
                                ((X29 (ite (not (= X27 7)) 7 X27)))
                                (let
                                 ((X30 (ite X28 X29 X27)))
                                 (let
                                  ((X31 (ite X24 X30 X26)))
                                  (let
                                   ((X32
                                     (and
                                           (and (>= X31 3) (<= X31 6))
                                           (not X3))))
                                   (let
                                    ((X33 (ite (= X31 4) 3 X31)))
                                    (let
                                     ((X34
                                       (ite
                                            (and (>= X31 3) (<= X31 6))
                                            X33
                                            X31)))
                                     (let
                                      ((X35 (ite (= X34 5) 3 X34)))
                                      (let
                                       ((X36
                                         (ite
                                              (and (>= X31 3) (<= X31 6))
                                              X35
                                              X34)))
                                       (let
                                        ((X37 (ite (= X36 6) 3 X36)))
                                        (let
                                         ((X38
                                           (ite
                                                (and (>= X31 3) (<= X31 6))
                                                X37
                                                X36)))
                                         (let
                                          ((X39
                                            (ite
                                                 (and (>= X31 3) (<= X31 6))
                                                 2
                                                 X38)))
                                          (let
                                           ((X40 (ite X32 X39 X31)))
                                           (let
                                            ((X41
                                              (ite (not (= X40 8)) 8 X40)))
                                            (let
                                             ((X42 (ite X32 X41 X40)))
                                             (let
                                              ((X43
                                                (and
                                                      (= X42 8)
                                                      (and
                                                       (and
                                                        (not
                                                         (=
                                                          (ite (not X5) 0 1)
                                                          0))
                                                        (not
                                                         (=
                                                          (ite (not X3) 0 1)
                                                          0)))
                                                       (not X32)))))
                                              (let
                                               ((X44
                                                 (ite (= X42 8) 2 X42)))
                                               (let
                                                ((X45 (ite X43 X44 X42)))
                                                (let
                                                 ((X46
                                                   (ite
                                                        (not
                                                         (and
                                                          (>= X45 3)
                                                          (<= X45 6)))
                                                        3
                                                        X45)))
                                                 (let
                                                  ((X47
                                                    (and
                                                          (not
                                                           (and
                                                            (>= X45 3)
                                                            (<= X45 6)))
                                                          (and
                                                           (>= X46 3)
                                                           (<= X46 6)))))
                                                  (let
                                                   ((X48
                                                     (ite
                                                          (not (= X46 4))
                                                          4
                                                          X46)))
                                                   (let
                                                    ((X49
                                                      (ite X47 X48 X46)))
                                                    (and
                                                     (=
                                                      top.usr.OK!
                                                      (or
                                                       (= X49 4)
                                                       (or
                                                        (= X49 5)
                                                        (= X49 6))))
                                                     (let
                                                      ((X50
                                                        top.impl.usr.zz178))
                                                      (and
                                                       (=
                                                        top.impl.usr.zz178!
                                                        top.usr.accelResume!)
                                                       (let
                                                        ((X51
                                                          (and
                                                                (not X50)
                                                                top.impl.usr.zz178!)))
                                                        (let
                                                         ((X52
                                                           top.impl.usr.zz176))
                                                         (let
                                                          ((X53
                                                            (+ X52 1)))
                                                          (let
                                                           ((X54
                                                             (ite
                                                                  top.usr.decelSet!
                                                                  X53
                                                                  0)))
                                                           (let
                                                            ((X55
                                                              (ite
                                                                   (>= 0 X54)
                                                                   0
                                                                   X54)))
                                                            (and
                                                             (=
                                                              top.impl.usr.zz176!
                                                              (ite
                                                               (<= X55 20)
                                                               X55
                                                               20))
                                                             (let
                                                              ((X56
                                                                (=
                                                                 top.impl.usr.zz176!
                                                                 20)))
                                                              (let
                                                               ((X57
                                                                 top.impl.usr.zz170))
                                                               (let
                                                                ((X58
                                                                  (+
                                                                   X57
                                                                   1)))
                                                                (let
                                                                 ((X59
                                                                   (ite
                                                                    top.usr.accelResume!
                                                                    X58
                                                                    0)))
                                                                 (let
                                                                  ((X60
                                                                    (ite
                                                                    (>=
                                                                    0
                                                                    X59)
                                                                    0
                                                                    X59)))
                                                                  (and
                                                                   (=
                                                                    top.impl.usr.zz170!
                                                                    (ite
                                                                    (<=
                                                                    X60
                                                                    20)
                                                                    X60
                                                                    20))
                                                                   (let
                                                                    ((X61
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
                                                                    ((X62
                                                                    (ite
                                                                    (not
                                                                    (= X6 1))
                                                                    1
                                                                    X6)))
                                                                    (let
                                                                    ((X63
                                                                    (or
                                                                    X24
                                                                    X7)))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    X43
                                                                    X49
                                                                    X45)))
                                                                    (let
                                                                    ((X65
                                                                    (or
                                                                    X43
                                                                    X32)))
                                                                    (let
                                                                    ((X66
                                                                    (and
                                                                    (= X64 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X51)
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
                                                                    (not X65)))))
                                                                    (let
                                                                    ((X67
                                                                    (ite
                                                                    (= X64 8)
                                                                    2
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    X66
                                                                    X67
                                                                    X64)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X68
                                                                    3)
                                                                    (<=
                                                                    X68
                                                                    6)))
                                                                    3
                                                                    X68)))
                                                                    (let
                                                                    ((X70
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X68
                                                                    3)
                                                                    (<=
                                                                    X68
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X69
                                                                    3)
                                                                    (<=
                                                                    X69
                                                                    6)))))
                                                                    (let
                                                                    ((X71
                                                                    (ite
                                                                    (not
                                                                    (= X69 4))
                                                                    4
                                                                    X69)))
                                                                    (let
                                                                    ((X72
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X69)))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    X66
                                                                    X72
                                                                    X68)))
                                                                    (let
                                                                    ((X74
                                                                    (or
                                                                    X66
                                                                    X65)))
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
                                                                    (not X61)
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
                                                                    (not X56)
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
                                                                    (not X56))
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
                                                                    (not X61))
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
                                                                    (not X63)
                                                                    (and
                                                                    (>=
                                                                    X31
                                                                    2)
                                                                    (<=
                                                                    X31
                                                                    8)))
                                                                    X112
                                                                    X31)))
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
                                                                    X62
                                                                    X113)
                                                                    X6)))
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
