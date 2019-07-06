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
   ((X1 Bool (>= top.usr.carSpeed_a_0 15.0)))
   (let
    ((X2 Bool (= top.usr.carGear_a_0 3)))
    (let
     ((X3
       Bool (and
             (and
              (and
               (and (not top.usr.cancel_a_0) (not top.usr.brakePedal_a_0))
               X2)
              X1)
             top.usr.validInputs_a_0)))
     (let
      ((X4 Bool true))
      (and
       (= top.impl.usr.zz183_a_0 top.usr.decelSet_a_0)
       (let
        ((X5 Bool (and (not X4) top.impl.usr.zz183_a_0)))
        (let
         ((X6 Bool true))
         (and
          (= top.impl.usr.zz178_a_0 top.usr.accelResume_a_0)
          (let
           ((X7 Bool (and (not X6) top.impl.usr.zz178_a_0)))
           (let
            ((X8 Int 0))
            (let
             ((X9 Int (+ X8 1)))
             (let
              ((X10 Int (ite top.usr.decelSet_a_0 X9 0)))
              (let
               ((X11 Int (ite (>= 0 X10) 0 X10)))
               (and
                (= top.impl.usr.zz176_a_0 (ite (<= X11 20) X11 20))
                (let
                 ((X12 Bool (= top.impl.usr.zz176_a_0 20)))
                 (let
                  ((X13 Int 0))
                  (let
                   ((X14 Int (+ X13 1)))
                   (let
                    ((X15 Int (ite top.usr.accelResume_a_0 X14 0)))
                    (let
                     ((X16 Int (ite (>= 0 X15) 0 X15)))
                     (and
                      (= top.impl.usr.zz170_a_0 (ite (<= X16 20) X16 20))
                      (let
                       ((X17 Bool (= top.impl.usr.zz170_a_0 20)))
                       (let
                        ((X18 Int 0))
                        (let
                         ((X19 Int 0))
                         (and
                          (= top.impl.usr.zz155_a_0 true)
                          (let
                           ((X20 Int (ite (not (= X19 1)) 1 X18)))
                           (let
                            ((X21
                              Bool (and
                                    (and (>= X19 2) (<= X19 8))
                                    (not top.usr.onOff_a_0))))
                            (let
                             ((X22 Int (ite (= X19 4) 3 X19)))
                             (let
                              ((X23
                                Int (ite (and (>= X19 3) (<= X19 6)) X22 X19)))
                              (let
                               ((X24 Int (ite (= X23 5) 3 X23)))
                               (let
                                ((X25
                                  Int (ite
                                       (and (>= X19 3) (<= X19 6))
                                       X24
                                       X23)))
                                (let
                                 ((X26 Int (ite (= X25 6) 3 X25)))
                                 (let
                                  ((X27
                                    Int (ite
                                         (and (>= X19 3) (<= X19 6))
                                         X26
                                         X25)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X19 3) (<= X19 6))
                                          2
                                          X27)))
                                   (let
                                    ((X29
                                      Int (ite
                                           (and (>= X19 2) (<= X19 8))
                                           X28
                                           X19)))
                                    (let
                                     ((X30 Int (ite (= X29 7) 2 X29)))
                                     (let
                                      ((X31
                                        Int (ite
                                             (and (>= X19 2) (<= X19 8))
                                             X30
                                             X29)))
                                      (let
                                       ((X32 Int (ite (= X31 8) 2 X31)))
                                       (let
                                        ((X33
                                          Int (ite
                                               (and (>= X19 2) (<= X19 8))
                                               X32
                                               X31)))
                                        (let
                                         ((X34
                                           Int (ite
                                                (and (>= X19 2) (<= X19 8))
                                                0
                                                X33)))
                                         (let
                                          ((X35 Int (ite X21 X34 X19)))
                                          (let
                                           ((X36
                                             Int (ite (not (= X35 1)) 1 X35)))
                                           (let
                                            ((X37 Int (ite X21 X36 X35)))
                                            (let
                                             ((X38
                                               Bool (and
                                                     (= X37 1)
                                                     (and
                                                      top.usr.onOff_a_0
                                                      (not X21)))))
                                             (let
                                              ((X39
                                                Int (ite (= X37 1) 0 X37)))
                                              (let
                                               ((X40 Int (ite X38 X39 X37)))
                                               (let
                                                ((X41
                                                  Int (ite
                                                       (not (= X35 1))
                                                       1
                                                       X18)))
                                                (let
                                                 ((X42 Int (ite X21 X41 X18)))
                                                 (let
                                                  ((X43
                                                    Int (ite
                                                         (not
                                                          (and
                                                           (>= X40 2)
                                                           (<= X40 8)))
                                                         2
                                                         X40)))
                                                  (let
                                                   ((X44
                                                     Bool (and
                                                           (not
                                                            (and
                                                             (>= X40 2)
                                                             (<= X40 8)))
                                                           (and
                                                            (>= X43 2)
                                                            (<= X43 8)))))
                                                   (let
                                                    ((X45
                                                      Int (ite
                                                           (not (= X43 7))
                                                           2
                                                           X42)))
                                                    (let
                                                     ((X46
                                                       Int (ite X44 X45 X42)))
                                                     (let
                                                      ((X47
                                                        Int (ite X38 X46 X42)))
                                                      (let
                                                       ((X48
                                                         Int (ite
                                                              (not (= X43 7))
                                                              7
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          Int (ite
                                                               X44
                                                               X48
                                                               X43)))
                                                        (let
                                                         ((X50
                                                           Int (ite
                                                                X38
                                                                X49
                                                                X40)))
                                                         (let
                                                          ((X51
                                                            Bool (or X38 X21)))
                                                          (let
                                                           ((X52
                                                             Bool (and
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
                                                              Int (ite
                                                                   (= X50 4)
                                                                   3
                                                                   X50)))
                                                            (let
                                                             ((X54
                                                               Int (ite
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
                                                                Int (ite
                                                                    (= X54 5)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (and
                                                                   (>= X50 3)
                                                                   (<= X50 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   Int 
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
                                                                    Int 
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
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X59
                                                                    X50)))
                                                                   (let
                                                                    ((X61
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    8
                                                                    X60)))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X61
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X62 8)
                                                                    2
                                                                    X62)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X64
                                                                    X62)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X66)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    X68
                                                                    X66)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X69
                                                                    X65)))
                                                                    (let
                                                                    ((X71
                                                                    Bool 
                                                                    (or
                                                                    X63
                                                                    X52)))
                                                                    (let
                                                                    ((X72
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X70 8)
                                                                    2
                                                                    X70)))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X73
                                                                    X70)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X76
                                                                    X77
                                                                    X75)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X78
                                                                    X74)))
                                                                    (let
                                                                    ((X80
                                                                    Bool 
                                                                    (or
                                                                    X72
                                                                    X71)))
                                                                    (let
                                                                    ((X81
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X79 7)
                                                                    2
                                                                    X79)))
                                                                    (let
                                                                    ((X83
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X82
                                                                    X79)))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    3
                                                                    X47)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X84
                                                                    X47)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X85)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    X86
                                                                    X85)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X87
                                                                    X85)))
                                                                    (let
                                                                    ((X89
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X88)))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    X76
                                                                    X89
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X91)))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X91)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X95
                                                                    X91)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X97
                                                                    X92)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X98
                                                                    X83)))
                                                                    (let
                                                                    ((X100
                                                                    Bool 
                                                                    (or
                                                                    X81
                                                                    X80)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X99 4)
                                                                    3
                                                                    X99)))
                                                                    (let
                                                                    ((X103
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X102
                                                                    X99)))
                                                                    (let
                                                                    ((X104
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X103)))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X106
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X107
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    5
                                                                    X108)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X109
                                                                    X108)))
                                                                    (let
                                                                    ((X111
                                                                    Bool 
                                                                    (or
                                                                    X106
                                                                    X101)))
                                                                    (let
                                                                    ((X112
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    3
                                                                    X110)))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X113
                                                                    X110)))
                                                                    (let
                                                                    ((X115
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    6
                                                                    X114)))
                                                                    (let
                                                                    ((X116
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X115
                                                                    X114)))
                                                                    (let
                                                                    ((X117
                                                                    Bool 
                                                                    (or
                                                                    X112
                                                                    X111)))
                                                                    (let
                                                                    ((X118
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    3
                                                                    X116)))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X119
                                                                    X116)))
                                                                    (let
                                                                    ((X121
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X120)))
                                                                    (let
                                                                    ((X122
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X121
                                                                    X120)))
                                                                    (let
                                                                    ((X123
                                                                    Bool 
                                                                    (or
                                                                    X118
                                                                    X117)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    3
                                                                    X122)))
                                                                    (let
                                                                    ((X126
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X125
                                                                    X122)))
                                                                    (let
                                                                    ((X127
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X96)))
                                                                    (let
                                                                    ((X128
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X127
                                                                    X96)))
                                                                    (let
                                                                    ((X129
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    6
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X129
                                                                    X128)))
                                                                    (let
                                                                    ((X131
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    5
                                                                    X130)))
                                                                    (let
                                                                    ((X132
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X131
                                                                    X130)))
                                                                    (let
                                                                    ((X133
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X132)))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X133
                                                                    X132)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X134)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X135
                                                                    X134)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
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
                                                                    Int 
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
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    6)))
                                                                    (let
                                                                    ((X140
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    5)))
                                                                    (let
                                                                    ((X141
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    4)))
                                                                    (let
                                                                    ((X142
                                                                    Bool 
                                                                    (or
                                                                    (or
                                                                    X141
                                                                    X140)
                                                                    X139)))
                                                                    (let
                                                                    ((X143
                                                                    Bool false))
                                                                    (let
                                                                    ((X144
                                                                    Bool 
                                                                    (ite
                                                                    (= X19 4)
                                                                    false
                                                                    X143)))
                                                                    (let
                                                                    ((X145
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Bool 
                                                                    (ite
                                                                    X21
                                                                    X146
                                                                    X143)))
                                                                    (let
                                                                    ((X148
                                                                    Bool 
                                                                    (ite
                                                                    (= X50 4)
                                                                    false
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    Bool 
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
                                                                    Bool 
                                                                    (ite
                                                                    X52
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    Bool 
                                                                    (ite
                                                                    X63
                                                                    true
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Bool 
                                                                    (ite
                                                                    X81
                                                                    true
                                                                    X151)))
                                                                    (let
                                                                    ((X153
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X126)))
                                                                    (let
                                                                    ((X154
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X153
                                                                    X126)))
                                                                    (let
                                                                    ((X155
                                                                    Bool 
                                                                    (or
                                                                    X124
                                                                    X123)))
                                                                    (let
                                                                    ((X156
                                                                    Bool 
                                                                    (ite
                                                                    (= X99 4)
                                                                    false
                                                                    X152)))
                                                                    (let
                                                                    ((X157
                                                                    Bool 
                                                                    (ite
                                                                    X101
                                                                    X156
                                                                    X152)))
                                                                    (let
                                                                    ((X158
                                                                    Bool 
                                                                    (ite
                                                                    X101
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    false
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Bool 
                                                                    (ite
                                                                    X106
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    false
                                                                    X160)))
                                                                    (let
                                                                    ((X162
                                                                    Bool 
                                                                    (ite
                                                                    X112
                                                                    X161
                                                                    X160)))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X167
                                                                    Int 
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
                                                                    Int 
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
                                                                    Int 
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
   ((X1 Bool (>= top.usr.carSpeed_a_1 15.0)))
   (let
    ((X2 Bool (= top.usr.carGear_a_1 3)))
    (let
     ((X3
       Bool (and
             (and
              (and
               (and (not top.usr.cancel_a_1) (not top.usr.brakePedal_a_1))
               X2)
              X1)
             top.usr.validInputs_a_1)))
     (let
      ((X4 Bool top.impl.usr.zz183_a_0))
      (and
       (= top.impl.usr.zz183_a_1 top.usr.decelSet_a_1)
       (let
        ((X5 Bool (and (not X4) top.impl.usr.zz183_a_1)))
        (let
         ((X6 Bool top.impl.usr.zz178_a_0))
         (and
          (= top.impl.usr.zz178_a_1 top.usr.accelResume_a_1)
          (let
           ((X7 Bool (and (not X6) top.impl.usr.zz178_a_1)))
           (let
            ((X8 Int top.impl.usr.zz176_a_0))
            (let
             ((X9 Int (+ X8 1)))
             (let
              ((X10 Int (ite top.usr.decelSet_a_1 X9 0)))
              (let
               ((X11 Int (ite (>= 0 X10) 0 X10)))
               (and
                (= top.impl.usr.zz176_a_1 (ite (<= X11 20) X11 20))
                (let
                 ((X12 Bool (= top.impl.usr.zz176_a_1 20)))
                 (let
                  ((X13 Int top.impl.usr.zz170_a_0))
                  (let
                   ((X14 Int (+ X13 1)))
                   (let
                    ((X15 Int (ite top.usr.accelResume_a_1 X14 0)))
                    (let
                     ((X16 Int (ite (>= 0 X15) 0 X15)))
                     (and
                      (= top.impl.usr.zz170_a_1 (ite (<= X16 20) X16 20))
                      (let
                       ((X17 Bool (= top.impl.usr.zz170_a_1 20)))
                       (let
                        ((X18 Int top.impl.usr.mode_a_0))
                        (let
                         ((X19 Int top.impl.usr.zz161_a_0))
                         (and
                          (=
                           top.impl.usr.zz155_a_1
                           (ite
                            top.impl.usr.SP3c_a_0
                            false
                            top.impl.usr.zz155_a_0))
                          (let
                           ((X20 Int (ite (not (= X19 1)) 1 X18)))
                           (let
                            ((X21
                              Bool (and
                                    (and (>= X19 2) (<= X19 8))
                                    (not top.usr.onOff_a_1))))
                            (let
                             ((X22 Int (ite (= X19 4) 3 X19)))
                             (let
                              ((X23
                                Int (ite (and (>= X19 3) (<= X19 6)) X22 X19)))
                              (let
                               ((X24 Int (ite (= X23 5) 3 X23)))
                               (let
                                ((X25
                                  Int (ite
                                       (and (>= X19 3) (<= X19 6))
                                       X24
                                       X23)))
                                (let
                                 ((X26 Int (ite (= X25 6) 3 X25)))
                                 (let
                                  ((X27
                                    Int (ite
                                         (and (>= X19 3) (<= X19 6))
                                         X26
                                         X25)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X19 3) (<= X19 6))
                                          2
                                          X27)))
                                   (let
                                    ((X29
                                      Int (ite
                                           (and (>= X19 2) (<= X19 8))
                                           X28
                                           X19)))
                                    (let
                                     ((X30 Int (ite (= X29 7) 2 X29)))
                                     (let
                                      ((X31
                                        Int (ite
                                             (and (>= X19 2) (<= X19 8))
                                             X30
                                             X29)))
                                      (let
                                       ((X32 Int (ite (= X31 8) 2 X31)))
                                       (let
                                        ((X33
                                          Int (ite
                                               (and (>= X19 2) (<= X19 8))
                                               X32
                                               X31)))
                                        (let
                                         ((X34
                                           Int (ite
                                                (and (>= X19 2) (<= X19 8))
                                                0
                                                X33)))
                                         (let
                                          ((X35 Int (ite X21 X34 X19)))
                                          (let
                                           ((X36
                                             Int (ite (not (= X35 1)) 1 X35)))
                                           (let
                                            ((X37 Int (ite X21 X36 X35)))
                                            (let
                                             ((X38
                                               Bool (and
                                                     (= X37 1)
                                                     (and
                                                      top.usr.onOff_a_1
                                                      (not X21)))))
                                             (let
                                              ((X39
                                                Int (ite (= X37 1) 0 X37)))
                                              (let
                                               ((X40 Int (ite X38 X39 X37)))
                                               (let
                                                ((X41
                                                  Int (ite
                                                       (not (= X35 1))
                                                       1
                                                       X18)))
                                                (let
                                                 ((X42 Int (ite X21 X41 X18)))
                                                 (let
                                                  ((X43
                                                    Int (ite
                                                         (not
                                                          (and
                                                           (>= X40 2)
                                                           (<= X40 8)))
                                                         2
                                                         X40)))
                                                  (let
                                                   ((X44
                                                     Bool (and
                                                           (not
                                                            (and
                                                             (>= X40 2)
                                                             (<= X40 8)))
                                                           (and
                                                            (>= X43 2)
                                                            (<= X43 8)))))
                                                   (let
                                                    ((X45
                                                      Int (ite
                                                           (not (= X43 7))
                                                           2
                                                           X42)))
                                                    (let
                                                     ((X46
                                                       Int (ite X44 X45 X42)))
                                                     (let
                                                      ((X47
                                                        Int (ite X38 X46 X42)))
                                                      (let
                                                       ((X48
                                                         Int (ite
                                                              (not (= X43 7))
                                                              7
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          Int (ite
                                                               X44
                                                               X48
                                                               X43)))
                                                        (let
                                                         ((X50
                                                           Int (ite
                                                                X38
                                                                X49
                                                                X40)))
                                                         (let
                                                          ((X51
                                                            Bool (or X38 X21)))
                                                          (let
                                                           ((X52
                                                             Bool (and
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
                                                              Int (ite
                                                                   (= X50 4)
                                                                   3
                                                                   X50)))
                                                            (let
                                                             ((X54
                                                               Int (ite
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
                                                                Int (ite
                                                                    (= X54 5)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (and
                                                                   (>= X50 3)
                                                                   (<= X50 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   Int 
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
                                                                    Int 
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
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X59
                                                                    X50)))
                                                                   (let
                                                                    ((X61
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    8
                                                                    X60)))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X61
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X62 8)
                                                                    2
                                                                    X62)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X64
                                                                    X62)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X66)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    X68
                                                                    X66)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X69
                                                                    X65)))
                                                                    (let
                                                                    ((X71
                                                                    Bool 
                                                                    (or
                                                                    X63
                                                                    X52)))
                                                                    (let
                                                                    ((X72
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X70 8)
                                                                    2
                                                                    X70)))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X73
                                                                    X70)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X76
                                                                    X77
                                                                    X75)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X78
                                                                    X74)))
                                                                    (let
                                                                    ((X80
                                                                    Bool 
                                                                    (or
                                                                    X72
                                                                    X71)))
                                                                    (let
                                                                    ((X81
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X79 7)
                                                                    2
                                                                    X79)))
                                                                    (let
                                                                    ((X83
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X82
                                                                    X79)))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    3
                                                                    X47)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X84
                                                                    X47)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X85)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    X86
                                                                    X85)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X87
                                                                    X85)))
                                                                    (let
                                                                    ((X89
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X88)))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    X76
                                                                    X89
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X91)))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X91)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X95
                                                                    X91)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X97
                                                                    X92)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X98
                                                                    X83)))
                                                                    (let
                                                                    ((X100
                                                                    Bool 
                                                                    (or
                                                                    X81
                                                                    X80)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X99 4)
                                                                    3
                                                                    X99)))
                                                                    (let
                                                                    ((X103
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X102
                                                                    X99)))
                                                                    (let
                                                                    ((X104
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X103)))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X106
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X107
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    5
                                                                    X108)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X109
                                                                    X108)))
                                                                    (let
                                                                    ((X111
                                                                    Bool 
                                                                    (or
                                                                    X106
                                                                    X101)))
                                                                    (let
                                                                    ((X112
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    3
                                                                    X110)))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X113
                                                                    X110)))
                                                                    (let
                                                                    ((X115
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    6
                                                                    X114)))
                                                                    (let
                                                                    ((X116
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X115
                                                                    X114)))
                                                                    (let
                                                                    ((X117
                                                                    Bool 
                                                                    (or
                                                                    X112
                                                                    X111)))
                                                                    (let
                                                                    ((X118
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    3
                                                                    X116)))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X119
                                                                    X116)))
                                                                    (let
                                                                    ((X121
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X120)))
                                                                    (let
                                                                    ((X122
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X121
                                                                    X120)))
                                                                    (let
                                                                    ((X123
                                                                    Bool 
                                                                    (or
                                                                    X118
                                                                    X117)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    3
                                                                    X122)))
                                                                    (let
                                                                    ((X126
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X125
                                                                    X122)))
                                                                    (let
                                                                    ((X127
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X96)))
                                                                    (let
                                                                    ((X128
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X127
                                                                    X96)))
                                                                    (let
                                                                    ((X129
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    6
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X129
                                                                    X128)))
                                                                    (let
                                                                    ((X131
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    5
                                                                    X130)))
                                                                    (let
                                                                    ((X132
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X131
                                                                    X130)))
                                                                    (let
                                                                    ((X133
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X132)))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X133
                                                                    X132)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X134)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X135
                                                                    X134)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
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
                                                                    Int 
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
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    6)))
                                                                    (let
                                                                    ((X140
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    5)))
                                                                    (let
                                                                    ((X141
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    4)))
                                                                    (let
                                                                    ((X142
                                                                    Bool 
                                                                    (or
                                                                    (or
                                                                    X141
                                                                    X140)
                                                                    X139)))
                                                                    (let
                                                                    ((X143
                                                                    Bool top.impl.usr.zz162_a_0))
                                                                    (let
                                                                    ((X144
                                                                    Bool 
                                                                    (ite
                                                                    (= X19 4)
                                                                    false
                                                                    X143)))
                                                                    (let
                                                                    ((X145
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Bool 
                                                                    (ite
                                                                    X21
                                                                    X146
                                                                    X143)))
                                                                    (let
                                                                    ((X148
                                                                    Bool 
                                                                    (ite
                                                                    (= X50 4)
                                                                    false
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    Bool 
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
                                                                    Bool 
                                                                    (ite
                                                                    X52
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    Bool 
                                                                    (ite
                                                                    X63
                                                                    true
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Bool 
                                                                    (ite
                                                                    X81
                                                                    true
                                                                    X151)))
                                                                    (let
                                                                    ((X153
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X126)))
                                                                    (let
                                                                    ((X154
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X153
                                                                    X126)))
                                                                    (let
                                                                    ((X155
                                                                    Bool 
                                                                    (or
                                                                    X124
                                                                    X123)))
                                                                    (let
                                                                    ((X156
                                                                    Bool 
                                                                    (ite
                                                                    (= X99 4)
                                                                    false
                                                                    X152)))
                                                                    (let
                                                                    ((X157
                                                                    Bool 
                                                                    (ite
                                                                    X101
                                                                    X156
                                                                    X152)))
                                                                    (let
                                                                    ((X158
                                                                    Bool 
                                                                    (ite
                                                                    X101
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    false
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Bool 
                                                                    (ite
                                                                    X106
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    false
                                                                    X160)))
                                                                    (let
                                                                    ((X162
                                                                    Bool 
                                                                    (ite
                                                                    X112
                                                                    X161
                                                                    X160)))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X167
                                                                    Int 
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
                                                                    Int 
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
                                                                    Int 
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
(declare-primed-var top.impl.usr.SP3c Bool)
(declare-primed-var top.impl.usr.zz155 Bool)
(declare-primed-var top.impl.usr.zz161 Int)
(declare-primed-var top.impl.usr.zz162 Bool)
(declare-primed-var top.impl.usr.zz170 Int)
(declare-primed-var top.impl.usr.zz176 Int)
(declare-primed-var top.impl.usr.zz178 Bool)
(declare-primed-var top.impl.usr.zz183 Bool)

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
   ((X1 Bool (>= top.usr.carSpeed 15.0)))
   (let
    ((X2 Bool (= top.usr.carGear 3)))
    (let
     ((X3
       Bool (and
             (and
              (and (and (not top.usr.cancel) (not top.usr.brakePedal)) X2)
              X1)
             top.usr.validInputs)))
     (let
      ((X4 Bool true))
      (and
       (= top.impl.usr.zz183 top.usr.decelSet)
       (let
        ((X5 Bool (and (not X4) top.impl.usr.zz183)))
        (let
         ((X6 Bool true))
         (and
          (= top.impl.usr.zz178 top.usr.accelResume)
          (let
           ((X7 Bool (and (not X6) top.impl.usr.zz178)))
           (let
            ((X8 Int 0))
            (let
             ((X9 Int (+ X8 1)))
             (let
              ((X10 Int (ite top.usr.decelSet X9 0)))
              (let
               ((X11 Int (ite (>= 0 X10) 0 X10)))
               (and
                (= top.impl.usr.zz176 (ite (<= X11 20) X11 20))
                (let
                 ((X12 Bool (= top.impl.usr.zz176 20)))
                 (let
                  ((X13 Int 0))
                  (let
                   ((X14 Int (+ X13 1)))
                   (let
                    ((X15 Int (ite top.usr.accelResume X14 0)))
                    (let
                     ((X16 Int (ite (>= 0 X15) 0 X15)))
                     (and
                      (= top.impl.usr.zz170 (ite (<= X16 20) X16 20))
                      (let
                       ((X17 Bool (= top.impl.usr.zz170 20)))
                       (let
                        ((X18 Int 0))
                        (let
                         ((X19 Int 0))
                         (and
                          (= top.impl.usr.zz155 true)
                          (let
                           ((X20 Int (ite (not (= X19 1)) 1 X18)))
                           (let
                            ((X21
                              Bool (and
                                    (and (>= X19 2) (<= X19 8))
                                    (not top.usr.onOff))))
                            (let
                             ((X22 Int (ite (= X19 4) 3 X19)))
                             (let
                              ((X23
                                Int (ite (and (>= X19 3) (<= X19 6)) X22 X19)))
                              (let
                               ((X24 Int (ite (= X23 5) 3 X23)))
                               (let
                                ((X25
                                  Int (ite
                                       (and (>= X19 3) (<= X19 6))
                                       X24
                                       X23)))
                                (let
                                 ((X26 Int (ite (= X25 6) 3 X25)))
                                 (let
                                  ((X27
                                    Int (ite
                                         (and (>= X19 3) (<= X19 6))
                                         X26
                                         X25)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X19 3) (<= X19 6))
                                          2
                                          X27)))
                                   (let
                                    ((X29
                                      Int (ite
                                           (and (>= X19 2) (<= X19 8))
                                           X28
                                           X19)))
                                    (let
                                     ((X30 Int (ite (= X29 7) 2 X29)))
                                     (let
                                      ((X31
                                        Int (ite
                                             (and (>= X19 2) (<= X19 8))
                                             X30
                                             X29)))
                                      (let
                                       ((X32 Int (ite (= X31 8) 2 X31)))
                                       (let
                                        ((X33
                                          Int (ite
                                               (and (>= X19 2) (<= X19 8))
                                               X32
                                               X31)))
                                        (let
                                         ((X34
                                           Int (ite
                                                (and (>= X19 2) (<= X19 8))
                                                0
                                                X33)))
                                         (let
                                          ((X35 Int (ite X21 X34 X19)))
                                          (let
                                           ((X36
                                             Int (ite (not (= X35 1)) 1 X35)))
                                           (let
                                            ((X37 Int (ite X21 X36 X35)))
                                            (let
                                             ((X38
                                               Bool (and
                                                     (= X37 1)
                                                     (and
                                                      top.usr.onOff
                                                      (not X21)))))
                                             (let
                                              ((X39
                                                Int (ite (= X37 1) 0 X37)))
                                              (let
                                               ((X40 Int (ite X38 X39 X37)))
                                               (let
                                                ((X41
                                                  Int (ite
                                                       (not (= X35 1))
                                                       1
                                                       X18)))
                                                (let
                                                 ((X42 Int (ite X21 X41 X18)))
                                                 (let
                                                  ((X43
                                                    Int (ite
                                                         (not
                                                          (and
                                                           (>= X40 2)
                                                           (<= X40 8)))
                                                         2
                                                         X40)))
                                                  (let
                                                   ((X44
                                                     Bool (and
                                                           (not
                                                            (and
                                                             (>= X40 2)
                                                             (<= X40 8)))
                                                           (and
                                                            (>= X43 2)
                                                            (<= X43 8)))))
                                                   (let
                                                    ((X45
                                                      Int (ite
                                                           (not (= X43 7))
                                                           2
                                                           X42)))
                                                    (let
                                                     ((X46
                                                       Int (ite X44 X45 X42)))
                                                     (let
                                                      ((X47
                                                        Int (ite X38 X46 X42)))
                                                      (let
                                                       ((X48
                                                         Int (ite
                                                              (not (= X43 7))
                                                              7
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          Int (ite
                                                               X44
                                                               X48
                                                               X43)))
                                                        (let
                                                         ((X50
                                                           Int (ite
                                                                X38
                                                                X49
                                                                X40)))
                                                         (let
                                                          ((X51
                                                            Bool (or X38 X21)))
                                                          (let
                                                           ((X52
                                                             Bool (and
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
                                                              Int (ite
                                                                   (= X50 4)
                                                                   3
                                                                   X50)))
                                                            (let
                                                             ((X54
                                                               Int (ite
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
                                                                Int (ite
                                                                    (= X54 5)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (and
                                                                   (>= X50 3)
                                                                   (<= X50 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   Int 
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
                                                                    Int 
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
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X59
                                                                    X50)))
                                                                   (let
                                                                    ((X61
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    8
                                                                    X60)))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X61
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X62 8)
                                                                    2
                                                                    X62)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X64
                                                                    X62)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X66)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    X68
                                                                    X66)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X69
                                                                    X65)))
                                                                    (let
                                                                    ((X71
                                                                    Bool 
                                                                    (or
                                                                    X63
                                                                    X52)))
                                                                    (let
                                                                    ((X72
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X70 8)
                                                                    2
                                                                    X70)))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X73
                                                                    X70)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X76
                                                                    X77
                                                                    X75)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X78
                                                                    X74)))
                                                                    (let
                                                                    ((X80
                                                                    Bool 
                                                                    (or
                                                                    X72
                                                                    X71)))
                                                                    (let
                                                                    ((X81
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X79 7)
                                                                    2
                                                                    X79)))
                                                                    (let
                                                                    ((X83
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X82
                                                                    X79)))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    3
                                                                    X47)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X84
                                                                    X47)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X85)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    X86
                                                                    X85)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X87
                                                                    X85)))
                                                                    (let
                                                                    ((X89
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X88)))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    X76
                                                                    X89
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X91)))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X91)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X95
                                                                    X91)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X97
                                                                    X92)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X98
                                                                    X83)))
                                                                    (let
                                                                    ((X100
                                                                    Bool 
                                                                    (or
                                                                    X81
                                                                    X80)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X99 4)
                                                                    3
                                                                    X99)))
                                                                    (let
                                                                    ((X103
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X102
                                                                    X99)))
                                                                    (let
                                                                    ((X104
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X103)))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X106
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X107
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    5
                                                                    X108)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X109
                                                                    X108)))
                                                                    (let
                                                                    ((X111
                                                                    Bool 
                                                                    (or
                                                                    X106
                                                                    X101)))
                                                                    (let
                                                                    ((X112
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    3
                                                                    X110)))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X113
                                                                    X110)))
                                                                    (let
                                                                    ((X115
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    6
                                                                    X114)))
                                                                    (let
                                                                    ((X116
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X115
                                                                    X114)))
                                                                    (let
                                                                    ((X117
                                                                    Bool 
                                                                    (or
                                                                    X112
                                                                    X111)))
                                                                    (let
                                                                    ((X118
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    3
                                                                    X116)))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X119
                                                                    X116)))
                                                                    (let
                                                                    ((X121
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X120)))
                                                                    (let
                                                                    ((X122
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X121
                                                                    X120)))
                                                                    (let
                                                                    ((X123
                                                                    Bool 
                                                                    (or
                                                                    X118
                                                                    X117)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    3
                                                                    X122)))
                                                                    (let
                                                                    ((X126
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X125
                                                                    X122)))
                                                                    (let
                                                                    ((X127
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X96)))
                                                                    (let
                                                                    ((X128
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X127
                                                                    X96)))
                                                                    (let
                                                                    ((X129
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    6
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X129
                                                                    X128)))
                                                                    (let
                                                                    ((X131
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    5
                                                                    X130)))
                                                                    (let
                                                                    ((X132
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X131
                                                                    X130)))
                                                                    (let
                                                                    ((X133
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X132)))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X133
                                                                    X132)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X134)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X135
                                                                    X134)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
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
                                                                    Int 
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
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    6)))
                                                                    (let
                                                                    ((X140
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    5)))
                                                                    (let
                                                                    ((X141
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    4)))
                                                                    (let
                                                                    ((X142
                                                                    Bool 
                                                                    (or
                                                                    (or
                                                                    X141
                                                                    X140)
                                                                    X139)))
                                                                    (let
                                                                    ((X143
                                                                    Bool false))
                                                                    (let
                                                                    ((X144
                                                                    Bool 
                                                                    (ite
                                                                    (= X19 4)
                                                                    false
                                                                    X143)))
                                                                    (let
                                                                    ((X145
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Bool 
                                                                    (ite
                                                                    X21
                                                                    X146
                                                                    X143)))
                                                                    (let
                                                                    ((X148
                                                                    Bool 
                                                                    (ite
                                                                    (= X50 4)
                                                                    false
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    Bool 
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
                                                                    Bool 
                                                                    (ite
                                                                    X52
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    Bool 
                                                                    (ite
                                                                    X63
                                                                    true
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Bool 
                                                                    (ite
                                                                    X81
                                                                    true
                                                                    X151)))
                                                                    (let
                                                                    ((X153
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X126)))
                                                                    (let
                                                                    ((X154
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X153
                                                                    X126)))
                                                                    (let
                                                                    ((X155
                                                                    Bool 
                                                                    (or
                                                                    X124
                                                                    X123)))
                                                                    (let
                                                                    ((X156
                                                                    Bool 
                                                                    (ite
                                                                    (= X99 4)
                                                                    false
                                                                    X152)))
                                                                    (let
                                                                    ((X157
                                                                    Bool 
                                                                    (ite
                                                                    X101
                                                                    X156
                                                                    X152)))
                                                                    (let
                                                                    ((X158
                                                                    Bool 
                                                                    (ite
                                                                    X101
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    false
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Bool 
                                                                    (ite
                                                                    X106
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    false
                                                                    X160)))
                                                                    (let
                                                                    ((X162
                                                                    Bool 
                                                                    (ite
                                                                    X112
                                                                    X161
                                                                    X160)))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X167
                                                                    Int 
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
                                                                    Int 
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
                                                                    Int 
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
   ((X1 Bool (>= top.usr.carSpeed! 15.0)))
   (let
    ((X2 Bool (= top.usr.carGear! 3)))
    (let
     ((X3
       Bool (and
             (and
              (and (and (not top.usr.cancel!) (not top.usr.brakePedal!)) X2)
              X1)
             top.usr.validInputs!)))
     (let
      ((X4 Bool top.impl.usr.zz183))
      (and
       (= top.impl.usr.zz183! top.usr.decelSet!)
       (let
        ((X5 Bool (and (not X4) top.impl.usr.zz183!)))
        (let
         ((X6 Bool top.impl.usr.zz178))
         (and
          (= top.impl.usr.zz178! top.usr.accelResume!)
          (let
           ((X7 Bool (and (not X6) top.impl.usr.zz178!)))
           (let
            ((X8 Int top.impl.usr.zz176))
            (let
             ((X9 Int (+ X8 1)))
             (let
              ((X10 Int (ite top.usr.decelSet! X9 0)))
              (let
               ((X11 Int (ite (>= 0 X10) 0 X10)))
               (and
                (= top.impl.usr.zz176! (ite (<= X11 20) X11 20))
                (let
                 ((X12 Bool (= top.impl.usr.zz176! 20)))
                 (let
                  ((X13 Int top.impl.usr.zz170))
                  (let
                   ((X14 Int (+ X13 1)))
                   (let
                    ((X15 Int (ite top.usr.accelResume! X14 0)))
                    (let
                     ((X16 Int (ite (>= 0 X15) 0 X15)))
                     (and
                      (= top.impl.usr.zz170! (ite (<= X16 20) X16 20))
                      (let
                       ((X17 Bool (= top.impl.usr.zz170! 20)))
                       (let
                        ((X18 Int top.impl.usr.mode))
                        (let
                         ((X19 Int top.impl.usr.zz161))
                         (and
                          (=
                           top.impl.usr.zz155!
                           (ite top.impl.usr.SP3c false top.impl.usr.zz155))
                          (let
                           ((X20 Int (ite (not (= X19 1)) 1 X18)))
                           (let
                            ((X21
                              Bool (and
                                    (and (>= X19 2) (<= X19 8))
                                    (not top.usr.onOff!))))
                            (let
                             ((X22 Int (ite (= X19 4) 3 X19)))
                             (let
                              ((X23
                                Int (ite (and (>= X19 3) (<= X19 6)) X22 X19)))
                              (let
                               ((X24 Int (ite (= X23 5) 3 X23)))
                               (let
                                ((X25
                                  Int (ite
                                       (and (>= X19 3) (<= X19 6))
                                       X24
                                       X23)))
                                (let
                                 ((X26 Int (ite (= X25 6) 3 X25)))
                                 (let
                                  ((X27
                                    Int (ite
                                         (and (>= X19 3) (<= X19 6))
                                         X26
                                         X25)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X19 3) (<= X19 6))
                                          2
                                          X27)))
                                   (let
                                    ((X29
                                      Int (ite
                                           (and (>= X19 2) (<= X19 8))
                                           X28
                                           X19)))
                                    (let
                                     ((X30 Int (ite (= X29 7) 2 X29)))
                                     (let
                                      ((X31
                                        Int (ite
                                             (and (>= X19 2) (<= X19 8))
                                             X30
                                             X29)))
                                      (let
                                       ((X32 Int (ite (= X31 8) 2 X31)))
                                       (let
                                        ((X33
                                          Int (ite
                                               (and (>= X19 2) (<= X19 8))
                                               X32
                                               X31)))
                                        (let
                                         ((X34
                                           Int (ite
                                                (and (>= X19 2) (<= X19 8))
                                                0
                                                X33)))
                                         (let
                                          ((X35 Int (ite X21 X34 X19)))
                                          (let
                                           ((X36
                                             Int (ite (not (= X35 1)) 1 X35)))
                                           (let
                                            ((X37 Int (ite X21 X36 X35)))
                                            (let
                                             ((X38
                                               Bool (and
                                                     (= X37 1)
                                                     (and
                                                      top.usr.onOff!
                                                      (not X21)))))
                                             (let
                                              ((X39
                                                Int (ite (= X37 1) 0 X37)))
                                              (let
                                               ((X40 Int (ite X38 X39 X37)))
                                               (let
                                                ((X41
                                                  Int (ite
                                                       (not (= X35 1))
                                                       1
                                                       X18)))
                                                (let
                                                 ((X42 Int (ite X21 X41 X18)))
                                                 (let
                                                  ((X43
                                                    Int (ite
                                                         (not
                                                          (and
                                                           (>= X40 2)
                                                           (<= X40 8)))
                                                         2
                                                         X40)))
                                                  (let
                                                   ((X44
                                                     Bool (and
                                                           (not
                                                            (and
                                                             (>= X40 2)
                                                             (<= X40 8)))
                                                           (and
                                                            (>= X43 2)
                                                            (<= X43 8)))))
                                                   (let
                                                    ((X45
                                                      Int (ite
                                                           (not (= X43 7))
                                                           2
                                                           X42)))
                                                    (let
                                                     ((X46
                                                       Int (ite X44 X45 X42)))
                                                     (let
                                                      ((X47
                                                        Int (ite X38 X46 X42)))
                                                      (let
                                                       ((X48
                                                         Int (ite
                                                              (not (= X43 7))
                                                              7
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          Int (ite
                                                               X44
                                                               X48
                                                               X43)))
                                                        (let
                                                         ((X50
                                                           Int (ite
                                                                X38
                                                                X49
                                                                X40)))
                                                         (let
                                                          ((X51
                                                            Bool (or X38 X21)))
                                                          (let
                                                           ((X52
                                                             Bool (and
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
                                                              Int (ite
                                                                   (= X50 4)
                                                                   3
                                                                   X50)))
                                                            (let
                                                             ((X54
                                                               Int (ite
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
                                                                Int (ite
                                                                    (= X54 5)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (and
                                                                   (>= X50 3)
                                                                   (<= X50 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (= X56 6)
                                                                   3
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   Int 
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
                                                                    Int 
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
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X59
                                                                    X50)))
                                                                   (let
                                                                    ((X61
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    8
                                                                    X60)))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X61
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X62 8)
                                                                    2
                                                                    X62)))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X64
                                                                    X62)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X66)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    X68
                                                                    X66)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X69
                                                                    X65)))
                                                                    (let
                                                                    ((X71
                                                                    Bool 
                                                                    (or
                                                                    X63
                                                                    X52)))
                                                                    (let
                                                                    ((X72
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X70 8)
                                                                    2
                                                                    X70)))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X73
                                                                    X70)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X75)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    X76
                                                                    X77
                                                                    X75)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X78
                                                                    X74)))
                                                                    (let
                                                                    ((X80
                                                                    Bool 
                                                                    (or
                                                                    X72
                                                                    X71)))
                                                                    (let
                                                                    ((X81
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X79 7)
                                                                    2
                                                                    X79)))
                                                                    (let
                                                                    ((X83
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X82
                                                                    X79)))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 8))
                                                                    3
                                                                    X47)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    X52
                                                                    X84
                                                                    X47)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X66 4))
                                                                    4
                                                                    X85)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    X67
                                                                    X86
                                                                    X85)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X63
                                                                    X87
                                                                    X85)))
                                                                    (let
                                                                    ((X89
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X75 4))
                                                                    4
                                                                    X88)))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    X76
                                                                    X89
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X72
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X91)))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X91)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X95
                                                                    X91)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X92 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X97
                                                                    X92)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X81
                                                                    X98
                                                                    X83)))
                                                                    (let
                                                                    ((X100
                                                                    Bool 
                                                                    (or
                                                                    X81
                                                                    X80)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (= X99 4)
                                                                    3
                                                                    X99)))
                                                                    (let
                                                                    ((X103
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X102
                                                                    X99)))
                                                                    (let
                                                                    ((X104
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X103)))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X106
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X107
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    5
                                                                    X108)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X109
                                                                    X108)))
                                                                    (let
                                                                    ((X111
                                                                    Bool 
                                                                    (or
                                                                    X106
                                                                    X101)))
                                                                    (let
                                                                    ((X112
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    3
                                                                    X110)))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X113
                                                                    X110)))
                                                                    (let
                                                                    ((X115
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    6
                                                                    X114)))
                                                                    (let
                                                                    ((X116
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X115
                                                                    X114)))
                                                                    (let
                                                                    ((X117
                                                                    Bool 
                                                                    (or
                                                                    X112
                                                                    X111)))
                                                                    (let
                                                                    ((X118
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X116
                                                                    6)
                                                                    3
                                                                    X116)))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X119
                                                                    X116)))
                                                                    (let
                                                                    ((X121
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X120)))
                                                                    (let
                                                                    ((X122
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X121
                                                                    X120)))
                                                                    (let
                                                                    ((X123
                                                                    Bool 
                                                                    (or
                                                                    X118
                                                                    X117)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X122
                                                                    5)
                                                                    3
                                                                    X122)))
                                                                    (let
                                                                    ((X126
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X125
                                                                    X122)))
                                                                    (let
                                                                    ((X127
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X103
                                                                    4))
                                                                    4
                                                                    X96)))
                                                                    (let
                                                                    ((X128
                                                                    Int 
                                                                    (ite
                                                                    X101
                                                                    X127
                                                                    X96)))
                                                                    (let
                                                                    ((X129
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X108
                                                                    5))
                                                                    6
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    Int 
                                                                    (ite
                                                                    X106
                                                                    X129
                                                                    X128)))
                                                                    (let
                                                                    ((X131
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X114
                                                                    6))
                                                                    5
                                                                    X130)))
                                                                    (let
                                                                    ((X132
                                                                    Int 
                                                                    (ite
                                                                    X112
                                                                    X131
                                                                    X130)))
                                                                    (let
                                                                    ((X133
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    4
                                                                    X132)))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    X118
                                                                    X133
                                                                    X132)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X134)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X135
                                                                    X134)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
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
                                                                    Int 
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
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    6)))
                                                                    (let
                                                                    ((X140
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    5)))
                                                                    (let
                                                                    ((X141
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    4)))
                                                                    (let
                                                                    ((X142
                                                                    Bool 
                                                                    (or
                                                                    (or
                                                                    X141
                                                                    X140)
                                                                    X139)))
                                                                    (let
                                                                    ((X143
                                                                    Bool top.impl.usr.zz162))
                                                                    (let
                                                                    ((X144
                                                                    Bool 
                                                                    (ite
                                                                    (= X19 4)
                                                                    false
                                                                    X143)))
                                                                    (let
                                                                    ((X145
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Bool 
                                                                    (ite
                                                                    X21
                                                                    X146
                                                                    X143)))
                                                                    (let
                                                                    ((X148
                                                                    Bool 
                                                                    (ite
                                                                    (= X50 4)
                                                                    false
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    Bool 
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
                                                                    Bool 
                                                                    (ite
                                                                    X52
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    Bool 
                                                                    (ite
                                                                    X63
                                                                    true
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Bool 
                                                                    (ite
                                                                    X81
                                                                    true
                                                                    X151)))
                                                                    (let
                                                                    ((X153
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X126
                                                                    4))
                                                                    4
                                                                    X126)))
                                                                    (let
                                                                    ((X154
                                                                    Int 
                                                                    (ite
                                                                    X124
                                                                    X153
                                                                    X126)))
                                                                    (let
                                                                    ((X155
                                                                    Bool 
                                                                    (or
                                                                    X124
                                                                    X123)))
                                                                    (let
                                                                    ((X156
                                                                    Bool 
                                                                    (ite
                                                                    (= X99 4)
                                                                    false
                                                                    X152)))
                                                                    (let
                                                                    ((X157
                                                                    Bool 
                                                                    (ite
                                                                    X101
                                                                    X156
                                                                    X152)))
                                                                    (let
                                                                    ((X158
                                                                    Bool 
                                                                    (ite
                                                                    X101
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    4)
                                                                    false
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Bool 
                                                                    (ite
                                                                    X106
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X110
                                                                    4)
                                                                    false
                                                                    X160)))
                                                                    (let
                                                                    ((X162
                                                                    Bool 
                                                                    (ite
                                                                    X112
                                                                    X161
                                                                    X160)))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X167
                                                                    Int 
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
                                                                    Int 
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
                                                                    Int 
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
