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
    (top.impl.usr.SP3c_a_0 Bool)
    (top.impl.usr.zz155_a_0 Bool)
    (top.impl.usr.zz161_a_0 Int)
    (top.impl.usr.zz162_a_0 Bool)
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
             ((X9 (+ X8 1)))
             (let
              ((X10 (ite top.usr.decelSet_a_0 X9 0)))
              (let
               ((X11 (ite (>= 0 X10) 0 X10)))
               (and
                (= top.impl.usr.zz176_a_0 (ite (<= X11 20) X11 20))
                (let
                 ((X12 (= top.impl.usr.zz176_a_0 20)))
                 (let
                  ((X13 0))
                  (let
                   ((X14 (+ X13 1)))
                   (let
                    ((X15 (ite top.usr.accelResume_a_0 X14 0)))
                    (let
                     ((X16 (ite (>= 0 X15) 0 X15)))
                     (and
                      (= top.impl.usr.zz170_a_0 (ite (<= X16 20) X16 20))
                      (let
                       ((X17 (= top.impl.usr.zz170_a_0 20)))
                       (let
                        ((X18 0))
                        (let
                         ((X19 0))
                         (and
                          (= top.impl.usr.zz155_a_0 true)
                          (let
                           ((X20 (ite (not (= X19 1)) 1 X18)))
                           (let
                            ((X21
                              (and
                                    (and (>= X19 2) (<= X19 8))
                                    (not top.usr.onOff_a_0))))
                            (let
                             ((X22 (ite (= X19 4) 3 X19)))
                             (let
                              ((X23
                                (ite (and (>= X19 3) (<= X19 6)) X22 X19)))
                              (let
                               ((X24 (ite (= X23 5) 3 X23)))
                               (let
                                ((X25
                                  (ite
                                       (and (>= X19 3) (<= X19 6))
                                       X24
                                       X23)))
                                (let
                                 ((X26 (ite (= X25 6) 3 X25)))
                                 (let
                                  ((X27
                                    (ite
                                         (and (>= X19 3) (<= X19 6))
                                         X26
                                         X25)))
                                  (let
                                   ((X28
                                     (ite
                                          (and (>= X19 3) (<= X19 6))
                                          2
                                          X27)))
                                   (let
                                    ((X29
                                      (ite
                                           (and (>= X19 2) (<= X19 8))
                                           X28
                                           X19)))
                                    (let
                                     ((X30 (ite (= X29 7) 2 X29)))
                                     (let
                                      ((X31
                                        (ite
                                             (and (>= X19 2) (<= X19 8))
                                             X30
                                             X29)))
                                      (let
                                       ((X32 (ite (= X31 8) 2 X31)))
                                       (let
                                        ((X33
                                          (ite
                                               (and (>= X19 2) (<= X19 8))
                                               X32
                                               X31)))
                                        (let
                                         ((X34
                                           (ite
                                                (and (>= X19 2) (<= X19 8))
                                                0
                                                X33)))
                                         (let
                                          ((X35 (ite X21 X34 X19)))
                                          (let
                                           ((X36
                                             (ite (not (= X35 1)) 1 X35)))
                                           (let
                                            ((X37 (ite X21 X36 X35)))
                                            (let
                                             ((X38
                                               (and
                                                     (= X37 1)
                                                     (and
                                                      top.usr.onOff_a_0
                                                      (not X21)))))
                                             (let
                                              ((X39
                                                (ite (= X37 1) 0 X37)))
                                              (let
                                               ((X40 (ite X38 X39 X37)))
                                               (let
                                                ((X41
                                                  (ite
                                                       (not (= X35 1))
                                                       1
                                                       X18)))
                                                (let
                                                 ((X42 (ite X21 X41 X18)))
                                                 (let
                                                  ((X43
                                                    (ite
                                                         (not
                                                          (and
                                                           (>= X40 2)
                                                           (<= X40 8)))
                                                         2
                                                         X40)))
                                                  (let
                                                   ((X44
                                                     (and
                                                           (not
                                                            (and
                                                             (>= X40 2)
                                                             (<= X40 8)))
                                                           (and
                                                            (>= X43 2)
                                                            (<= X43 8)))))
                                                   (let
                                                    ((X45
                                                      (ite
                                                           (not (= X43 7))
                                                           2
                                                           X42)))
                                                    (let
                                                     ((X46
                                                       (ite X44 X45 X42)))
                                                     (let
                                                      ((X47
                                                        (ite X38 X46 X42)))
                                                      (let
                                                       ((X48
                                                         (ite
                                                              (not (= X43 7))
                                                              7
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          (ite
                                                               X44
                                                               X48
                                                               X43)))
                                                        (let
                                                         ((X50
                                                           (ite
                                                                X38
                                                                X49
                                                                X40)))
                                                         (let
                                                          ((X51
                                                            (or X38 X21)))
                                                          (let
                                                           ((X52
                                                             (and
                                                                   (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                   (not X3))))
                                                           (let
                                                            ((X53
                                                              (ite
                                                                   (= X50 4)
                                                                   3
                                                                   X50)))
                                                            (let
                                                             ((X54
                                                               (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X53
                                                                    X50)))
                                                             (let
                                                              ((X55
                                                                (ite
                                                                    (= X54 5)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 (ite
                                                                  (and
                                                                   (>= X50 3)
                                                                   (<= X50 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X57
                                                                    X56)))
                                                                 (let
                                                                  ((X59
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    2
                                                                    X58)))
                                                                  (let
                                                                   ((X60
                                                                    (ite
                                                                    X52
                                                                    X59
                                                                    X50)))
                                                                   (let
                                                                    ((X61
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    8
                                                                    X60)))
                                                                    (let
                                                                    ((X62
                                                                    (ite
                                                                    X52
                                                                    X61
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    (and
                                                                    (= X62 8)
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
                                                                    (not X52)))))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    (= X62 8)
                                                                    2
                                                                    X62)))
                                                                    (let
                                                                    ((X65
                                                                    (ite
                                                                    X63
                                                                    X64
                                                                    X62)))
                                                                    (let
                                                                    ((X66
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X65
                                                                    3)
                                                                    (<=
                                                                    X65
                                                                    6)))
                                                                    3
                                                                    X65)))
                                                                    (let
                                                                    ((X67
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X65
                                                                    3)
                                                                    (<=
                                                                    X65
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X66)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    X67
                                                                    X68
                                                                    X66)))
                                                                    (let
                                                                    ((X70
                                                                    (ite
                                                                    X63
                                                                    X69
                                                                    X65)))
                                                                    (let
                                                                    ((X71
                                                                    (or
                                                                    X63
                                                                    X52)))
                                                                    (let
                                                                    ((X72
                                                                    (and
                                                                    (= X70 8)
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
                                                                    (not X71)))))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    (= X70 8)
                                                                    2
                                                                    X70)))
                                                                    (let
                                                                    ((X74
                                                                    (ite
                                                                    X72
                                                                    X73
                                                                    X70)))
                                                                    (let
                                                                    ((X75
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X74
                                                                    3)
                                                                    (<=
                                                                    X74
                                                                    6)))
                                                                    3
                                                                    X74)))
                                                                    (let
                                                                    ((X76
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X74
                                                                    3)
                                                                    (<=
                                                                    X74
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))))
                                                                    (let
                                                                    ((X77
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    (ite
                                                                    X76
                                                                    X77
                                                                    X75)))
                                                                    (let
                                                                    ((X79
                                                                    (ite
                                                                    X72
                                                                    X78
                                                                    X74)))
                                                                    (let
                                                                    ((X80
                                                                    (or
                                                                    X72
                                                                    X71)))
                                                                    (let
                                                                    ((X81
                                                                    (and
                                                                    (= X79 7)
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
                                                                    (not X80)))))
                                                                    (let
                                                                    ((X82
                                                                    (ite
                                                                    (= X79 7)
                                                                    2
                                                                    X79)))
                                                                    (let
                                                                    ((X83
                                                                    (ite
                                                                    X81
                                                                    X82
                                                                    X79)))
                                                                    (let
                                                                    ((X84
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    3
                                                                    X47)))
                                                                    (let
                                                                    ((X85
                                                                    (ite
                                                                    X52
                                                                    X84
                                                                    X47)))
                                                                    (let
                                                                    ((X86
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X85)))
                                                                    (let
                                                                    ((X87
                                                                    (ite
                                                                    X67
                                                                    X86
                                                                    X85)))
                                                                    (let
                                                                    ((X88
                                                                    (ite
                                                                    X63
                                                                    X87
                                                                    X85)))
                                                                    (let
                                                                    ((X89
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X88)))
                                                                    (let
                                                                    ((X90
                                                                    (ite
                                                                    X76
                                                                    X89
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    (ite
                                                                    X72
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X83
                                                                    3)
                                                                    (<=
                                                                    X83
                                                                    6)))
                                                                    3
                                                                    X83)))
                                                                    (let
                                                                    ((X93
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X83
                                                                    3)
                                                                    (<=
                                                                    X83
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X92
                                                                    3)
                                                                    (<=
                                                                    X92
                                                                    6)))))
                                                                    (let
                                                                    ((X94
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X91)))
                                                                    (let
                                                                    ((X95
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X91)))
                                                                    (let
                                                                    ((X96
                                                                    (ite
                                                                    X81
                                                                    X95
                                                                    X91)))
                                                                    (let
                                                                    ((X97
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    (ite
                                                                    X93
                                                                    X97
                                                                    X92)))
                                                                    (let
                                                                    ((X99
                                                                    (ite
                                                                    X81
                                                                    X98
                                                                    X83)))
                                                                    (let
                                                                    ((X100
                                                                    (or
                                                                    X81
                                                                    X80)))
                                                                    (let
                                                                    ((X101
                                                                    (and
                                                                    (= X99 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X102
                                                                    (ite
                                                                    (= X99 4)
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
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X17)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X101)))))
                                                                    (let
                                                                    ((X107
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X108
                                                                    (ite
                                                                    X106
                                                                    X107
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    5
                                                                    X108)))
                                                                    (let
                                                                    ((X110
                                                                    (ite
                                                                    X106
                                                                    X109
                                                                    X108)))
                                                                    (let
                                                                    ((X111
                                                                    (or
                                                                    X106
                                                                    X101)))
                                                                    (let
                                                                    ((X112
                                                                    (and
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X12)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X111)))))
                                                                    (let
                                                                    ((X113
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    3
                                                                    X110)))
                                                                    (let
                                                                    ((X114
                                                                    (ite
                                                                    X112
                                                                    X113
                                                                    X110)))
                                                                    (let
                                                                    ((X115
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    6
                                                                    X114)))
                                                                    (let
                                                                    ((X116
                                                                    (ite
                                                                    X112
                                                                    X115
                                                                    X114)))
                                                                    (let
                                                                    ((X117
                                                                    (or
                                                                    X112
                                                                    X111)))
                                                                    (let
                                                                    ((X118
                                                                    (and
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X12))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X117)))))
                                                                    (let
                                                                    ((X119
                                                                    (ite
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    3
                                                                    X116)))
                                                                    (let
                                                                    ((X120
                                                                    (ite
                                                                    X118
                                                                    X119
                                                                    X116)))
                                                                    (let
                                                                    ((X121
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X120)))
                                                                    (let
                                                                    ((X122
                                                                    (ite
                                                                    X118
                                                                    X121
                                                                    X120)))
                                                                    (let
                                                                    ((X123
                                                                    (or
                                                                    X118
                                                                    X117)))
                                                                    (let
                                                                    ((X124
                                                                    (and
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X17))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X123)))))
                                                                    (let
                                                                    ((X125
                                                                    (ite
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    3
                                                                    X122)))
                                                                    (let
                                                                    ((X126
                                                                    (ite
                                                                    X124
                                                                    X125
                                                                    X122)))
                                                                    (let
                                                                    ((X127
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X96)))
                                                                    (let
                                                                    ((X128
                                                                    (ite
                                                                    X101
                                                                    X127
                                                                    X96)))
                                                                    (let
                                                                    ((X129
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    6
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    (ite
                                                                    X106
                                                                    X129
                                                                    X128)))
                                                                    (let
                                                                    ((X131
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    5
                                                                    X130)))
                                                                    (let
                                                                    ((X132
                                                                    (ite
                                                                    X112
                                                                    X131
                                                                    X130)))
                                                                    (let
                                                                    ((X133
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X132)))
                                                                    (let
                                                                    ((X134
                                                                    (ite
                                                                    X118
                                                                    X133
                                                                    X132)))
                                                                    (let
                                                                    ((X135
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X134)))
                                                                    (let
                                                                    ((X136
                                                                    (ite
                                                                    X124
                                                                    X135
                                                                    X134)))
                                                                    (let
                                                                    ((X137
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X136
                                                                    X96)))
                                                                    (let
                                                                    ((X138
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X137
                                                                    X47)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c_a_0
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    (ite
                                                                    top.impl.usr.zz155_a_0
                                                                    X20
                                                                    X138)
                                                                    X18))
                                                                    (let
                                                                    ((X139
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    6)))
                                                                    (let
                                                                    ((X140
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    5)))
                                                                    (let
                                                                    ((X141
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    4)))
                                                                    (let
                                                                    ((X142
                                                                    (or
                                                                    (or
                                                                    X141
                                                                    X140)
                                                                    X139)))
                                                                    (let
                                                                    ((X143
                                                                    false))
                                                                    (let
                                                                    ((X144
                                                                    (ite
                                                                    (= X19 4)
                                                                    false
                                                                    X143)))
                                                                    (let
                                                                    ((X145
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X19
                                                                    3)
                                                                    (<=
                                                                    X19
                                                                    6))
                                                                    X144
                                                                    X143)))
                                                                    (let
                                                                    ((X146
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X19
                                                                    2)
                                                                    (<=
                                                                    X19
                                                                    8))
                                                                    X145
                                                                    X143)))
                                                                    (let
                                                                    ((X147
                                                                    (ite
                                                                    X21
                                                                    X146
                                                                    X143)))
                                                                    (let
                                                                    ((X148
                                                                    (ite
                                                                    (= X50 4)
                                                                    false
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X148
                                                                    X147)))
                                                                    (let
                                                                    ((X150
                                                                    (ite
                                                                    X52
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    (ite
                                                                    X63
                                                                    true
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    (ite
                                                                    X81
                                                                    true
                                                                    X151)))
                                                                    (let
                                                                    ((X153
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X126)))
                                                                    (let
                                                                    ((X154
                                                                    (ite
                                                                    X124
                                                                    X153
                                                                    X126)))
                                                                    (let
                                                                    ((X155
                                                                    (or
                                                                    X124
                                                                    X123)))
                                                                    (let
                                                                    ((X156
                                                                    (ite
                                                                    (= X99 4)
                                                                    false
                                                                    X152)))
                                                                    (let
                                                                    ((X157
                                                                    (ite
                                                                    X101
                                                                    X156
                                                                    X152)))
                                                                    (let
                                                                    ((X158
                                                                    (ite
                                                                    X101
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    false
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    (ite
                                                                    X106
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    false
                                                                    X160)))
                                                                    (let
                                                                    ((X162
                                                                    (ite
                                                                    X112
                                                                    X161
                                                                    X160)))
                                                                    (let
                                                                    ((X163
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X155)
                                                                    (=
                                                                    X154
                                                                    4))
                                                                    false
                                                                    X162)))
                                                                    (let
                                                                    ((X164
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X163
                                                                    X152)))
                                                                    (let
                                                                    ((X165
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X164
                                                                    X147)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz162_a_0
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    (ite
                                                                    top.impl.usr.zz155_a_0
                                                                    X143
                                                                    X165)
                                                                    X143))
                                                                    (=
                                                                    top.usr.OK_a_0
                                                                    (or
                                                                    (not
                                                                    top.impl.usr.zz162_a_0)
                                                                    X142))
                                                                    (let
                                                                    ((X166
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X167
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X154
                                                                    X99)))
                                                                    (let
                                                                    ((X168
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X167
                                                                    X50)))
                                                                    (let
                                                                    ((X169
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    (ite
                                                                    top.impl.usr.zz155_a_0
                                                                    X166
                                                                    X168)
                                                                    X19)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161_a_0
                                                                    X169)
                                                                    top.res.init_flag_a_0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.SP3c_a_1 Bool)
    (top.impl.usr.zz155_a_1 Bool)
    (top.impl.usr.zz161_a_1 Int)
    (top.impl.usr.zz162_a_1 Bool)
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
    (top.impl.usr.mode_a_0 Int)
    (top.impl.usr.SP3c_a_0 Bool)
    (top.impl.usr.zz155_a_0 Bool)
    (top.impl.usr.zz161_a_0 Int)
    (top.impl.usr.zz162_a_0 Bool)
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
            ((X8 top.impl.usr.zz176_a_0))
            (let
             ((X9 (+ X8 1)))
             (let
              ((X10 (ite top.usr.decelSet_a_1 X9 0)))
              (let
               ((X11 (ite (>= 0 X10) 0 X10)))
               (and
                (= top.impl.usr.zz176_a_1 (ite (<= X11 20) X11 20))
                (let
                 ((X12 (= top.impl.usr.zz176_a_1 20)))
                 (let
                  ((X13 top.impl.usr.zz170_a_0))
                  (let
                   ((X14 (+ X13 1)))
                   (let
                    ((X15 (ite top.usr.accelResume_a_1 X14 0)))
                    (let
                     ((X16 (ite (>= 0 X15) 0 X15)))
                     (and
                      (= top.impl.usr.zz170_a_1 (ite (<= X16 20) X16 20))
                      (let
                       ((X17 (= top.impl.usr.zz170_a_1 20)))
                       (let
                        ((X18 top.impl.usr.mode_a_0))
                        (let
                         ((X19 top.impl.usr.zz161_a_0))
                         (and
                          (=
                           top.impl.usr.zz155_a_1
                           (ite
                            top.impl.usr.SP3c_a_0
                            false
                            top.impl.usr.zz155_a_0))
                          (let
                           ((X20 (ite (not (= X19 1)) 1 X18)))
                           (let
                            ((X21
                              (and
                                    (and (>= X19 2) (<= X19 8))
                                    (not top.usr.onOff_a_1))))
                            (let
                             ((X22 (ite (= X19 4) 3 X19)))
                             (let
                              ((X23
                                (ite (and (>= X19 3) (<= X19 6)) X22 X19)))
                              (let
                               ((X24 (ite (= X23 5) 3 X23)))
                               (let
                                ((X25
                                  (ite
                                       (and (>= X19 3) (<= X19 6))
                                       X24
                                       X23)))
                                (let
                                 ((X26 (ite (= X25 6) 3 X25)))
                                 (let
                                  ((X27
                                    (ite
                                         (and (>= X19 3) (<= X19 6))
                                         X26
                                         X25)))
                                  (let
                                   ((X28
                                     (ite
                                          (and (>= X19 3) (<= X19 6))
                                          2
                                          X27)))
                                   (let
                                    ((X29
                                      (ite
                                           (and (>= X19 2) (<= X19 8))
                                           X28
                                           X19)))
                                    (let
                                     ((X30 (ite (= X29 7) 2 X29)))
                                     (let
                                      ((X31
                                        (ite
                                             (and (>= X19 2) (<= X19 8))
                                             X30
                                             X29)))
                                      (let
                                       ((X32 (ite (= X31 8) 2 X31)))
                                       (let
                                        ((X33
                                          (ite
                                               (and (>= X19 2) (<= X19 8))
                                               X32
                                               X31)))
                                        (let
                                         ((X34
                                           (ite
                                                (and (>= X19 2) (<= X19 8))
                                                0
                                                X33)))
                                         (let
                                          ((X35 (ite X21 X34 X19)))
                                          (let
                                           ((X36
                                             (ite (not (= X35 1)) 1 X35)))
                                           (let
                                            ((X37 (ite X21 X36 X35)))
                                            (let
                                             ((X38
                                               (and
                                                     (= X37 1)
                                                     (and
                                                      top.usr.onOff_a_1
                                                      (not X21)))))
                                             (let
                                              ((X39
                                                (ite (= X37 1) 0 X37)))
                                              (let
                                               ((X40 (ite X38 X39 X37)))
                                               (let
                                                ((X41
                                                  (ite
                                                       (not (= X35 1))
                                                       1
                                                       X18)))
                                                (let
                                                 ((X42 (ite X21 X41 X18)))
                                                 (let
                                                  ((X43
                                                    (ite
                                                         (not
                                                          (and
                                                           (>= X40 2)
                                                           (<= X40 8)))
                                                         2
                                                         X40)))
                                                  (let
                                                   ((X44
                                                     (and
                                                           (not
                                                            (and
                                                             (>= X40 2)
                                                             (<= X40 8)))
                                                           (and
                                                            (>= X43 2)
                                                            (<= X43 8)))))
                                                   (let
                                                    ((X45
                                                      (ite
                                                           (not (= X43 7))
                                                           2
                                                           X42)))
                                                    (let
                                                     ((X46
                                                       (ite X44 X45 X42)))
                                                     (let
                                                      ((X47
                                                        (ite X38 X46 X42)))
                                                      (let
                                                       ((X48
                                                         (ite
                                                              (not (= X43 7))
                                                              7
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          (ite
                                                               X44
                                                               X48
                                                               X43)))
                                                        (let
                                                         ((X50
                                                           (ite
                                                                X38
                                                                X49
                                                                X40)))
                                                         (let
                                                          ((X51
                                                            (or X38 X21)))
                                                          (let
                                                           ((X52
                                                             (and
                                                                   (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                   (not X3))))
                                                           (let
                                                            ((X53
                                                              (ite
                                                                   (= X50 4)
                                                                   3
                                                                   X50)))
                                                            (let
                                                             ((X54
                                                               (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X53
                                                                    X50)))
                                                             (let
                                                              ((X55
                                                                (ite
                                                                    (= X54 5)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 (ite
                                                                  (and
                                                                   (>= X50 3)
                                                                   (<= X50 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X57
                                                                    X56)))
                                                                 (let
                                                                  ((X59
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    2
                                                                    X58)))
                                                                  (let
                                                                   ((X60
                                                                    (ite
                                                                    X52
                                                                    X59
                                                                    X50)))
                                                                   (let
                                                                    ((X61
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    8
                                                                    X60)))
                                                                    (let
                                                                    ((X62
                                                                    (ite
                                                                    X52
                                                                    X61
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    (and
                                                                    (= X62 8)
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
                                                                    (not X52)))))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    (= X62 8)
                                                                    2
                                                                    X62)))
                                                                    (let
                                                                    ((X65
                                                                    (ite
                                                                    X63
                                                                    X64
                                                                    X62)))
                                                                    (let
                                                                    ((X66
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X65
                                                                    3)
                                                                    (<=
                                                                    X65
                                                                    6)))
                                                                    3
                                                                    X65)))
                                                                    (let
                                                                    ((X67
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X65
                                                                    3)
                                                                    (<=
                                                                    X65
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X66)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    X67
                                                                    X68
                                                                    X66)))
                                                                    (let
                                                                    ((X70
                                                                    (ite
                                                                    X63
                                                                    X69
                                                                    X65)))
                                                                    (let
                                                                    ((X71
                                                                    (or
                                                                    X63
                                                                    X52)))
                                                                    (let
                                                                    ((X72
                                                                    (and
                                                                    (= X70 8)
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
                                                                    (not X71)))))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    (= X70 8)
                                                                    2
                                                                    X70)))
                                                                    (let
                                                                    ((X74
                                                                    (ite
                                                                    X72
                                                                    X73
                                                                    X70)))
                                                                    (let
                                                                    ((X75
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X74
                                                                    3)
                                                                    (<=
                                                                    X74
                                                                    6)))
                                                                    3
                                                                    X74)))
                                                                    (let
                                                                    ((X76
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X74
                                                                    3)
                                                                    (<=
                                                                    X74
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))))
                                                                    (let
                                                                    ((X77
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    (ite
                                                                    X76
                                                                    X77
                                                                    X75)))
                                                                    (let
                                                                    ((X79
                                                                    (ite
                                                                    X72
                                                                    X78
                                                                    X74)))
                                                                    (let
                                                                    ((X80
                                                                    (or
                                                                    X72
                                                                    X71)))
                                                                    (let
                                                                    ((X81
                                                                    (and
                                                                    (= X79 7)
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
                                                                    (not X80)))))
                                                                    (let
                                                                    ((X82
                                                                    (ite
                                                                    (= X79 7)
                                                                    2
                                                                    X79)))
                                                                    (let
                                                                    ((X83
                                                                    (ite
                                                                    X81
                                                                    X82
                                                                    X79)))
                                                                    (let
                                                                    ((X84
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    3
                                                                    X47)))
                                                                    (let
                                                                    ((X85
                                                                    (ite
                                                                    X52
                                                                    X84
                                                                    X47)))
                                                                    (let
                                                                    ((X86
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X85)))
                                                                    (let
                                                                    ((X87
                                                                    (ite
                                                                    X67
                                                                    X86
                                                                    X85)))
                                                                    (let
                                                                    ((X88
                                                                    (ite
                                                                    X63
                                                                    X87
                                                                    X85)))
                                                                    (let
                                                                    ((X89
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X88)))
                                                                    (let
                                                                    ((X90
                                                                    (ite
                                                                    X76
                                                                    X89
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    (ite
                                                                    X72
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X83
                                                                    3)
                                                                    (<=
                                                                    X83
                                                                    6)))
                                                                    3
                                                                    X83)))
                                                                    (let
                                                                    ((X93
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X83
                                                                    3)
                                                                    (<=
                                                                    X83
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X92
                                                                    3)
                                                                    (<=
                                                                    X92
                                                                    6)))))
                                                                    (let
                                                                    ((X94
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X91)))
                                                                    (let
                                                                    ((X95
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X91)))
                                                                    (let
                                                                    ((X96
                                                                    (ite
                                                                    X81
                                                                    X95
                                                                    X91)))
                                                                    (let
                                                                    ((X97
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    (ite
                                                                    X93
                                                                    X97
                                                                    X92)))
                                                                    (let
                                                                    ((X99
                                                                    (ite
                                                                    X81
                                                                    X98
                                                                    X83)))
                                                                    (let
                                                                    ((X100
                                                                    (or
                                                                    X81
                                                                    X80)))
                                                                    (let
                                                                    ((X101
                                                                    (and
                                                                    (= X99 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X102
                                                                    (ite
                                                                    (= X99 4)
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
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X17)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X101)))))
                                                                    (let
                                                                    ((X107
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X108
                                                                    (ite
                                                                    X106
                                                                    X107
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    5
                                                                    X108)))
                                                                    (let
                                                                    ((X110
                                                                    (ite
                                                                    X106
                                                                    X109
                                                                    X108)))
                                                                    (let
                                                                    ((X111
                                                                    (or
                                                                    X106
                                                                    X101)))
                                                                    (let
                                                                    ((X112
                                                                    (and
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X12)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X111)))))
                                                                    (let
                                                                    ((X113
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    3
                                                                    X110)))
                                                                    (let
                                                                    ((X114
                                                                    (ite
                                                                    X112
                                                                    X113
                                                                    X110)))
                                                                    (let
                                                                    ((X115
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    6
                                                                    X114)))
                                                                    (let
                                                                    ((X116
                                                                    (ite
                                                                    X112
                                                                    X115
                                                                    X114)))
                                                                    (let
                                                                    ((X117
                                                                    (or
                                                                    X112
                                                                    X111)))
                                                                    (let
                                                                    ((X118
                                                                    (and
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X12))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X117)))))
                                                                    (let
                                                                    ((X119
                                                                    (ite
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    3
                                                                    X116)))
                                                                    (let
                                                                    ((X120
                                                                    (ite
                                                                    X118
                                                                    X119
                                                                    X116)))
                                                                    (let
                                                                    ((X121
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X120)))
                                                                    (let
                                                                    ((X122
                                                                    (ite
                                                                    X118
                                                                    X121
                                                                    X120)))
                                                                    (let
                                                                    ((X123
                                                                    (or
                                                                    X118
                                                                    X117)))
                                                                    (let
                                                                    ((X124
                                                                    (and
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X17))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X123)))))
                                                                    (let
                                                                    ((X125
                                                                    (ite
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    3
                                                                    X122)))
                                                                    (let
                                                                    ((X126
                                                                    (ite
                                                                    X124
                                                                    X125
                                                                    X122)))
                                                                    (let
                                                                    ((X127
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X96)))
                                                                    (let
                                                                    ((X128
                                                                    (ite
                                                                    X101
                                                                    X127
                                                                    X96)))
                                                                    (let
                                                                    ((X129
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    6
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    (ite
                                                                    X106
                                                                    X129
                                                                    X128)))
                                                                    (let
                                                                    ((X131
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    5
                                                                    X130)))
                                                                    (let
                                                                    ((X132
                                                                    (ite
                                                                    X112
                                                                    X131
                                                                    X130)))
                                                                    (let
                                                                    ((X133
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X132)))
                                                                    (let
                                                                    ((X134
                                                                    (ite
                                                                    X118
                                                                    X133
                                                                    X132)))
                                                                    (let
                                                                    ((X135
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X134)))
                                                                    (let
                                                                    ((X136
                                                                    (ite
                                                                    X124
                                                                    X135
                                                                    X134)))
                                                                    (let
                                                                    ((X137
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X136
                                                                    X96)))
                                                                    (let
                                                                    ((X138
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X137
                                                                    X47)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c_a_1
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_1
                                                                    (ite
                                                                    top.impl.usr.zz155_a_1
                                                                    X20
                                                                    X138)
                                                                    X18))
                                                                    (let
                                                                    ((X139
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    6)))
                                                                    (let
                                                                    ((X140
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    5)))
                                                                    (let
                                                                    ((X141
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    4)))
                                                                    (let
                                                                    ((X142
                                                                    (or
                                                                    (or
                                                                    X141
                                                                    X140)
                                                                    X139)))
                                                                    (let
                                                                    ((X143
                                                                    top.impl.usr.zz162_a_0))
                                                                    (let
                                                                    ((X144
                                                                    (ite
                                                                    (= X19 4)
                                                                    false
                                                                    X143)))
                                                                    (let
                                                                    ((X145
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X19
                                                                    3)
                                                                    (<=
                                                                    X19
                                                                    6))
                                                                    X144
                                                                    X143)))
                                                                    (let
                                                                    ((X146
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X19
                                                                    2)
                                                                    (<=
                                                                    X19
                                                                    8))
                                                                    X145
                                                                    X143)))
                                                                    (let
                                                                    ((X147
                                                                    (ite
                                                                    X21
                                                                    X146
                                                                    X143)))
                                                                    (let
                                                                    ((X148
                                                                    (ite
                                                                    (= X50 4)
                                                                    false
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X148
                                                                    X147)))
                                                                    (let
                                                                    ((X150
                                                                    (ite
                                                                    X52
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    (ite
                                                                    X63
                                                                    true
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    (ite
                                                                    X81
                                                                    true
                                                                    X151)))
                                                                    (let
                                                                    ((X153
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X126)))
                                                                    (let
                                                                    ((X154
                                                                    (ite
                                                                    X124
                                                                    X153
                                                                    X126)))
                                                                    (let
                                                                    ((X155
                                                                    (or
                                                                    X124
                                                                    X123)))
                                                                    (let
                                                                    ((X156
                                                                    (ite
                                                                    (= X99 4)
                                                                    false
                                                                    X152)))
                                                                    (let
                                                                    ((X157
                                                                    (ite
                                                                    X101
                                                                    X156
                                                                    X152)))
                                                                    (let
                                                                    ((X158
                                                                    (ite
                                                                    X101
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    false
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    (ite
                                                                    X106
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    false
                                                                    X160)))
                                                                    (let
                                                                    ((X162
                                                                    (ite
                                                                    X112
                                                                    X161
                                                                    X160)))
                                                                    (let
                                                                    ((X163
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X155)
                                                                    (=
                                                                    X154
                                                                    4))
                                                                    false
                                                                    X162)))
                                                                    (let
                                                                    ((X164
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X163
                                                                    X152)))
                                                                    (let
                                                                    ((X165
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X164
                                                                    X147)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz162_a_1
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_1
                                                                    (ite
                                                                    top.impl.usr.zz155_a_1
                                                                    X143
                                                                    X165)
                                                                    X143))
                                                                    (=
                                                                    top.usr.OK_a_1
                                                                    (or
                                                                    (not
                                                                    top.impl.usr.zz162_a_1)
                                                                    X142))
                                                                    (let
                                                                    ((X166
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X167
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X154
                                                                    X99)))
                                                                    (let
                                                                    ((X168
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X167
                                                                    X50)))
                                                                    (let
                                                                    ((X169
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_1
                                                                    (ite
                                                                    top.impl.usr.zz155_a_1
                                                                    X166
                                                                    X168)
                                                                    X19)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161_a_1
                                                                    X169)
                                                                    (not
                                                                    top.res.init_flag_a_1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
  (top.impl.usr.SP3c Bool)
  (top.impl.usr.zz155 Bool)
  (top.impl.usr.zz161 Int)
  (top.impl.usr.zz162 Bool)
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
    (top.impl.usr.mode Int)
    (top.impl.usr.SP3c Bool)
    (top.impl.usr.zz155 Bool)
    (top.impl.usr.zz161 Int)
    (top.impl.usr.zz162 Bool)
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
             ((X9 (+ X8 1)))
             (let
              ((X10 (ite top.usr.decelSet X9 0)))
              (let
               ((X11 (ite (>= 0 X10) 0 X10)))
               (and
                (= top.impl.usr.zz176 (ite (<= X11 20) X11 20))
                (let
                 ((X12 (= top.impl.usr.zz176 20)))
                 (let
                  ((X13 0))
                  (let
                   ((X14 (+ X13 1)))
                   (let
                    ((X15 (ite top.usr.accelResume X14 0)))
                    (let
                     ((X16 (ite (>= 0 X15) 0 X15)))
                     (and
                      (= top.impl.usr.zz170 (ite (<= X16 20) X16 20))
                      (let
                       ((X17 (= top.impl.usr.zz170 20)))
                       (let
                        ((X18 0))
                        (let
                         ((X19 0))
                         (and
                          (= top.impl.usr.zz155 true)
                          (let
                           ((X20 (ite (not (= X19 1)) 1 X18)))
                           (let
                            ((X21
                              (and
                                    (and (>= X19 2) (<= X19 8))
                                    (not top.usr.onOff))))
                            (let
                             ((X22 (ite (= X19 4) 3 X19)))
                             (let
                              ((X23
                                (ite (and (>= X19 3) (<= X19 6)) X22 X19)))
                              (let
                               ((X24 (ite (= X23 5) 3 X23)))
                               (let
                                ((X25
                                  (ite
                                       (and (>= X19 3) (<= X19 6))
                                       X24
                                       X23)))
                                (let
                                 ((X26 (ite (= X25 6) 3 X25)))
                                 (let
                                  ((X27
                                    (ite
                                         (and (>= X19 3) (<= X19 6))
                                         X26
                                         X25)))
                                  (let
                                   ((X28
                                     (ite
                                          (and (>= X19 3) (<= X19 6))
                                          2
                                          X27)))
                                   (let
                                    ((X29
                                      (ite
                                           (and (>= X19 2) (<= X19 8))
                                           X28
                                           X19)))
                                    (let
                                     ((X30 (ite (= X29 7) 2 X29)))
                                     (let
                                      ((X31
                                        (ite
                                             (and (>= X19 2) (<= X19 8))
                                             X30
                                             X29)))
                                      (let
                                       ((X32 (ite (= X31 8) 2 X31)))
                                       (let
                                        ((X33
                                          (ite
                                               (and (>= X19 2) (<= X19 8))
                                               X32
                                               X31)))
                                        (let
                                         ((X34
                                           (ite
                                                (and (>= X19 2) (<= X19 8))
                                                0
                                                X33)))
                                         (let
                                          ((X35 (ite X21 X34 X19)))
                                          (let
                                           ((X36
                                             (ite (not (= X35 1)) 1 X35)))
                                           (let
                                            ((X37 (ite X21 X36 X35)))
                                            (let
                                             ((X38
                                               (and
                                                     (= X37 1)
                                                     (and
                                                      top.usr.onOff
                                                      (not X21)))))
                                             (let
                                              ((X39
                                                (ite (= X37 1) 0 X37)))
                                              (let
                                               ((X40 (ite X38 X39 X37)))
                                               (let
                                                ((X41
                                                  (ite
                                                       (not (= X35 1))
                                                       1
                                                       X18)))
                                                (let
                                                 ((X42 (ite X21 X41 X18)))
                                                 (let
                                                  ((X43
                                                    (ite
                                                         (not
                                                          (and
                                                           (>= X40 2)
                                                           (<= X40 8)))
                                                         2
                                                         X40)))
                                                  (let
                                                   ((X44
                                                     (and
                                                           (not
                                                            (and
                                                             (>= X40 2)
                                                             (<= X40 8)))
                                                           (and
                                                            (>= X43 2)
                                                            (<= X43 8)))))
                                                   (let
                                                    ((X45
                                                      (ite
                                                           (not (= X43 7))
                                                           2
                                                           X42)))
                                                    (let
                                                     ((X46
                                                       (ite X44 X45 X42)))
                                                     (let
                                                      ((X47
                                                        (ite X38 X46 X42)))
                                                      (let
                                                       ((X48
                                                         (ite
                                                              (not (= X43 7))
                                                              7
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          (ite
                                                               X44
                                                               X48
                                                               X43)))
                                                        (let
                                                         ((X50
                                                           (ite
                                                                X38
                                                                X49
                                                                X40)))
                                                         (let
                                                          ((X51
                                                            (or X38 X21)))
                                                          (let
                                                           ((X52
                                                             (and
                                                                   (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                   (not X3))))
                                                           (let
                                                            ((X53
                                                              (ite
                                                                   (= X50 4)
                                                                   3
                                                                   X50)))
                                                            (let
                                                             ((X54
                                                               (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X53
                                                                    X50)))
                                                             (let
                                                              ((X55
                                                                (ite
                                                                    (= X54 5)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 (ite
                                                                  (and
                                                                   (>= X50 3)
                                                                   (<= X50 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X57
                                                                    X56)))
                                                                 (let
                                                                  ((X59
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    2
                                                                    X58)))
                                                                  (let
                                                                   ((X60
                                                                    (ite
                                                                    X52
                                                                    X59
                                                                    X50)))
                                                                   (let
                                                                    ((X61
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    8
                                                                    X60)))
                                                                    (let
                                                                    ((X62
                                                                    (ite
                                                                    X52
                                                                    X61
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    (and
                                                                    (= X62 8)
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
                                                                    (not X52)))))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    (= X62 8)
                                                                    2
                                                                    X62)))
                                                                    (let
                                                                    ((X65
                                                                    (ite
                                                                    X63
                                                                    X64
                                                                    X62)))
                                                                    (let
                                                                    ((X66
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X65
                                                                    3)
                                                                    (<=
                                                                    X65
                                                                    6)))
                                                                    3
                                                                    X65)))
                                                                    (let
                                                                    ((X67
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X65
                                                                    3)
                                                                    (<=
                                                                    X65
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X66)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    X67
                                                                    X68
                                                                    X66)))
                                                                    (let
                                                                    ((X70
                                                                    (ite
                                                                    X63
                                                                    X69
                                                                    X65)))
                                                                    (let
                                                                    ((X71
                                                                    (or
                                                                    X63
                                                                    X52)))
                                                                    (let
                                                                    ((X72
                                                                    (and
                                                                    (= X70 8)
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
                                                                    (not X71)))))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    (= X70 8)
                                                                    2
                                                                    X70)))
                                                                    (let
                                                                    ((X74
                                                                    (ite
                                                                    X72
                                                                    X73
                                                                    X70)))
                                                                    (let
                                                                    ((X75
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X74
                                                                    3)
                                                                    (<=
                                                                    X74
                                                                    6)))
                                                                    3
                                                                    X74)))
                                                                    (let
                                                                    ((X76
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X74
                                                                    3)
                                                                    (<=
                                                                    X74
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))))
                                                                    (let
                                                                    ((X77
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    (ite
                                                                    X76
                                                                    X77
                                                                    X75)))
                                                                    (let
                                                                    ((X79
                                                                    (ite
                                                                    X72
                                                                    X78
                                                                    X74)))
                                                                    (let
                                                                    ((X80
                                                                    (or
                                                                    X72
                                                                    X71)))
                                                                    (let
                                                                    ((X81
                                                                    (and
                                                                    (= X79 7)
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
                                                                    (not X80)))))
                                                                    (let
                                                                    ((X82
                                                                    (ite
                                                                    (= X79 7)
                                                                    2
                                                                    X79)))
                                                                    (let
                                                                    ((X83
                                                                    (ite
                                                                    X81
                                                                    X82
                                                                    X79)))
                                                                    (let
                                                                    ((X84
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    3
                                                                    X47)))
                                                                    (let
                                                                    ((X85
                                                                    (ite
                                                                    X52
                                                                    X84
                                                                    X47)))
                                                                    (let
                                                                    ((X86
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X85)))
                                                                    (let
                                                                    ((X87
                                                                    (ite
                                                                    X67
                                                                    X86
                                                                    X85)))
                                                                    (let
                                                                    ((X88
                                                                    (ite
                                                                    X63
                                                                    X87
                                                                    X85)))
                                                                    (let
                                                                    ((X89
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X88)))
                                                                    (let
                                                                    ((X90
                                                                    (ite
                                                                    X76
                                                                    X89
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    (ite
                                                                    X72
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X83
                                                                    3)
                                                                    (<=
                                                                    X83
                                                                    6)))
                                                                    3
                                                                    X83)))
                                                                    (let
                                                                    ((X93
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X83
                                                                    3)
                                                                    (<=
                                                                    X83
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X92
                                                                    3)
                                                                    (<=
                                                                    X92
                                                                    6)))))
                                                                    (let
                                                                    ((X94
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X91)))
                                                                    (let
                                                                    ((X95
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X91)))
                                                                    (let
                                                                    ((X96
                                                                    (ite
                                                                    X81
                                                                    X95
                                                                    X91)))
                                                                    (let
                                                                    ((X97
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    (ite
                                                                    X93
                                                                    X97
                                                                    X92)))
                                                                    (let
                                                                    ((X99
                                                                    (ite
                                                                    X81
                                                                    X98
                                                                    X83)))
                                                                    (let
                                                                    ((X100
                                                                    (or
                                                                    X81
                                                                    X80)))
                                                                    (let
                                                                    ((X101
                                                                    (and
                                                                    (= X99 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X102
                                                                    (ite
                                                                    (= X99 4)
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
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X17)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X101)))))
                                                                    (let
                                                                    ((X107
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X108
                                                                    (ite
                                                                    X106
                                                                    X107
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    5
                                                                    X108)))
                                                                    (let
                                                                    ((X110
                                                                    (ite
                                                                    X106
                                                                    X109
                                                                    X108)))
                                                                    (let
                                                                    ((X111
                                                                    (or
                                                                    X106
                                                                    X101)))
                                                                    (let
                                                                    ((X112
                                                                    (and
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X12)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X111)))))
                                                                    (let
                                                                    ((X113
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    3
                                                                    X110)))
                                                                    (let
                                                                    ((X114
                                                                    (ite
                                                                    X112
                                                                    X113
                                                                    X110)))
                                                                    (let
                                                                    ((X115
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    6
                                                                    X114)))
                                                                    (let
                                                                    ((X116
                                                                    (ite
                                                                    X112
                                                                    X115
                                                                    X114)))
                                                                    (let
                                                                    ((X117
                                                                    (or
                                                                    X112
                                                                    X111)))
                                                                    (let
                                                                    ((X118
                                                                    (and
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X12))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X117)))))
                                                                    (let
                                                                    ((X119
                                                                    (ite
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    3
                                                                    X116)))
                                                                    (let
                                                                    ((X120
                                                                    (ite
                                                                    X118
                                                                    X119
                                                                    X116)))
                                                                    (let
                                                                    ((X121
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X120)))
                                                                    (let
                                                                    ((X122
                                                                    (ite
                                                                    X118
                                                                    X121
                                                                    X120)))
                                                                    (let
                                                                    ((X123
                                                                    (or
                                                                    X118
                                                                    X117)))
                                                                    (let
                                                                    ((X124
                                                                    (and
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X17))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X123)))))
                                                                    (let
                                                                    ((X125
                                                                    (ite
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    3
                                                                    X122)))
                                                                    (let
                                                                    ((X126
                                                                    (ite
                                                                    X124
                                                                    X125
                                                                    X122)))
                                                                    (let
                                                                    ((X127
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X96)))
                                                                    (let
                                                                    ((X128
                                                                    (ite
                                                                    X101
                                                                    X127
                                                                    X96)))
                                                                    (let
                                                                    ((X129
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    6
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    (ite
                                                                    X106
                                                                    X129
                                                                    X128)))
                                                                    (let
                                                                    ((X131
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    5
                                                                    X130)))
                                                                    (let
                                                                    ((X132
                                                                    (ite
                                                                    X112
                                                                    X131
                                                                    X130)))
                                                                    (let
                                                                    ((X133
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X132)))
                                                                    (let
                                                                    ((X134
                                                                    (ite
                                                                    X118
                                                                    X133
                                                                    X132)))
                                                                    (let
                                                                    ((X135
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X134)))
                                                                    (let
                                                                    ((X136
                                                                    (ite
                                                                    X124
                                                                    X135
                                                                    X134)))
                                                                    (let
                                                                    ((X137
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X136
                                                                    X96)))
                                                                    (let
                                                                    ((X138
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X137
                                                                    X47)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    (ite
                                                                    top.impl.usr.zz155
                                                                    X20
                                                                    X138)
                                                                    X18))
                                                                    (let
                                                                    ((X139
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    6)))
                                                                    (let
                                                                    ((X140
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    5)))
                                                                    (let
                                                                    ((X141
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    4)))
                                                                    (let
                                                                    ((X142
                                                                    (or
                                                                    (or
                                                                    X141
                                                                    X140)
                                                                    X139)))
                                                                    (let
                                                                    ((X143
                                                                    false))
                                                                    (let
                                                                    ((X144
                                                                    (ite
                                                                    (= X19 4)
                                                                    false
                                                                    X143)))
                                                                    (let
                                                                    ((X145
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X19
                                                                    3)
                                                                    (<=
                                                                    X19
                                                                    6))
                                                                    X144
                                                                    X143)))
                                                                    (let
                                                                    ((X146
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X19
                                                                    2)
                                                                    (<=
                                                                    X19
                                                                    8))
                                                                    X145
                                                                    X143)))
                                                                    (let
                                                                    ((X147
                                                                    (ite
                                                                    X21
                                                                    X146
                                                                    X143)))
                                                                    (let
                                                                    ((X148
                                                                    (ite
                                                                    (= X50 4)
                                                                    false
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X148
                                                                    X147)))
                                                                    (let
                                                                    ((X150
                                                                    (ite
                                                                    X52
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    (ite
                                                                    X63
                                                                    true
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    (ite
                                                                    X81
                                                                    true
                                                                    X151)))
                                                                    (let
                                                                    ((X153
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X126)))
                                                                    (let
                                                                    ((X154
                                                                    (ite
                                                                    X124
                                                                    X153
                                                                    X126)))
                                                                    (let
                                                                    ((X155
                                                                    (or
                                                                    X124
                                                                    X123)))
                                                                    (let
                                                                    ((X156
                                                                    (ite
                                                                    (= X99 4)
                                                                    false
                                                                    X152)))
                                                                    (let
                                                                    ((X157
                                                                    (ite
                                                                    X101
                                                                    X156
                                                                    X152)))
                                                                    (let
                                                                    ((X158
                                                                    (ite
                                                                    X101
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    false
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    (ite
                                                                    X106
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    false
                                                                    X160)))
                                                                    (let
                                                                    ((X162
                                                                    (ite
                                                                    X112
                                                                    X161
                                                                    X160)))
                                                                    (let
                                                                    ((X163
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X155)
                                                                    (=
                                                                    X154
                                                                    4))
                                                                    false
                                                                    X162)))
                                                                    (let
                                                                    ((X164
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X163
                                                                    X152)))
                                                                    (let
                                                                    ((X165
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X164
                                                                    X147)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz162
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    (ite
                                                                    top.impl.usr.zz155
                                                                    X143
                                                                    X165)
                                                                    X143))
                                                                    (=
                                                                    top.usr.OK
                                                                    (or
                                                                    (not
                                                                    top.impl.usr.zz162)
                                                                    X142))
                                                                    (let
                                                                    ((X166
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X167
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X154
                                                                    X99)))
                                                                    (let
                                                                    ((X168
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X167
                                                                    X50)))
                                                                    (let
                                                                    ((X169
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    (ite
                                                                    top.impl.usr.zz155
                                                                    X166
                                                                    X168)
                                                                    X19)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161
                                                                    X169)
                                                                    top.res.init_flag)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.SP3c Bool)
    (top.impl.usr.zz155 Bool)
    (top.impl.usr.zz161 Int)
    (top.impl.usr.zz162 Bool)
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
    (top.impl.usr.mode! Int)
    (top.impl.usr.SP3c! Bool)
    (top.impl.usr.zz155! Bool)
    (top.impl.usr.zz161! Int)
    (top.impl.usr.zz162! Bool)
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
            ((X8 top.impl.usr.zz176))
            (let
             ((X9 (+ X8 1)))
             (let
              ((X10 (ite top.usr.decelSet! X9 0)))
              (let
               ((X11 (ite (>= 0 X10) 0 X10)))
               (and
                (= top.impl.usr.zz176! (ite (<= X11 20) X11 20))
                (let
                 ((X12 (= top.impl.usr.zz176! 20)))
                 (let
                  ((X13 top.impl.usr.zz170))
                  (let
                   ((X14 (+ X13 1)))
                   (let
                    ((X15 (ite top.usr.accelResume! X14 0)))
                    (let
                     ((X16 (ite (>= 0 X15) 0 X15)))
                     (and
                      (= top.impl.usr.zz170! (ite (<= X16 20) X16 20))
                      (let
                       ((X17 (= top.impl.usr.zz170! 20)))
                       (let
                        ((X18 top.impl.usr.mode))
                        (let
                         ((X19 top.impl.usr.zz161))
                         (and
                          (=
                           top.impl.usr.zz155!
                           (ite top.impl.usr.SP3c false top.impl.usr.zz155))
                          (let
                           ((X20 (ite (not (= X19 1)) 1 X18)))
                           (let
                            ((X21
                              (and
                                    (and (>= X19 2) (<= X19 8))
                                    (not top.usr.onOff!))))
                            (let
                             ((X22 (ite (= X19 4) 3 X19)))
                             (let
                              ((X23
                                (ite (and (>= X19 3) (<= X19 6)) X22 X19)))
                              (let
                               ((X24 (ite (= X23 5) 3 X23)))
                               (let
                                ((X25
                                  (ite
                                       (and (>= X19 3) (<= X19 6))
                                       X24
                                       X23)))
                                (let
                                 ((X26 (ite (= X25 6) 3 X25)))
                                 (let
                                  ((X27
                                    (ite
                                         (and (>= X19 3) (<= X19 6))
                                         X26
                                         X25)))
                                  (let
                                   ((X28
                                     (ite
                                          (and (>= X19 3) (<= X19 6))
                                          2
                                          X27)))
                                   (let
                                    ((X29
                                      (ite
                                           (and (>= X19 2) (<= X19 8))
                                           X28
                                           X19)))
                                    (let
                                     ((X30 (ite (= X29 7) 2 X29)))
                                     (let
                                      ((X31
                                        (ite
                                             (and (>= X19 2) (<= X19 8))
                                             X30
                                             X29)))
                                      (let
                                       ((X32 (ite (= X31 8) 2 X31)))
                                       (let
                                        ((X33
                                          (ite
                                               (and (>= X19 2) (<= X19 8))
                                               X32
                                               X31)))
                                        (let
                                         ((X34
                                           (ite
                                                (and (>= X19 2) (<= X19 8))
                                                0
                                                X33)))
                                         (let
                                          ((X35 (ite X21 X34 X19)))
                                          (let
                                           ((X36
                                             (ite (not (= X35 1)) 1 X35)))
                                           (let
                                            ((X37 (ite X21 X36 X35)))
                                            (let
                                             ((X38
                                               (and
                                                     (= X37 1)
                                                     (and
                                                      top.usr.onOff!
                                                      (not X21)))))
                                             (let
                                              ((X39
                                                (ite (= X37 1) 0 X37)))
                                              (let
                                               ((X40 (ite X38 X39 X37)))
                                               (let
                                                ((X41
                                                  (ite
                                                       (not (= X35 1))
                                                       1
                                                       X18)))
                                                (let
                                                 ((X42 (ite X21 X41 X18)))
                                                 (let
                                                  ((X43
                                                    (ite
                                                         (not
                                                          (and
                                                           (>= X40 2)
                                                           (<= X40 8)))
                                                         2
                                                         X40)))
                                                  (let
                                                   ((X44
                                                     (and
                                                           (not
                                                            (and
                                                             (>= X40 2)
                                                             (<= X40 8)))
                                                           (and
                                                            (>= X43 2)
                                                            (<= X43 8)))))
                                                   (let
                                                    ((X45
                                                      (ite
                                                           (not (= X43 7))
                                                           2
                                                           X42)))
                                                    (let
                                                     ((X46
                                                       (ite X44 X45 X42)))
                                                     (let
                                                      ((X47
                                                        (ite X38 X46 X42)))
                                                      (let
                                                       ((X48
                                                         (ite
                                                              (not (= X43 7))
                                                              7
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          (ite
                                                               X44
                                                               X48
                                                               X43)))
                                                        (let
                                                         ((X50
                                                           (ite
                                                                X38
                                                                X49
                                                                X40)))
                                                         (let
                                                          ((X51
                                                            (or X38 X21)))
                                                          (let
                                                           ((X52
                                                             (and
                                                                   (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                   (not X3))))
                                                           (let
                                                            ((X53
                                                              (ite
                                                                   (= X50 4)
                                                                   3
                                                                   X50)))
                                                            (let
                                                             ((X54
                                                               (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X53
                                                                    X50)))
                                                             (let
                                                              ((X55
                                                                (ite
                                                                    (= X54 5)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 (ite
                                                                  (and
                                                                   (>= X50 3)
                                                                   (<= X50 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X57
                                                                    X56)))
                                                                 (let
                                                                  ((X59
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    2
                                                                    X58)))
                                                                  (let
                                                                   ((X60
                                                                    (ite
                                                                    X52
                                                                    X59
                                                                    X50)))
                                                                   (let
                                                                    ((X61
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    8
                                                                    X60)))
                                                                    (let
                                                                    ((X62
                                                                    (ite
                                                                    X52
                                                                    X61
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    (and
                                                                    (= X62 8)
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
                                                                    (not X52)))))
                                                                    (let
                                                                    ((X64
                                                                    (ite
                                                                    (= X62 8)
                                                                    2
                                                                    X62)))
                                                                    (let
                                                                    ((X65
                                                                    (ite
                                                                    X63
                                                                    X64
                                                                    X62)))
                                                                    (let
                                                                    ((X66
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X65
                                                                    3)
                                                                    (<=
                                                                    X65
                                                                    6)))
                                                                    3
                                                                    X65)))
                                                                    (let
                                                                    ((X67
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X65
                                                                    3)
                                                                    (<=
                                                                    X65
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))))
                                                                    (let
                                                                    ((X68
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X66)))
                                                                    (let
                                                                    ((X69
                                                                    (ite
                                                                    X67
                                                                    X68
                                                                    X66)))
                                                                    (let
                                                                    ((X70
                                                                    (ite
                                                                    X63
                                                                    X69
                                                                    X65)))
                                                                    (let
                                                                    ((X71
                                                                    (or
                                                                    X63
                                                                    X52)))
                                                                    (let
                                                                    ((X72
                                                                    (and
                                                                    (= X70 8)
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
                                                                    (not X71)))))
                                                                    (let
                                                                    ((X73
                                                                    (ite
                                                                    (= X70 8)
                                                                    2
                                                                    X70)))
                                                                    (let
                                                                    ((X74
                                                                    (ite
                                                                    X72
                                                                    X73
                                                                    X70)))
                                                                    (let
                                                                    ((X75
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X74
                                                                    3)
                                                                    (<=
                                                                    X74
                                                                    6)))
                                                                    3
                                                                    X74)))
                                                                    (let
                                                                    ((X76
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X74
                                                                    3)
                                                                    (<=
                                                                    X74
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))))
                                                                    (let
                                                                    ((X77
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    (ite
                                                                    X76
                                                                    X77
                                                                    X75)))
                                                                    (let
                                                                    ((X79
                                                                    (ite
                                                                    X72
                                                                    X78
                                                                    X74)))
                                                                    (let
                                                                    ((X80
                                                                    (or
                                                                    X72
                                                                    X71)))
                                                                    (let
                                                                    ((X81
                                                                    (and
                                                                    (= X79 7)
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
                                                                    (not X80)))))
                                                                    (let
                                                                    ((X82
                                                                    (ite
                                                                    (= X79 7)
                                                                    2
                                                                    X79)))
                                                                    (let
                                                                    ((X83
                                                                    (ite
                                                                    X81
                                                                    X82
                                                                    X79)))
                                                                    (let
                                                                    ((X84
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    3
                                                                    X47)))
                                                                    (let
                                                                    ((X85
                                                                    (ite
                                                                    X52
                                                                    X84
                                                                    X47)))
                                                                    (let
                                                                    ((X86
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X85)))
                                                                    (let
                                                                    ((X87
                                                                    (ite
                                                                    X67
                                                                    X86
                                                                    X85)))
                                                                    (let
                                                                    ((X88
                                                                    (ite
                                                                    X63
                                                                    X87
                                                                    X85)))
                                                                    (let
                                                                    ((X89
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X88)))
                                                                    (let
                                                                    ((X90
                                                                    (ite
                                                                    X76
                                                                    X89
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    (ite
                                                                    X72
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X83
                                                                    3)
                                                                    (<=
                                                                    X83
                                                                    6)))
                                                                    3
                                                                    X83)))
                                                                    (let
                                                                    ((X93
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X83
                                                                    3)
                                                                    (<=
                                                                    X83
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X92
                                                                    3)
                                                                    (<=
                                                                    X92
                                                                    6)))))
                                                                    (let
                                                                    ((X94
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X91)))
                                                                    (let
                                                                    ((X95
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X91)))
                                                                    (let
                                                                    ((X96
                                                                    (ite
                                                                    X81
                                                                    X95
                                                                    X91)))
                                                                    (let
                                                                    ((X97
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    (ite
                                                                    X93
                                                                    X97
                                                                    X92)))
                                                                    (let
                                                                    ((X99
                                                                    (ite
                                                                    X81
                                                                    X98
                                                                    X83)))
                                                                    (let
                                                                    ((X100
                                                                    (or
                                                                    X81
                                                                    X80)))
                                                                    (let
                                                                    ((X101
                                                                    (and
                                                                    (= X99 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X102
                                                                    (ite
                                                                    (= X99 4)
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
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X17)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X101)))))
                                                                    (let
                                                                    ((X107
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X108
                                                                    (ite
                                                                    X106
                                                                    X107
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    5
                                                                    X108)))
                                                                    (let
                                                                    ((X110
                                                                    (ite
                                                                    X106
                                                                    X109
                                                                    X108)))
                                                                    (let
                                                                    ((X111
                                                                    (or
                                                                    X106
                                                                    X101)))
                                                                    (let
                                                                    ((X112
                                                                    (and
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X12)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X111)))))
                                                                    (let
                                                                    ((X113
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    3
                                                                    X110)))
                                                                    (let
                                                                    ((X114
                                                                    (ite
                                                                    X112
                                                                    X113
                                                                    X110)))
                                                                    (let
                                                                    ((X115
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    6
                                                                    X114)))
                                                                    (let
                                                                    ((X116
                                                                    (ite
                                                                    X112
                                                                    X115
                                                                    X114)))
                                                                    (let
                                                                    ((X117
                                                                    (or
                                                                    X112
                                                                    X111)))
                                                                    (let
                                                                    ((X118
                                                                    (and
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X12))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X117)))))
                                                                    (let
                                                                    ((X119
                                                                    (ite
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    3
                                                                    X116)))
                                                                    (let
                                                                    ((X120
                                                                    (ite
                                                                    X118
                                                                    X119
                                                                    X116)))
                                                                    (let
                                                                    ((X121
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X120)))
                                                                    (let
                                                                    ((X122
                                                                    (ite
                                                                    X118
                                                                    X121
                                                                    X120)))
                                                                    (let
                                                                    ((X123
                                                                    (or
                                                                    X118
                                                                    X117)))
                                                                    (let
                                                                    ((X124
                                                                    (and
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X17))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X123)))))
                                                                    (let
                                                                    ((X125
                                                                    (ite
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    3
                                                                    X122)))
                                                                    (let
                                                                    ((X126
                                                                    (ite
                                                                    X124
                                                                    X125
                                                                    X122)))
                                                                    (let
                                                                    ((X127
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X96)))
                                                                    (let
                                                                    ((X128
                                                                    (ite
                                                                    X101
                                                                    X127
                                                                    X96)))
                                                                    (let
                                                                    ((X129
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    6
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    (ite
                                                                    X106
                                                                    X129
                                                                    X128)))
                                                                    (let
                                                                    ((X131
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    5
                                                                    X130)))
                                                                    (let
                                                                    ((X132
                                                                    (ite
                                                                    X112
                                                                    X131
                                                                    X130)))
                                                                    (let
                                                                    ((X133
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X132)))
                                                                    (let
                                                                    ((X134
                                                                    (ite
                                                                    X118
                                                                    X133
                                                                    X132)))
                                                                    (let
                                                                    ((X135
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X134)))
                                                                    (let
                                                                    ((X136
                                                                    (ite
                                                                    X124
                                                                    X135
                                                                    X134)))
                                                                    (let
                                                                    ((X137
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X136
                                                                    X96)))
                                                                    (let
                                                                    ((X138
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X137
                                                                    X47)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c!
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    (ite
                                                                    top.impl.usr.SP3c!
                                                                    (ite
                                                                    top.impl.usr.zz155!
                                                                    X20
                                                                    X138)
                                                                    X18))
                                                                    (let
                                                                    ((X139
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    6)))
                                                                    (let
                                                                    ((X140
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    5)))
                                                                    (let
                                                                    ((X141
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    4)))
                                                                    (let
                                                                    ((X142
                                                                    (or
                                                                    (or
                                                                    X141
                                                                    X140)
                                                                    X139)))
                                                                    (let
                                                                    ((X143
                                                                    top.impl.usr.zz162))
                                                                    (let
                                                                    ((X144
                                                                    (ite
                                                                    (= X19 4)
                                                                    false
                                                                    X143)))
                                                                    (let
                                                                    ((X145
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X19
                                                                    3)
                                                                    (<=
                                                                    X19
                                                                    6))
                                                                    X144
                                                                    X143)))
                                                                    (let
                                                                    ((X146
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X19
                                                                    2)
                                                                    (<=
                                                                    X19
                                                                    8))
                                                                    X145
                                                                    X143)))
                                                                    (let
                                                                    ((X147
                                                                    (ite
                                                                    X21
                                                                    X146
                                                                    X143)))
                                                                    (let
                                                                    ((X148
                                                                    (ite
                                                                    (= X50 4)
                                                                    false
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    3)
                                                                    (<=
                                                                    X50
                                                                    6))
                                                                    X148
                                                                    X147)))
                                                                    (let
                                                                    ((X150
                                                                    (ite
                                                                    X52
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    (ite
                                                                    X63
                                                                    true
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    (ite
                                                                    X81
                                                                    true
                                                                    X151)))
                                                                    (let
                                                                    ((X153
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X126)))
                                                                    (let
                                                                    ((X154
                                                                    (ite
                                                                    X124
                                                                    X153
                                                                    X126)))
                                                                    (let
                                                                    ((X155
                                                                    (or
                                                                    X124
                                                                    X123)))
                                                                    (let
                                                                    ((X156
                                                                    (ite
                                                                    (= X99 4)
                                                                    false
                                                                    X152)))
                                                                    (let
                                                                    ((X157
                                                                    (ite
                                                                    X101
                                                                    X156
                                                                    X152)))
                                                                    (let
                                                                    ((X158
                                                                    (ite
                                                                    X101
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    false
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    (ite
                                                                    X106
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    false
                                                                    X160)))
                                                                    (let
                                                                    ((X162
                                                                    (ite
                                                                    X112
                                                                    X161
                                                                    X160)))
                                                                    (let
                                                                    ((X163
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X155)
                                                                    (=
                                                                    X154
                                                                    4))
                                                                    false
                                                                    X162)))
                                                                    (let
                                                                    ((X164
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X163
                                                                    X152)))
                                                                    (let
                                                                    ((X165
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X164
                                                                    X147)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz162!
                                                                    (ite
                                                                    top.impl.usr.SP3c!
                                                                    (ite
                                                                    top.impl.usr.zz155!
                                                                    X143
                                                                    X165)
                                                                    X143))
                                                                    (=
                                                                    top.usr.OK!
                                                                    (or
                                                                    (not
                                                                    top.impl.usr.zz162!)
                                                                    X142))
                                                                    (let
                                                                    ((X166
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X167
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X100)
                                                                    (and
                                                                    (>=
                                                                    X99
                                                                    3)
                                                                    (<=
                                                                    X99
                                                                    6)))
                                                                    X154
                                                                    X99)))
                                                                    (let
                                                                    ((X168
                                                                    (ite
                                                                    (and
                                                                    (not X51)
                                                                    (and
                                                                    (>=
                                                                    X50
                                                                    2)
                                                                    (<=
                                                                    X50
                                                                    8)))
                                                                    X167
                                                                    X50)))
                                                                    (let
                                                                    ((X169
                                                                    (ite
                                                                    top.impl.usr.SP3c!
                                                                    (ite
                                                                    top.impl.usr.zz155!
                                                                    X166
                                                                    X168)
                                                                    X19)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161!
                                                                    X169)
                                                                    (not
                                                                    top.res.init_flag!))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.SP3c Bool)
    (top.impl.usr.zz155 Bool)
    (top.impl.usr.zz161 Int)
    (top.impl.usr.zz162 Bool)
    (top.impl.usr.zz170 Int)
    (top.impl.usr.zz176 Int)
    (top.impl.usr.zz178 Bool)
    (top.impl.usr.zz183 Bool)
  ) Bool
  
  top.usr.OK
)

(inv-constraint str_invariant init trans prop)

(check-synth)
