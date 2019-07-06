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
                        ((X18 Bool false))
                        (let
                         ((X19 Int 0))
                         (and
                          (= top.impl.usr.zz155_a_0 true)
                          (let
                           ((X20
                             Bool (and
                                   (and (>= X19 2) (<= X19 8))
                                   (not top.usr.onOff_a_0))))
                           (let
                            ((X21 Int (ite (= X19 4) 3 X19)))
                            (let
                             ((X22
                               Int (ite (and (>= X19 3) (<= X19 6)) X21 X19)))
                             (let
                              ((X23 Int (ite (= X22 5) 3 X22)))
                              (let
                               ((X24
                                 Int (ite
                                      (and (>= X19 3) (<= X19 6))
                                      X23
                                      X22)))
                               (let
                                ((X25 Int (ite (= X24 6) 3 X24)))
                                (let
                                 ((X26
                                   Int (ite
                                        (and (>= X19 3) (<= X19 6))
                                        X25
                                        X24)))
                                 (let
                                  ((X27
                                    Int (ite
                                         (and (>= X19 3) (<= X19 6))
                                         2
                                         X26)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X19 2) (<= X19 8))
                                          X27
                                          X19)))
                                   (let
                                    ((X29 Int (ite (= X28 7) 2 X28)))
                                    (let
                                     ((X30
                                       Int (ite
                                            (and (>= X19 2) (<= X19 8))
                                            X29
                                            X28)))
                                     (let
                                      ((X31 Int (ite (= X30 8) 2 X30)))
                                      (let
                                       ((X32
                                         Int (ite
                                              (and (>= X19 2) (<= X19 8))
                                              X31
                                              X30)))
                                       (let
                                        ((X33
                                          Int (ite
                                               (and (>= X19 2) (<= X19 8))
                                               0
                                               X32)))
                                        (let
                                         ((X34 Int (ite X20 X33 X19)))
                                         (let
                                          ((X35
                                            Int (ite (not (= X34 1)) 1 X34)))
                                          (let
                                           ((X36 Int (ite X20 X35 X34)))
                                           (let
                                            ((X37
                                              Bool (and
                                                    (= X36 1)
                                                    (and
                                                     top.usr.onOff_a_0
                                                     (not X20)))))
                                            (let
                                             ((X38 Int (ite (= X36 1) 0 X36)))
                                             (let
                                              ((X39 Int (ite X37 X38 X36)))
                                              (let
                                               ((X40
                                                 Int (ite
                                                      (not
                                                       (and
                                                        (>= X39 2)
                                                        (<= X39 8)))
                                                      2
                                                      X39)))
                                               (let
                                                ((X41
                                                  Bool (and
                                                        (not
                                                         (and
                                                          (>= X39 2)
                                                          (<= X39 8)))
                                                        (and
                                                         (>= X40 2)
                                                         (<= X40 8)))))
                                                (let
                                                 ((X42
                                                   Int (ite
                                                        (not (= X40 7))
                                                        7
                                                        X40)))
                                                 (let
                                                  ((X43
                                                    Int (ite X41 X42 X40)))
                                                  (let
                                                   ((X44
                                                     Int (ite X37 X43 X39)))
                                                   (let
                                                    ((X45 Bool (or X37 X20)))
                                                    (let
                                                     ((X46
                                                       Bool (ite
                                                             (= X19 4)
                                                             false
                                                             X18)))
                                                     (let
                                                      ((X47
                                                        Bool (ite
                                                              (and
                                                               (>= X19 3)
                                                               (<= X19 6))
                                                              X46
                                                              X18)))
                                                      (let
                                                       ((X48
                                                         Bool (ite
                                                               (and
                                                                (>= X19 2)
                                                                (<= X19 8))
                                                               X47
                                                               X18)))
                                                       (let
                                                        ((X49
                                                          Bool (ite
                                                                X20
                                                                X48
                                                                X18)))
                                                        (let
                                                         ((X50
                                                           Bool (and
                                                                 (and
                                                                  (>= X44 3)
                                                                  (<= X44 6))
                                                                 (not X3))))
                                                         (let
                                                          ((X51
                                                            Int (ite
                                                                 (= X44 4)
                                                                 3
                                                                 X44)))
                                                          (let
                                                           ((X52
                                                             Int (ite
                                                                  (and
                                                                   (>= X44 3)
                                                                   (<= X44 6))
                                                                  X51
                                                                  X44)))
                                                           (let
                                                            ((X53
                                                              Int (ite
                                                                   (= X52 5)
                                                                   3
                                                                   X52)))
                                                            (let
                                                             ((X54
                                                               Int (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    X53
                                                                    X52)))
                                                             (let
                                                              ((X55
                                                                Int (ite
                                                                    (= X54 6)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (and
                                                                   (>= X44 3)
                                                                   (<= X44 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                   2
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   Int 
                                                                   (ite
                                                                    X50
                                                                    X57
                                                                    X44)))
                                                                 (let
                                                                  ((X59
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X58 8))
                                                                    8
                                                                    X58)))
                                                                  (let
                                                                   ((X60
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    X59
                                                                    X58)))
                                                                   (let
                                                                    ((X61
                                                                    Bool 
                                                                    (and
                                                                    (= X60 8)
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
                                                                    (not X50)))))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (= X60 8)
                                                                    2
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X62
                                                                    X60)))
                                                                    (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X63
                                                                    3)
                                                                    (<=
                                                                    X63
                                                                    6)))
                                                                    3
                                                                    X63)))
                                                                    (let
                                                                    ((X65
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X63
                                                                    3)
                                                                    (<=
                                                                    X63
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X64
                                                                    3)
                                                                    (<=
                                                                    X64
                                                                    6)))))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X64)))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    X65
                                                                    X66
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X67
                                                                    X63)))
                                                                    (let
                                                                    ((X69
                                                                    Bool 
                                                                    (or
                                                                    X61
                                                                    X50)))
                                                                    (let
                                                                    ((X70
                                                                    Bool 
                                                                    (and
                                                                    (= X68 8)
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
                                                                    (not X69)))))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    (= X68 8)
                                                                    2
                                                                    X68)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X68)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X72
                                                                    3)
                                                                    (<=
                                                                    X72
                                                                    6)))
                                                                    3
                                                                    X72)))
                                                                    (let
                                                                    ((X74
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X72
                                                                    3)
                                                                    (<=
                                                                    X72
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X73
                                                                    3)
                                                                    (<=
                                                                    X73
                                                                    6)))))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X73 4))
                                                                    4
                                                                    X73)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X74
                                                                    X75
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X76
                                                                    X72)))
                                                                    (let
                                                                    ((X78
                                                                    Bool 
                                                                    (or
                                                                    X70
                                                                    X69)))
                                                                    (let
                                                                    ((X79
                                                                    Bool 
                                                                    (and
                                                                    (= X77 7)
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
                                                                    (not X78)))))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    (= X77 7)
                                                                    2
                                                                    X77)))
                                                                    (let
                                                                    ((X81
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X77)))
                                                                    (let
                                                                    ((X82
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X81
                                                                    3)
                                                                    (<=
                                                                    X81
                                                                    6)))
                                                                    3
                                                                    X81)))
                                                                    (let
                                                                    ((X83
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X81
                                                                    3)
                                                                    (<=
                                                                    X81
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X82
                                                                    3)
                                                                    (<=
                                                                    X82
                                                                    6)))))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X82 4))
                                                                    4
                                                                    X82)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    X83
                                                                    X84
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X85
                                                                    X81)))
                                                                    (let
                                                                    ((X87
                                                                    Bool 
                                                                    (ite
                                                                    (= X44 4)
                                                                    false
                                                                    X49)))
                                                                    (let
                                                                    ((X88
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    X87
                                                                    X49)))
                                                                    (let
                                                                    ((X89
                                                                    Bool 
                                                                    (ite
                                                                    X50
                                                                    X88
                                                                    X49)))
                                                                    (let
                                                                    ((X90
                                                                    Bool 
                                                                    (ite
                                                                    X61
                                                                    true
                                                                    X89)))
                                                                    (let
                                                                    ((X91
                                                                    Bool 
                                                                    (ite
                                                                    X79
                                                                    true
                                                                    X90)))
                                                                    (let
                                                                    ((X92
                                                                    Bool 
                                                                    (or
                                                                    X79
                                                                    X78)))
                                                                    (let
                                                                    ((X93
                                                                    Bool 
                                                                    (and
                                                                    (= X86 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X94
                                                                    Int 
                                                                    (ite
                                                                    (= X86 4)
                                                                    3
                                                                    X86)))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X86)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X95 4))
                                                                    4
                                                                    X95)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X96
                                                                    X95)))
                                                                    (let
                                                                    ((X98
                                                                    Bool 
                                                                    (and
                                                                    (= X97 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X17)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X93)))))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    (= X97 4)
                                                                    3
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X99
                                                                    X97)))
                                                                    (let
                                                                    ((X101
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X100
                                                                    5))
                                                                    5
                                                                    X100)))
                                                                    (let
                                                                    ((X102
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X103
                                                                    Bool 
                                                                    (or
                                                                    X98
                                                                    X93)))
                                                                    (let
                                                                    ((X104
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X102
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
                                                                    X103)))))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X102
                                                                    4)
                                                                    3
                                                                    X102)))
                                                                    (let
                                                                    ((X106
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X105
                                                                    X102)))
                                                                    (let
                                                                    ((X107
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X106
                                                                    6))
                                                                    6
                                                                    X106)))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X107
                                                                    X106)))
                                                                    (let
                                                                    ((X109
                                                                    Bool 
                                                                    (or
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X110
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X108
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
                                                                    X109)))))
                                                                    (let
                                                                    ((X111
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X108
                                                                    6)
                                                                    3
                                                                    X108)))
                                                                    (let
                                                                    ((X112
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X111
                                                                    X108)))
                                                                    (let
                                                                    ((X113
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X112
                                                                    4))
                                                                    4
                                                                    X112)))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X113
                                                                    X112)))
                                                                    (let
                                                                    ((X115
                                                                    Bool 
                                                                    (or
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X116
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X114
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
                                                                    X115)))))
                                                                    (let
                                                                    ((X117
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X114
                                                                    5)
                                                                    3
                                                                    X114)))
                                                                    (let
                                                                    ((X118
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X117
                                                                    X114)))
                                                                    (let
                                                                    ((X119
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X118
                                                                    4))
                                                                    4
                                                                    X118)))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X119
                                                                    X118)))
                                                                    (let
                                                                    ((X121
                                                                    Bool 
                                                                    (or
                                                                    X116
                                                                    X115)))
                                                                    (let
                                                                    ((X122
                                                                    Bool 
                                                                    (ite
                                                                    (= X86 4)
                                                                    false
                                                                    X91)))
                                                                    (let
                                                                    ((X123
                                                                    Bool 
                                                                    (ite
                                                                    X93
                                                                    X122
                                                                    X91)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
                                                                    (ite
                                                                    X93
                                                                    true
                                                                    X123)))
                                                                    (let
                                                                    ((X125
                                                                    Bool 
                                                                    (ite
                                                                    (= X97 4)
                                                                    false
                                                                    X124)))
                                                                    (let
                                                                    ((X126
                                                                    Bool 
                                                                    (ite
                                                                    X98
                                                                    X125
                                                                    X124)))
                                                                    (let
                                                                    ((X127
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X102
                                                                    4)
                                                                    false
                                                                    X126)))
                                                                    (let
                                                                    ((X128
                                                                    Bool 
                                                                    (ite
                                                                    X104
                                                                    X127
                                                                    X126)))
                                                                    (let
                                                                    ((X129
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X121)
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    false
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X129
                                                                    X91)))
                                                                    (let
                                                                    ((X131
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X130
                                                                    X49)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c_a_0
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.zz162_a_0
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    (ite
                                                                    top.impl.usr.zz155_a_0
                                                                    X18
                                                                    X131)
                                                                    X18))
                                                                    (let
                                                                    ((X132
                                                                    Bool 
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    top.impl.usr.zz162_a_0)
                                                                    0.0
                                                                    1.0)
                                                                    1.0)))
                                                                    (let
                                                                    ((X133
                                                                    Int 0))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X133)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X34 1))
                                                                    1
                                                                    X133)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    X20
                                                                    X135
                                                                    X133)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X40 7))
                                                                    2
                                                                    X136)))
                                                                    (let
                                                                    ((X138
                                                                    Int 
                                                                    (ite
                                                                    X41
                                                                    X137
                                                                    X136)))
                                                                    (let
                                                                    ((X139
                                                                    Int 
                                                                    (ite
                                                                    X37
                                                                    X138
                                                                    X136)))
                                                                    (let
                                                                    ((X140
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X58 8))
                                                                    3
                                                                    X139)))
                                                                    (let
                                                                    ((X141
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    X140
                                                                    X139)))
                                                                    (let
                                                                    ((X142
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X141)))
                                                                    (let
                                                                    ((X143
                                                                    Int 
                                                                    (ite
                                                                    X65
                                                                    X142
                                                                    X141)))
                                                                    (let
                                                                    ((X144
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X143
                                                                    X141)))
                                                                    (let
                                                                    ((X145
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X73 4))
                                                                    4
                                                                    X144)))
                                                                    (let
                                                                    ((X146
                                                                    Int 
                                                                    (ite
                                                                    X74
                                                                    X145
                                                                    X144)))
                                                                    (let
                                                                    ((X147
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X146
                                                                    X144)))
                                                                    (let
                                                                    ((X148
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X82 4))
                                                                    4
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    Int 
                                                                    (ite
                                                                    X83
                                                                    X148
                                                                    X147)))
                                                                    (let
                                                                    ((X150
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X95 4))
                                                                    4
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X151
                                                                    X150)))
                                                                    (let
                                                                    ((X153
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X100
                                                                    5))
                                                                    6
                                                                    X152)))
                                                                    (let
                                                                    ((X154
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X153
                                                                    X152)))
                                                                    (let
                                                                    ((X155
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X106
                                                                    6))
                                                                    5
                                                                    X154)))
                                                                    (let
                                                                    ((X156
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X155
                                                                    X154)))
                                                                    (let
                                                                    ((X157
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X112
                                                                    4))
                                                                    4
                                                                    X156)))
                                                                    (let
                                                                    ((X158
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X157
                                                                    X156)))
                                                                    (let
                                                                    ((X159
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X118
                                                                    4))
                                                                    4
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X160
                                                                    X150)))
                                                                    (let
                                                                    ((X162
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X161
                                                                    X139)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    (ite
                                                                    top.impl.usr.zz155_a_0
                                                                    X134
                                                                    X162)
                                                                    X133))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    4)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK_a_0
                                                                    (or
                                                                    (not
                                                                    (not
                                                                    X163))
                                                                    (not
                                                                    X132)))
                                                                    (let
                                                                    ((X164
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X165
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X120
                                                                    X86)))
                                                                    (let
                                                                    ((X166
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X165
                                                                    X44)))
                                                                    (let
                                                                    ((X167
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    (ite
                                                                    top.impl.usr.zz155_a_0
                                                                    X164
                                                                    X166)
                                                                    X19)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161_a_0
                                                                    X167)
                                                                    top.res.init_flag_a_0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
                        ((X18 Bool top.impl.usr.zz162_a_0))
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
                           ((X20
                             Bool (and
                                   (and (>= X19 2) (<= X19 8))
                                   (not top.usr.onOff_a_1))))
                           (let
                            ((X21 Int (ite (= X19 4) 3 X19)))
                            (let
                             ((X22
                               Int (ite (and (>= X19 3) (<= X19 6)) X21 X19)))
                             (let
                              ((X23 Int (ite (= X22 5) 3 X22)))
                              (let
                               ((X24
                                 Int (ite
                                      (and (>= X19 3) (<= X19 6))
                                      X23
                                      X22)))
                               (let
                                ((X25 Int (ite (= X24 6) 3 X24)))
                                (let
                                 ((X26
                                   Int (ite
                                        (and (>= X19 3) (<= X19 6))
                                        X25
                                        X24)))
                                 (let
                                  ((X27
                                    Int (ite
                                         (and (>= X19 3) (<= X19 6))
                                         2
                                         X26)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X19 2) (<= X19 8))
                                          X27
                                          X19)))
                                   (let
                                    ((X29 Int (ite (= X28 7) 2 X28)))
                                    (let
                                     ((X30
                                       Int (ite
                                            (and (>= X19 2) (<= X19 8))
                                            X29
                                            X28)))
                                     (let
                                      ((X31 Int (ite (= X30 8) 2 X30)))
                                      (let
                                       ((X32
                                         Int (ite
                                              (and (>= X19 2) (<= X19 8))
                                              X31
                                              X30)))
                                       (let
                                        ((X33
                                          Int (ite
                                               (and (>= X19 2) (<= X19 8))
                                               0
                                               X32)))
                                        (let
                                         ((X34 Int (ite X20 X33 X19)))
                                         (let
                                          ((X35
                                            Int (ite (not (= X34 1)) 1 X34)))
                                          (let
                                           ((X36 Int (ite X20 X35 X34)))
                                           (let
                                            ((X37
                                              Bool (and
                                                    (= X36 1)
                                                    (and
                                                     top.usr.onOff_a_1
                                                     (not X20)))))
                                            (let
                                             ((X38 Int (ite (= X36 1) 0 X36)))
                                             (let
                                              ((X39 Int (ite X37 X38 X36)))
                                              (let
                                               ((X40
                                                 Int (ite
                                                      (not
                                                       (and
                                                        (>= X39 2)
                                                        (<= X39 8)))
                                                      2
                                                      X39)))
                                               (let
                                                ((X41
                                                  Bool (and
                                                        (not
                                                         (and
                                                          (>= X39 2)
                                                          (<= X39 8)))
                                                        (and
                                                         (>= X40 2)
                                                         (<= X40 8)))))
                                                (let
                                                 ((X42
                                                   Int (ite
                                                        (not (= X40 7))
                                                        7
                                                        X40)))
                                                 (let
                                                  ((X43
                                                    Int (ite X41 X42 X40)))
                                                  (let
                                                   ((X44
                                                     Int (ite X37 X43 X39)))
                                                   (let
                                                    ((X45 Bool (or X37 X20)))
                                                    (let
                                                     ((X46
                                                       Bool (ite
                                                             (= X19 4)
                                                             false
                                                             X18)))
                                                     (let
                                                      ((X47
                                                        Bool (ite
                                                              (and
                                                               (>= X19 3)
                                                               (<= X19 6))
                                                              X46
                                                              X18)))
                                                      (let
                                                       ((X48
                                                         Bool (ite
                                                               (and
                                                                (>= X19 2)
                                                                (<= X19 8))
                                                               X47
                                                               X18)))
                                                       (let
                                                        ((X49
                                                          Bool (ite
                                                                X20
                                                                X48
                                                                X18)))
                                                        (let
                                                         ((X50
                                                           Bool (and
                                                                 (and
                                                                  (>= X44 3)
                                                                  (<= X44 6))
                                                                 (not X3))))
                                                         (let
                                                          ((X51
                                                            Int (ite
                                                                 (= X44 4)
                                                                 3
                                                                 X44)))
                                                          (let
                                                           ((X52
                                                             Int (ite
                                                                  (and
                                                                   (>= X44 3)
                                                                   (<= X44 6))
                                                                  X51
                                                                  X44)))
                                                           (let
                                                            ((X53
                                                              Int (ite
                                                                   (= X52 5)
                                                                   3
                                                                   X52)))
                                                            (let
                                                             ((X54
                                                               Int (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    X53
                                                                    X52)))
                                                             (let
                                                              ((X55
                                                                Int (ite
                                                                    (= X54 6)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (and
                                                                   (>= X44 3)
                                                                   (<= X44 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                   2
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   Int 
                                                                   (ite
                                                                    X50
                                                                    X57
                                                                    X44)))
                                                                 (let
                                                                  ((X59
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X58 8))
                                                                    8
                                                                    X58)))
                                                                  (let
                                                                   ((X60
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    X59
                                                                    X58)))
                                                                   (let
                                                                    ((X61
                                                                    Bool 
                                                                    (and
                                                                    (= X60 8)
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
                                                                    (not X50)))))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (= X60 8)
                                                                    2
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X62
                                                                    X60)))
                                                                    (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X63
                                                                    3)
                                                                    (<=
                                                                    X63
                                                                    6)))
                                                                    3
                                                                    X63)))
                                                                    (let
                                                                    ((X65
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X63
                                                                    3)
                                                                    (<=
                                                                    X63
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X64
                                                                    3)
                                                                    (<=
                                                                    X64
                                                                    6)))))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X64)))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    X65
                                                                    X66
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X67
                                                                    X63)))
                                                                    (let
                                                                    ((X69
                                                                    Bool 
                                                                    (or
                                                                    X61
                                                                    X50)))
                                                                    (let
                                                                    ((X70
                                                                    Bool 
                                                                    (and
                                                                    (= X68 8)
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
                                                                    (not X69)))))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    (= X68 8)
                                                                    2
                                                                    X68)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X68)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X72
                                                                    3)
                                                                    (<=
                                                                    X72
                                                                    6)))
                                                                    3
                                                                    X72)))
                                                                    (let
                                                                    ((X74
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X72
                                                                    3)
                                                                    (<=
                                                                    X72
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X73
                                                                    3)
                                                                    (<=
                                                                    X73
                                                                    6)))))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X73 4))
                                                                    4
                                                                    X73)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X74
                                                                    X75
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X76
                                                                    X72)))
                                                                    (let
                                                                    ((X78
                                                                    Bool 
                                                                    (or
                                                                    X70
                                                                    X69)))
                                                                    (let
                                                                    ((X79
                                                                    Bool 
                                                                    (and
                                                                    (= X77 7)
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
                                                                    (not X78)))))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    (= X77 7)
                                                                    2
                                                                    X77)))
                                                                    (let
                                                                    ((X81
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X77)))
                                                                    (let
                                                                    ((X82
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X81
                                                                    3)
                                                                    (<=
                                                                    X81
                                                                    6)))
                                                                    3
                                                                    X81)))
                                                                    (let
                                                                    ((X83
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X81
                                                                    3)
                                                                    (<=
                                                                    X81
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X82
                                                                    3)
                                                                    (<=
                                                                    X82
                                                                    6)))))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X82 4))
                                                                    4
                                                                    X82)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    X83
                                                                    X84
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X85
                                                                    X81)))
                                                                    (let
                                                                    ((X87
                                                                    Bool 
                                                                    (ite
                                                                    (= X44 4)
                                                                    false
                                                                    X49)))
                                                                    (let
                                                                    ((X88
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    X87
                                                                    X49)))
                                                                    (let
                                                                    ((X89
                                                                    Bool 
                                                                    (ite
                                                                    X50
                                                                    X88
                                                                    X49)))
                                                                    (let
                                                                    ((X90
                                                                    Bool 
                                                                    (ite
                                                                    X61
                                                                    true
                                                                    X89)))
                                                                    (let
                                                                    ((X91
                                                                    Bool 
                                                                    (ite
                                                                    X79
                                                                    true
                                                                    X90)))
                                                                    (let
                                                                    ((X92
                                                                    Bool 
                                                                    (or
                                                                    X79
                                                                    X78)))
                                                                    (let
                                                                    ((X93
                                                                    Bool 
                                                                    (and
                                                                    (= X86 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X94
                                                                    Int 
                                                                    (ite
                                                                    (= X86 4)
                                                                    3
                                                                    X86)))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X86)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X95 4))
                                                                    4
                                                                    X95)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X96
                                                                    X95)))
                                                                    (let
                                                                    ((X98
                                                                    Bool 
                                                                    (and
                                                                    (= X97 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X17)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X93)))))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    (= X97 4)
                                                                    3
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X99
                                                                    X97)))
                                                                    (let
                                                                    ((X101
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X100
                                                                    5))
                                                                    5
                                                                    X100)))
                                                                    (let
                                                                    ((X102
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X103
                                                                    Bool 
                                                                    (or
                                                                    X98
                                                                    X93)))
                                                                    (let
                                                                    ((X104
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X102
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
                                                                    X103)))))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X102
                                                                    4)
                                                                    3
                                                                    X102)))
                                                                    (let
                                                                    ((X106
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X105
                                                                    X102)))
                                                                    (let
                                                                    ((X107
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X106
                                                                    6))
                                                                    6
                                                                    X106)))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X107
                                                                    X106)))
                                                                    (let
                                                                    ((X109
                                                                    Bool 
                                                                    (or
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X110
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X108
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
                                                                    X109)))))
                                                                    (let
                                                                    ((X111
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X108
                                                                    6)
                                                                    3
                                                                    X108)))
                                                                    (let
                                                                    ((X112
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X111
                                                                    X108)))
                                                                    (let
                                                                    ((X113
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X112
                                                                    4))
                                                                    4
                                                                    X112)))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X113
                                                                    X112)))
                                                                    (let
                                                                    ((X115
                                                                    Bool 
                                                                    (or
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X116
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X114
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
                                                                    X115)))))
                                                                    (let
                                                                    ((X117
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X114
                                                                    5)
                                                                    3
                                                                    X114)))
                                                                    (let
                                                                    ((X118
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X117
                                                                    X114)))
                                                                    (let
                                                                    ((X119
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X118
                                                                    4))
                                                                    4
                                                                    X118)))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X119
                                                                    X118)))
                                                                    (let
                                                                    ((X121
                                                                    Bool 
                                                                    (or
                                                                    X116
                                                                    X115)))
                                                                    (let
                                                                    ((X122
                                                                    Bool 
                                                                    (ite
                                                                    (= X86 4)
                                                                    false
                                                                    X91)))
                                                                    (let
                                                                    ((X123
                                                                    Bool 
                                                                    (ite
                                                                    X93
                                                                    X122
                                                                    X91)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
                                                                    (ite
                                                                    X93
                                                                    true
                                                                    X123)))
                                                                    (let
                                                                    ((X125
                                                                    Bool 
                                                                    (ite
                                                                    (= X97 4)
                                                                    false
                                                                    X124)))
                                                                    (let
                                                                    ((X126
                                                                    Bool 
                                                                    (ite
                                                                    X98
                                                                    X125
                                                                    X124)))
                                                                    (let
                                                                    ((X127
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X102
                                                                    4)
                                                                    false
                                                                    X126)))
                                                                    (let
                                                                    ((X128
                                                                    Bool 
                                                                    (ite
                                                                    X104
                                                                    X127
                                                                    X126)))
                                                                    (let
                                                                    ((X129
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X121)
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    false
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X129
                                                                    X91)))
                                                                    (let
                                                                    ((X131
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X130
                                                                    X49)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c_a_1
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.zz162_a_1
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_1
                                                                    (ite
                                                                    top.impl.usr.zz155_a_1
                                                                    X18
                                                                    X131)
                                                                    X18))
                                                                    (let
                                                                    ((X132
                                                                    Bool 
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    top.impl.usr.zz162_a_1)
                                                                    0.0
                                                                    1.0)
                                                                    1.0)))
                                                                    (let
                                                                    ((X133
                                                                    Int top.impl.usr.mode_a_0))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X133)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X34 1))
                                                                    1
                                                                    X133)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    X20
                                                                    X135
                                                                    X133)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X40 7))
                                                                    2
                                                                    X136)))
                                                                    (let
                                                                    ((X138
                                                                    Int 
                                                                    (ite
                                                                    X41
                                                                    X137
                                                                    X136)))
                                                                    (let
                                                                    ((X139
                                                                    Int 
                                                                    (ite
                                                                    X37
                                                                    X138
                                                                    X136)))
                                                                    (let
                                                                    ((X140
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X58 8))
                                                                    3
                                                                    X139)))
                                                                    (let
                                                                    ((X141
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    X140
                                                                    X139)))
                                                                    (let
                                                                    ((X142
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X141)))
                                                                    (let
                                                                    ((X143
                                                                    Int 
                                                                    (ite
                                                                    X65
                                                                    X142
                                                                    X141)))
                                                                    (let
                                                                    ((X144
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X143
                                                                    X141)))
                                                                    (let
                                                                    ((X145
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X73 4))
                                                                    4
                                                                    X144)))
                                                                    (let
                                                                    ((X146
                                                                    Int 
                                                                    (ite
                                                                    X74
                                                                    X145
                                                                    X144)))
                                                                    (let
                                                                    ((X147
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X146
                                                                    X144)))
                                                                    (let
                                                                    ((X148
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X82 4))
                                                                    4
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    Int 
                                                                    (ite
                                                                    X83
                                                                    X148
                                                                    X147)))
                                                                    (let
                                                                    ((X150
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X95 4))
                                                                    4
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X151
                                                                    X150)))
                                                                    (let
                                                                    ((X153
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X100
                                                                    5))
                                                                    6
                                                                    X152)))
                                                                    (let
                                                                    ((X154
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X153
                                                                    X152)))
                                                                    (let
                                                                    ((X155
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X106
                                                                    6))
                                                                    5
                                                                    X154)))
                                                                    (let
                                                                    ((X156
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X155
                                                                    X154)))
                                                                    (let
                                                                    ((X157
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X112
                                                                    4))
                                                                    4
                                                                    X156)))
                                                                    (let
                                                                    ((X158
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X157
                                                                    X156)))
                                                                    (let
                                                                    ((X159
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X118
                                                                    4))
                                                                    4
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X160
                                                                    X150)))
                                                                    (let
                                                                    ((X162
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X161
                                                                    X139)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_1
                                                                    (ite
                                                                    top.impl.usr.zz155_a_1
                                                                    X134
                                                                    X162)
                                                                    X133))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    4)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK_a_1
                                                                    (or
                                                                    (not
                                                                    (not
                                                                    X163))
                                                                    (not
                                                                    X132)))
                                                                    (let
                                                                    ((X164
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X165
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X120
                                                                    X86)))
                                                                    (let
                                                                    ((X166
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X165
                                                                    X44)))
                                                                    (let
                                                                    ((X167
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_1
                                                                    (ite
                                                                    top.impl.usr.zz155_a_1
                                                                    X164
                                                                    X166)
                                                                    X19)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161_a_1
                                                                    X167)
                                                                    (not
                                                                    top.res.init_flag_a_1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
                        ((X18 Bool false))
                        (let
                         ((X19 Int 0))
                         (and
                          (= top.impl.usr.zz155 true)
                          (let
                           ((X20
                             Bool (and
                                   (and (>= X19 2) (<= X19 8))
                                   (not top.usr.onOff))))
                           (let
                            ((X21 Int (ite (= X19 4) 3 X19)))
                            (let
                             ((X22
                               Int (ite (and (>= X19 3) (<= X19 6)) X21 X19)))
                             (let
                              ((X23 Int (ite (= X22 5) 3 X22)))
                              (let
                               ((X24
                                 Int (ite
                                      (and (>= X19 3) (<= X19 6))
                                      X23
                                      X22)))
                               (let
                                ((X25 Int (ite (= X24 6) 3 X24)))
                                (let
                                 ((X26
                                   Int (ite
                                        (and (>= X19 3) (<= X19 6))
                                        X25
                                        X24)))
                                 (let
                                  ((X27
                                    Int (ite
                                         (and (>= X19 3) (<= X19 6))
                                         2
                                         X26)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X19 2) (<= X19 8))
                                          X27
                                          X19)))
                                   (let
                                    ((X29 Int (ite (= X28 7) 2 X28)))
                                    (let
                                     ((X30
                                       Int (ite
                                            (and (>= X19 2) (<= X19 8))
                                            X29
                                            X28)))
                                     (let
                                      ((X31 Int (ite (= X30 8) 2 X30)))
                                      (let
                                       ((X32
                                         Int (ite
                                              (and (>= X19 2) (<= X19 8))
                                              X31
                                              X30)))
                                       (let
                                        ((X33
                                          Int (ite
                                               (and (>= X19 2) (<= X19 8))
                                               0
                                               X32)))
                                        (let
                                         ((X34 Int (ite X20 X33 X19)))
                                         (let
                                          ((X35
                                            Int (ite (not (= X34 1)) 1 X34)))
                                          (let
                                           ((X36 Int (ite X20 X35 X34)))
                                           (let
                                            ((X37
                                              Bool (and
                                                    (= X36 1)
                                                    (and
                                                     top.usr.onOff
                                                     (not X20)))))
                                            (let
                                             ((X38 Int (ite (= X36 1) 0 X36)))
                                             (let
                                              ((X39 Int (ite X37 X38 X36)))
                                              (let
                                               ((X40
                                                 Int (ite
                                                      (not
                                                       (and
                                                        (>= X39 2)
                                                        (<= X39 8)))
                                                      2
                                                      X39)))
                                               (let
                                                ((X41
                                                  Bool (and
                                                        (not
                                                         (and
                                                          (>= X39 2)
                                                          (<= X39 8)))
                                                        (and
                                                         (>= X40 2)
                                                         (<= X40 8)))))
                                                (let
                                                 ((X42
                                                   Int (ite
                                                        (not (= X40 7))
                                                        7
                                                        X40)))
                                                 (let
                                                  ((X43
                                                    Int (ite X41 X42 X40)))
                                                  (let
                                                   ((X44
                                                     Int (ite X37 X43 X39)))
                                                   (let
                                                    ((X45 Bool (or X37 X20)))
                                                    (let
                                                     ((X46
                                                       Bool (ite
                                                             (= X19 4)
                                                             false
                                                             X18)))
                                                     (let
                                                      ((X47
                                                        Bool (ite
                                                              (and
                                                               (>= X19 3)
                                                               (<= X19 6))
                                                              X46
                                                              X18)))
                                                      (let
                                                       ((X48
                                                         Bool (ite
                                                               (and
                                                                (>= X19 2)
                                                                (<= X19 8))
                                                               X47
                                                               X18)))
                                                       (let
                                                        ((X49
                                                          Bool (ite
                                                                X20
                                                                X48
                                                                X18)))
                                                        (let
                                                         ((X50
                                                           Bool (and
                                                                 (and
                                                                  (>= X44 3)
                                                                  (<= X44 6))
                                                                 (not X3))))
                                                         (let
                                                          ((X51
                                                            Int (ite
                                                                 (= X44 4)
                                                                 3
                                                                 X44)))
                                                          (let
                                                           ((X52
                                                             Int (ite
                                                                  (and
                                                                   (>= X44 3)
                                                                   (<= X44 6))
                                                                  X51
                                                                  X44)))
                                                           (let
                                                            ((X53
                                                              Int (ite
                                                                   (= X52 5)
                                                                   3
                                                                   X52)))
                                                            (let
                                                             ((X54
                                                               Int (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    X53
                                                                    X52)))
                                                             (let
                                                              ((X55
                                                                Int (ite
                                                                    (= X54 6)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (and
                                                                   (>= X44 3)
                                                                   (<= X44 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                   2
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   Int 
                                                                   (ite
                                                                    X50
                                                                    X57
                                                                    X44)))
                                                                 (let
                                                                  ((X59
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X58 8))
                                                                    8
                                                                    X58)))
                                                                  (let
                                                                   ((X60
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    X59
                                                                    X58)))
                                                                   (let
                                                                    ((X61
                                                                    Bool 
                                                                    (and
                                                                    (= X60 8)
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
                                                                    (not X50)))))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (= X60 8)
                                                                    2
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X62
                                                                    X60)))
                                                                    (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X63
                                                                    3)
                                                                    (<=
                                                                    X63
                                                                    6)))
                                                                    3
                                                                    X63)))
                                                                    (let
                                                                    ((X65
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X63
                                                                    3)
                                                                    (<=
                                                                    X63
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X64
                                                                    3)
                                                                    (<=
                                                                    X64
                                                                    6)))))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X64)))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    X65
                                                                    X66
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X67
                                                                    X63)))
                                                                    (let
                                                                    ((X69
                                                                    Bool 
                                                                    (or
                                                                    X61
                                                                    X50)))
                                                                    (let
                                                                    ((X70
                                                                    Bool 
                                                                    (and
                                                                    (= X68 8)
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
                                                                    (not X69)))))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    (= X68 8)
                                                                    2
                                                                    X68)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X68)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X72
                                                                    3)
                                                                    (<=
                                                                    X72
                                                                    6)))
                                                                    3
                                                                    X72)))
                                                                    (let
                                                                    ((X74
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X72
                                                                    3)
                                                                    (<=
                                                                    X72
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X73
                                                                    3)
                                                                    (<=
                                                                    X73
                                                                    6)))))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X73 4))
                                                                    4
                                                                    X73)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X74
                                                                    X75
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X76
                                                                    X72)))
                                                                    (let
                                                                    ((X78
                                                                    Bool 
                                                                    (or
                                                                    X70
                                                                    X69)))
                                                                    (let
                                                                    ((X79
                                                                    Bool 
                                                                    (and
                                                                    (= X77 7)
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
                                                                    (not X78)))))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    (= X77 7)
                                                                    2
                                                                    X77)))
                                                                    (let
                                                                    ((X81
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X77)))
                                                                    (let
                                                                    ((X82
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X81
                                                                    3)
                                                                    (<=
                                                                    X81
                                                                    6)))
                                                                    3
                                                                    X81)))
                                                                    (let
                                                                    ((X83
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X81
                                                                    3)
                                                                    (<=
                                                                    X81
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X82
                                                                    3)
                                                                    (<=
                                                                    X82
                                                                    6)))))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X82 4))
                                                                    4
                                                                    X82)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    X83
                                                                    X84
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X85
                                                                    X81)))
                                                                    (let
                                                                    ((X87
                                                                    Bool 
                                                                    (ite
                                                                    (= X44 4)
                                                                    false
                                                                    X49)))
                                                                    (let
                                                                    ((X88
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    X87
                                                                    X49)))
                                                                    (let
                                                                    ((X89
                                                                    Bool 
                                                                    (ite
                                                                    X50
                                                                    X88
                                                                    X49)))
                                                                    (let
                                                                    ((X90
                                                                    Bool 
                                                                    (ite
                                                                    X61
                                                                    true
                                                                    X89)))
                                                                    (let
                                                                    ((X91
                                                                    Bool 
                                                                    (ite
                                                                    X79
                                                                    true
                                                                    X90)))
                                                                    (let
                                                                    ((X92
                                                                    Bool 
                                                                    (or
                                                                    X79
                                                                    X78)))
                                                                    (let
                                                                    ((X93
                                                                    Bool 
                                                                    (and
                                                                    (= X86 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X94
                                                                    Int 
                                                                    (ite
                                                                    (= X86 4)
                                                                    3
                                                                    X86)))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X86)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X95 4))
                                                                    4
                                                                    X95)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X96
                                                                    X95)))
                                                                    (let
                                                                    ((X98
                                                                    Bool 
                                                                    (and
                                                                    (= X97 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X17)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X93)))))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    (= X97 4)
                                                                    3
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X99
                                                                    X97)))
                                                                    (let
                                                                    ((X101
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X100
                                                                    5))
                                                                    5
                                                                    X100)))
                                                                    (let
                                                                    ((X102
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X103
                                                                    Bool 
                                                                    (or
                                                                    X98
                                                                    X93)))
                                                                    (let
                                                                    ((X104
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X102
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
                                                                    X103)))))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X102
                                                                    4)
                                                                    3
                                                                    X102)))
                                                                    (let
                                                                    ((X106
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X105
                                                                    X102)))
                                                                    (let
                                                                    ((X107
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X106
                                                                    6))
                                                                    6
                                                                    X106)))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X107
                                                                    X106)))
                                                                    (let
                                                                    ((X109
                                                                    Bool 
                                                                    (or
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X110
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X108
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
                                                                    X109)))))
                                                                    (let
                                                                    ((X111
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X108
                                                                    6)
                                                                    3
                                                                    X108)))
                                                                    (let
                                                                    ((X112
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X111
                                                                    X108)))
                                                                    (let
                                                                    ((X113
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X112
                                                                    4))
                                                                    4
                                                                    X112)))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X113
                                                                    X112)))
                                                                    (let
                                                                    ((X115
                                                                    Bool 
                                                                    (or
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X116
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X114
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
                                                                    X115)))))
                                                                    (let
                                                                    ((X117
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X114
                                                                    5)
                                                                    3
                                                                    X114)))
                                                                    (let
                                                                    ((X118
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X117
                                                                    X114)))
                                                                    (let
                                                                    ((X119
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X118
                                                                    4))
                                                                    4
                                                                    X118)))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X119
                                                                    X118)))
                                                                    (let
                                                                    ((X121
                                                                    Bool 
                                                                    (or
                                                                    X116
                                                                    X115)))
                                                                    (let
                                                                    ((X122
                                                                    Bool 
                                                                    (ite
                                                                    (= X86 4)
                                                                    false
                                                                    X91)))
                                                                    (let
                                                                    ((X123
                                                                    Bool 
                                                                    (ite
                                                                    X93
                                                                    X122
                                                                    X91)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
                                                                    (ite
                                                                    X93
                                                                    true
                                                                    X123)))
                                                                    (let
                                                                    ((X125
                                                                    Bool 
                                                                    (ite
                                                                    (= X97 4)
                                                                    false
                                                                    X124)))
                                                                    (let
                                                                    ((X126
                                                                    Bool 
                                                                    (ite
                                                                    X98
                                                                    X125
                                                                    X124)))
                                                                    (let
                                                                    ((X127
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X102
                                                                    4)
                                                                    false
                                                                    X126)))
                                                                    (let
                                                                    ((X128
                                                                    Bool 
                                                                    (ite
                                                                    X104
                                                                    X127
                                                                    X126)))
                                                                    (let
                                                                    ((X129
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X121)
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    false
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X129
                                                                    X91)))
                                                                    (let
                                                                    ((X131
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X130
                                                                    X49)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.zz162
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    (ite
                                                                    top.impl.usr.zz155
                                                                    X18
                                                                    X131)
                                                                    X18))
                                                                    (let
                                                                    ((X132
                                                                    Bool 
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    top.impl.usr.zz162)
                                                                    0.0
                                                                    1.0)
                                                                    1.0)))
                                                                    (let
                                                                    ((X133
                                                                    Int 0))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X133)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X34 1))
                                                                    1
                                                                    X133)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    X20
                                                                    X135
                                                                    X133)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X40 7))
                                                                    2
                                                                    X136)))
                                                                    (let
                                                                    ((X138
                                                                    Int 
                                                                    (ite
                                                                    X41
                                                                    X137
                                                                    X136)))
                                                                    (let
                                                                    ((X139
                                                                    Int 
                                                                    (ite
                                                                    X37
                                                                    X138
                                                                    X136)))
                                                                    (let
                                                                    ((X140
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X58 8))
                                                                    3
                                                                    X139)))
                                                                    (let
                                                                    ((X141
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    X140
                                                                    X139)))
                                                                    (let
                                                                    ((X142
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X141)))
                                                                    (let
                                                                    ((X143
                                                                    Int 
                                                                    (ite
                                                                    X65
                                                                    X142
                                                                    X141)))
                                                                    (let
                                                                    ((X144
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X143
                                                                    X141)))
                                                                    (let
                                                                    ((X145
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X73 4))
                                                                    4
                                                                    X144)))
                                                                    (let
                                                                    ((X146
                                                                    Int 
                                                                    (ite
                                                                    X74
                                                                    X145
                                                                    X144)))
                                                                    (let
                                                                    ((X147
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X146
                                                                    X144)))
                                                                    (let
                                                                    ((X148
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X82 4))
                                                                    4
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    Int 
                                                                    (ite
                                                                    X83
                                                                    X148
                                                                    X147)))
                                                                    (let
                                                                    ((X150
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X95 4))
                                                                    4
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X151
                                                                    X150)))
                                                                    (let
                                                                    ((X153
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X100
                                                                    5))
                                                                    6
                                                                    X152)))
                                                                    (let
                                                                    ((X154
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X153
                                                                    X152)))
                                                                    (let
                                                                    ((X155
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X106
                                                                    6))
                                                                    5
                                                                    X154)))
                                                                    (let
                                                                    ((X156
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X155
                                                                    X154)))
                                                                    (let
                                                                    ((X157
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X112
                                                                    4))
                                                                    4
                                                                    X156)))
                                                                    (let
                                                                    ((X158
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X157
                                                                    X156)))
                                                                    (let
                                                                    ((X159
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X118
                                                                    4))
                                                                    4
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X160
                                                                    X150)))
                                                                    (let
                                                                    ((X162
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X161
                                                                    X139)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    (ite
                                                                    top.impl.usr.zz155
                                                                    X134
                                                                    X162)
                                                                    X133))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    4)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK
                                                                    (or
                                                                    (not
                                                                    (not
                                                                    X163))
                                                                    (not
                                                                    X132)))
                                                                    (let
                                                                    ((X164
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X165
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X120
                                                                    X86)))
                                                                    (let
                                                                    ((X166
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X165
                                                                    X44)))
                                                                    (let
                                                                    ((X167
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    (ite
                                                                    top.impl.usr.zz155
                                                                    X164
                                                                    X166)
                                                                    X19)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161
                                                                    X167)
                                                                    top.res.init_flag))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
                        ((X18 Bool top.impl.usr.zz162))
                        (let
                         ((X19 Int top.impl.usr.zz161))
                         (and
                          (=
                           top.impl.usr.zz155!
                           (ite top.impl.usr.SP3c false top.impl.usr.zz155))
                          (let
                           ((X20
                             Bool (and
                                   (and (>= X19 2) (<= X19 8))
                                   (not top.usr.onOff!))))
                           (let
                            ((X21 Int (ite (= X19 4) 3 X19)))
                            (let
                             ((X22
                               Int (ite (and (>= X19 3) (<= X19 6)) X21 X19)))
                             (let
                              ((X23 Int (ite (= X22 5) 3 X22)))
                              (let
                               ((X24
                                 Int (ite
                                      (and (>= X19 3) (<= X19 6))
                                      X23
                                      X22)))
                               (let
                                ((X25 Int (ite (= X24 6) 3 X24)))
                                (let
                                 ((X26
                                   Int (ite
                                        (and (>= X19 3) (<= X19 6))
                                        X25
                                        X24)))
                                 (let
                                  ((X27
                                    Int (ite
                                         (and (>= X19 3) (<= X19 6))
                                         2
                                         X26)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X19 2) (<= X19 8))
                                          X27
                                          X19)))
                                   (let
                                    ((X29 Int (ite (= X28 7) 2 X28)))
                                    (let
                                     ((X30
                                       Int (ite
                                            (and (>= X19 2) (<= X19 8))
                                            X29
                                            X28)))
                                     (let
                                      ((X31 Int (ite (= X30 8) 2 X30)))
                                      (let
                                       ((X32
                                         Int (ite
                                              (and (>= X19 2) (<= X19 8))
                                              X31
                                              X30)))
                                       (let
                                        ((X33
                                          Int (ite
                                               (and (>= X19 2) (<= X19 8))
                                               0
                                               X32)))
                                        (let
                                         ((X34 Int (ite X20 X33 X19)))
                                         (let
                                          ((X35
                                            Int (ite (not (= X34 1)) 1 X34)))
                                          (let
                                           ((X36 Int (ite X20 X35 X34)))
                                           (let
                                            ((X37
                                              Bool (and
                                                    (= X36 1)
                                                    (and
                                                     top.usr.onOff!
                                                     (not X20)))))
                                            (let
                                             ((X38 Int (ite (= X36 1) 0 X36)))
                                             (let
                                              ((X39 Int (ite X37 X38 X36)))
                                              (let
                                               ((X40
                                                 Int (ite
                                                      (not
                                                       (and
                                                        (>= X39 2)
                                                        (<= X39 8)))
                                                      2
                                                      X39)))
                                               (let
                                                ((X41
                                                  Bool (and
                                                        (not
                                                         (and
                                                          (>= X39 2)
                                                          (<= X39 8)))
                                                        (and
                                                         (>= X40 2)
                                                         (<= X40 8)))))
                                                (let
                                                 ((X42
                                                   Int (ite
                                                        (not (= X40 7))
                                                        7
                                                        X40)))
                                                 (let
                                                  ((X43
                                                    Int (ite X41 X42 X40)))
                                                  (let
                                                   ((X44
                                                     Int (ite X37 X43 X39)))
                                                   (let
                                                    ((X45 Bool (or X37 X20)))
                                                    (let
                                                     ((X46
                                                       Bool (ite
                                                             (= X19 4)
                                                             false
                                                             X18)))
                                                     (let
                                                      ((X47
                                                        Bool (ite
                                                              (and
                                                               (>= X19 3)
                                                               (<= X19 6))
                                                              X46
                                                              X18)))
                                                      (let
                                                       ((X48
                                                         Bool (ite
                                                               (and
                                                                (>= X19 2)
                                                                (<= X19 8))
                                                               X47
                                                               X18)))
                                                       (let
                                                        ((X49
                                                          Bool (ite
                                                                X20
                                                                X48
                                                                X18)))
                                                        (let
                                                         ((X50
                                                           Bool (and
                                                                 (and
                                                                  (>= X44 3)
                                                                  (<= X44 6))
                                                                 (not X3))))
                                                         (let
                                                          ((X51
                                                            Int (ite
                                                                 (= X44 4)
                                                                 3
                                                                 X44)))
                                                          (let
                                                           ((X52
                                                             Int (ite
                                                                  (and
                                                                   (>= X44 3)
                                                                   (<= X44 6))
                                                                  X51
                                                                  X44)))
                                                           (let
                                                            ((X53
                                                              Int (ite
                                                                   (= X52 5)
                                                                   3
                                                                   X52)))
                                                            (let
                                                             ((X54
                                                               Int (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    X53
                                                                    X52)))
                                                             (let
                                                              ((X55
                                                                Int (ite
                                                                    (= X54 6)
                                                                    3
                                                                    X54)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (and
                                                                   (>= X44 3)
                                                                   (<= X44 6))
                                                                  X55
                                                                  X54)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                   2
                                                                   X56)))
                                                                (let
                                                                 ((X58
                                                                   Int 
                                                                   (ite
                                                                    X50
                                                                    X57
                                                                    X44)))
                                                                 (let
                                                                  ((X59
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X58 8))
                                                                    8
                                                                    X58)))
                                                                  (let
                                                                   ((X60
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    X59
                                                                    X58)))
                                                                   (let
                                                                    ((X61
                                                                    Bool 
                                                                    (and
                                                                    (= X60 8)
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
                                                                    (not X50)))))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (= X60 8)
                                                                    2
                                                                    X60)))
                                                                    (let
                                                                    ((X63
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X62
                                                                    X60)))
                                                                    (let
                                                                    ((X64
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X63
                                                                    3)
                                                                    (<=
                                                                    X63
                                                                    6)))
                                                                    3
                                                                    X63)))
                                                                    (let
                                                                    ((X65
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X63
                                                                    3)
                                                                    (<=
                                                                    X63
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X64
                                                                    3)
                                                                    (<=
                                                                    X64
                                                                    6)))))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X64)))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    X65
                                                                    X66
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X67
                                                                    X63)))
                                                                    (let
                                                                    ((X69
                                                                    Bool 
                                                                    (or
                                                                    X61
                                                                    X50)))
                                                                    (let
                                                                    ((X70
                                                                    Bool 
                                                                    (and
                                                                    (= X68 8)
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
                                                                    (not X69)))))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    (= X68 8)
                                                                    2
                                                                    X68)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X68)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X72
                                                                    3)
                                                                    (<=
                                                                    X72
                                                                    6)))
                                                                    3
                                                                    X72)))
                                                                    (let
                                                                    ((X74
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X72
                                                                    3)
                                                                    (<=
                                                                    X72
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X73
                                                                    3)
                                                                    (<=
                                                                    X73
                                                                    6)))))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X73 4))
                                                                    4
                                                                    X73)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    X74
                                                                    X75
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X76
                                                                    X72)))
                                                                    (let
                                                                    ((X78
                                                                    Bool 
                                                                    (or
                                                                    X70
                                                                    X69)))
                                                                    (let
                                                                    ((X79
                                                                    Bool 
                                                                    (and
                                                                    (= X77 7)
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
                                                                    (not X78)))))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    (= X77 7)
                                                                    2
                                                                    X77)))
                                                                    (let
                                                                    ((X81
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X77)))
                                                                    (let
                                                                    ((X82
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X81
                                                                    3)
                                                                    (<=
                                                                    X81
                                                                    6)))
                                                                    3
                                                                    X81)))
                                                                    (let
                                                                    ((X83
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X81
                                                                    3)
                                                                    (<=
                                                                    X81
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X82
                                                                    3)
                                                                    (<=
                                                                    X82
                                                                    6)))))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X82 4))
                                                                    4
                                                                    X82)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    X83
                                                                    X84
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X85
                                                                    X81)))
                                                                    (let
                                                                    ((X87
                                                                    Bool 
                                                                    (ite
                                                                    (= X44 4)
                                                                    false
                                                                    X49)))
                                                                    (let
                                                                    ((X88
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    X87
                                                                    X49)))
                                                                    (let
                                                                    ((X89
                                                                    Bool 
                                                                    (ite
                                                                    X50
                                                                    X88
                                                                    X49)))
                                                                    (let
                                                                    ((X90
                                                                    Bool 
                                                                    (ite
                                                                    X61
                                                                    true
                                                                    X89)))
                                                                    (let
                                                                    ((X91
                                                                    Bool 
                                                                    (ite
                                                                    X79
                                                                    true
                                                                    X90)))
                                                                    (let
                                                                    ((X92
                                                                    Bool 
                                                                    (or
                                                                    X79
                                                                    X78)))
                                                                    (let
                                                                    ((X93
                                                                    Bool 
                                                                    (and
                                                                    (= X86 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X94
                                                                    Int 
                                                                    (ite
                                                                    (= X86 4)
                                                                    3
                                                                    X86)))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X94
                                                                    X86)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X95 4))
                                                                    4
                                                                    X95)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X96
                                                                    X95)))
                                                                    (let
                                                                    ((X98
                                                                    Bool 
                                                                    (and
                                                                    (= X97 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X17)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X93)))))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    (= X97 4)
                                                                    3
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X99
                                                                    X97)))
                                                                    (let
                                                                    ((X101
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X100
                                                                    5))
                                                                    5
                                                                    X100)))
                                                                    (let
                                                                    ((X102
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X103
                                                                    Bool 
                                                                    (or
                                                                    X98
                                                                    X93)))
                                                                    (let
                                                                    ((X104
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X102
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
                                                                    X103)))))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X102
                                                                    4)
                                                                    3
                                                                    X102)))
                                                                    (let
                                                                    ((X106
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X105
                                                                    X102)))
                                                                    (let
                                                                    ((X107
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X106
                                                                    6))
                                                                    6
                                                                    X106)))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X107
                                                                    X106)))
                                                                    (let
                                                                    ((X109
                                                                    Bool 
                                                                    (or
                                                                    X104
                                                                    X103)))
                                                                    (let
                                                                    ((X110
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X108
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
                                                                    X109)))))
                                                                    (let
                                                                    ((X111
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X108
                                                                    6)
                                                                    3
                                                                    X108)))
                                                                    (let
                                                                    ((X112
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X111
                                                                    X108)))
                                                                    (let
                                                                    ((X113
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X112
                                                                    4))
                                                                    4
                                                                    X112)))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X113
                                                                    X112)))
                                                                    (let
                                                                    ((X115
                                                                    Bool 
                                                                    (or
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X116
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X114
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
                                                                    X115)))))
                                                                    (let
                                                                    ((X117
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X114
                                                                    5)
                                                                    3
                                                                    X114)))
                                                                    (let
                                                                    ((X118
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X117
                                                                    X114)))
                                                                    (let
                                                                    ((X119
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X118
                                                                    4))
                                                                    4
                                                                    X118)))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X119
                                                                    X118)))
                                                                    (let
                                                                    ((X121
                                                                    Bool 
                                                                    (or
                                                                    X116
                                                                    X115)))
                                                                    (let
                                                                    ((X122
                                                                    Bool 
                                                                    (ite
                                                                    (= X86 4)
                                                                    false
                                                                    X91)))
                                                                    (let
                                                                    ((X123
                                                                    Bool 
                                                                    (ite
                                                                    X93
                                                                    X122
                                                                    X91)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
                                                                    (ite
                                                                    X93
                                                                    true
                                                                    X123)))
                                                                    (let
                                                                    ((X125
                                                                    Bool 
                                                                    (ite
                                                                    (= X97 4)
                                                                    false
                                                                    X124)))
                                                                    (let
                                                                    ((X126
                                                                    Bool 
                                                                    (ite
                                                                    X98
                                                                    X125
                                                                    X124)))
                                                                    (let
                                                                    ((X127
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X102
                                                                    4)
                                                                    false
                                                                    X126)))
                                                                    (let
                                                                    ((X128
                                                                    Bool 
                                                                    (ite
                                                                    X104
                                                                    X127
                                                                    X126)))
                                                                    (let
                                                                    ((X129
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X121)
                                                                    (=
                                                                    X120
                                                                    4))
                                                                    false
                                                                    X128)))
                                                                    (let
                                                                    ((X130
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X129
                                                                    X91)))
                                                                    (let
                                                                    ((X131
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X130
                                                                    X49)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c!
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.zz162!
                                                                    (ite
                                                                    top.impl.usr.SP3c!
                                                                    (ite
                                                                    top.impl.usr.zz155!
                                                                    X18
                                                                    X131)
                                                                    X18))
                                                                    (let
                                                                    ((X132
                                                                    Bool 
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    top.impl.usr.zz162!)
                                                                    0.0
                                                                    1.0)
                                                                    1.0)))
                                                                    (let
                                                                    ((X133
                                                                    Int top.impl.usr.mode))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X133)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X34 1))
                                                                    1
                                                                    X133)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    X20
                                                                    X135
                                                                    X133)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X40 7))
                                                                    2
                                                                    X136)))
                                                                    (let
                                                                    ((X138
                                                                    Int 
                                                                    (ite
                                                                    X41
                                                                    X137
                                                                    X136)))
                                                                    (let
                                                                    ((X139
                                                                    Int 
                                                                    (ite
                                                                    X37
                                                                    X138
                                                                    X136)))
                                                                    (let
                                                                    ((X140
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X58 8))
                                                                    3
                                                                    X139)))
                                                                    (let
                                                                    ((X141
                                                                    Int 
                                                                    (ite
                                                                    X50
                                                                    X140
                                                                    X139)))
                                                                    (let
                                                                    ((X142
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X64 4))
                                                                    4
                                                                    X141)))
                                                                    (let
                                                                    ((X143
                                                                    Int 
                                                                    (ite
                                                                    X65
                                                                    X142
                                                                    X141)))
                                                                    (let
                                                                    ((X144
                                                                    Int 
                                                                    (ite
                                                                    X61
                                                                    X143
                                                                    X141)))
                                                                    (let
                                                                    ((X145
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X73 4))
                                                                    4
                                                                    X144)))
                                                                    (let
                                                                    ((X146
                                                                    Int 
                                                                    (ite
                                                                    X74
                                                                    X145
                                                                    X144)))
                                                                    (let
                                                                    ((X147
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X146
                                                                    X144)))
                                                                    (let
                                                                    ((X148
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X82 4))
                                                                    4
                                                                    X147)))
                                                                    (let
                                                                    ((X149
                                                                    Int 
                                                                    (ite
                                                                    X83
                                                                    X148
                                                                    X147)))
                                                                    (let
                                                                    ((X150
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X149
                                                                    X147)))
                                                                    (let
                                                                    ((X151
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X95 4))
                                                                    4
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Int 
                                                                    (ite
                                                                    X93
                                                                    X151
                                                                    X150)))
                                                                    (let
                                                                    ((X153
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X100
                                                                    5))
                                                                    6
                                                                    X152)))
                                                                    (let
                                                                    ((X154
                                                                    Int 
                                                                    (ite
                                                                    X98
                                                                    X153
                                                                    X152)))
                                                                    (let
                                                                    ((X155
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X106
                                                                    6))
                                                                    5
                                                                    X154)))
                                                                    (let
                                                                    ((X156
                                                                    Int 
                                                                    (ite
                                                                    X104
                                                                    X155
                                                                    X154)))
                                                                    (let
                                                                    ((X157
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X112
                                                                    4))
                                                                    4
                                                                    X156)))
                                                                    (let
                                                                    ((X158
                                                                    Int 
                                                                    (ite
                                                                    X110
                                                                    X157
                                                                    X156)))
                                                                    (let
                                                                    ((X159
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X118
                                                                    4))
                                                                    4
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Int 
                                                                    (ite
                                                                    X116
                                                                    X159
                                                                    X158)))
                                                                    (let
                                                                    ((X161
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X160
                                                                    X150)))
                                                                    (let
                                                                    ((X162
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X161
                                                                    X139)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    (ite
                                                                    top.impl.usr.SP3c!
                                                                    (ite
                                                                    top.impl.usr.zz155!
                                                                    X134
                                                                    X162)
                                                                    X133))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    4)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK!
                                                                    (or
                                                                    (not
                                                                    (not
                                                                    X163))
                                                                    (not
                                                                    X132)))
                                                                    (let
                                                                    ((X164
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X19 1))
                                                                    1
                                                                    X19)))
                                                                    (let
                                                                    ((X165
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X92)
                                                                    (and
                                                                    (>=
                                                                    X86
                                                                    3)
                                                                    (<=
                                                                    X86
                                                                    6)))
                                                                    X120
                                                                    X86)))
                                                                    (let
                                                                    ((X166
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X45)
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    2)
                                                                    (<=
                                                                    X44
                                                                    8)))
                                                                    X165
                                                                    X44)))
                                                                    (let
                                                                    ((X167
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c!
                                                                    (ite
                                                                    top.impl.usr.zz155!
                                                                    X164
                                                                    X166)
                                                                    X19)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161!
                                                                    X167)
                                                                    (not
                                                                    top.res.init_flag!)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
