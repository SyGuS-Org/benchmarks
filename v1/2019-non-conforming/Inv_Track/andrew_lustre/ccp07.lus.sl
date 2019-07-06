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
    (top.impl.usr.desiredSpeed_a_0 Real)
    (top.impl.usr.SP3c_a_0 Bool)
    (top.impl.usr.zz0_a_0 Bool)
    (top.impl.usr.zz1_a_0 Bool)
    (top.impl.usr.zz2_a_0 Real)
    (top.impl.usr.zz3_a_0 Bool)
    (top.impl.usr.zz4_a_0 Bool)
    (top.impl.usr.zz5_a_0 Real)
    (top.impl.usr.zz155_a_0 Bool)
    (top.impl.usr.zz161_a_0 Int)
    (top.impl.usr.zz162_a_0 Bool)
    (top.impl.usr.zz170_a_0 Int)
    (top.impl.usr.zz176_a_0 Int)
    (top.impl.usr.zz178_a_0 Bool)
    (top.impl.usr.zz183_a_0 Bool)
  ) Bool
  
  (let
   ((X1 Real 0.0))
   (let
    ((X2 Bool (>= top.usr.carSpeed_a_0 15.0)))
    (let
     ((X3 Bool (= top.usr.carGear_a_0 3)))
     (let
      ((X4
        Bool (and
              (and
               (and
                (and (not top.usr.cancel_a_0) (not top.usr.brakePedal_a_0))
                X3)
               X2)
              top.usr.validInputs_a_0)))
      (let
       ((X5 Bool true))
       (and
        (= top.impl.usr.zz183_a_0 top.usr.decelSet_a_0)
        (let
         ((X6 Bool (and (not X5) top.impl.usr.zz183_a_0)))
         (let
          ((X7 Bool true))
          (and
           (= top.impl.usr.zz178_a_0 top.usr.accelResume_a_0)
           (let
            ((X8 Bool (and (not X7) top.impl.usr.zz178_a_0)))
            (let
             ((X9 Int 0))
             (let
              ((X10 Int (+ X9 1)))
              (let
               ((X11 Int (ite top.usr.decelSet_a_0 X10 0)))
               (let
                ((X12 Int (ite (>= 0 X11) 0 X11)))
                (and
                 (= top.impl.usr.zz176_a_0 (ite (<= X12 20) X12 20))
                 (let
                  ((X13 Bool (= top.impl.usr.zz176_a_0 20)))
                  (let
                   ((X14 Int 0))
                   (let
                    ((X15 Int (+ X14 1)))
                    (let
                     ((X16 Int (ite top.usr.accelResume_a_0 X15 0)))
                     (let
                      ((X17 Int (ite (>= 0 X16) 0 X16)))
                      (and
                       (= top.impl.usr.zz170_a_0 (ite (<= X17 20) X17 20))
                       (let
                        ((X18 Bool (= top.impl.usr.zz170_a_0 20)))
                        (let
                         ((X19 Int 0))
                         (let
                          ((X20 Int 0))
                          (and
                           (= top.impl.usr.zz155_a_0 true)
                           (let
                            ((X21 Int (ite (not (= X20 1)) 1 X19)))
                            (let
                             ((X22
                               Bool (and
                                     (and (>= X20 2) (<= X20 8))
                                     (not top.usr.onOff_a_0))))
                             (let
                              ((X23 Int (ite (= X20 4) 3 X20)))
                              (let
                               ((X24
                                 Int (ite
                                      (and (>= X20 3) (<= X20 6))
                                      X23
                                      X20)))
                               (let
                                ((X25 Int (ite (= X24 5) 3 X24)))
                                (let
                                 ((X26
                                   Int (ite
                                        (and (>= X20 3) (<= X20 6))
                                        X25
                                        X24)))
                                 (let
                                  ((X27 Int (ite (= X26 6) 3 X26)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X20 3) (<= X20 6))
                                          X27
                                          X26)))
                                   (let
                                    ((X29
                                      Int (ite
                                           (and (>= X20 3) (<= X20 6))
                                           2
                                           X28)))
                                    (let
                                     ((X30
                                       Int (ite
                                            (and (>= X20 2) (<= X20 8))
                                            X29
                                            X20)))
                                     (let
                                      ((X31 Int (ite (= X30 7) 2 X30)))
                                      (let
                                       ((X32
                                         Int (ite
                                              (and (>= X20 2) (<= X20 8))
                                              X31
                                              X30)))
                                       (let
                                        ((X33 Int (ite (= X32 8) 2 X32)))
                                        (let
                                         ((X34
                                           Int (ite
                                                (and (>= X20 2) (<= X20 8))
                                                X33
                                                X32)))
                                         (let
                                          ((X35
                                            Int (ite
                                                 (and (>= X20 2) (<= X20 8))
                                                 0
                                                 X34)))
                                          (let
                                           ((X36 Int (ite X22 X35 X20)))
                                           (let
                                            ((X37
                                              Int (ite (not (= X36 1)) 1 X36)))
                                            (let
                                             ((X38 Int (ite X22 X37 X36)))
                                             (let
                                              ((X39
                                                Bool (and
                                                      (= X38 1)
                                                      (and
                                                       top.usr.onOff_a_0
                                                       (not X22)))))
                                              (let
                                               ((X40
                                                 Int (ite (= X38 1) 0 X38)))
                                               (let
                                                ((X41 Int (ite X39 X40 X38)))
                                                (let
                                                 ((X42
                                                   Int (ite
                                                        (not (= X36 1))
                                                        1
                                                        X19)))
                                                 (let
                                                  ((X43
                                                    Int (ite X22 X42 X19)))
                                                  (let
                                                   ((X44
                                                     Int (ite
                                                          (not
                                                           (and
                                                            (>= X41 2)
                                                            (<= X41 8)))
                                                          2
                                                          X41)))
                                                   (let
                                                    ((X45
                                                      Bool (and
                                                            (not
                                                             (and
                                                              (>= X41 2)
                                                              (<= X41 8)))
                                                            (and
                                                             (>= X44 2)
                                                             (<= X44 8)))))
                                                    (let
                                                     ((X46
                                                       Int (ite
                                                            (not (= X44 7))
                                                            2
                                                            X43)))
                                                     (let
                                                      ((X47
                                                        Int (ite X45 X46 X43)))
                                                      (let
                                                       ((X48
                                                         Int (ite
                                                              X39
                                                              X47
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          Int (ite
                                                               (not
                                                                (= X44 7))
                                                               7
                                                               X44)))
                                                        (let
                                                         ((X50
                                                           Int (ite
                                                                X45
                                                                X49
                                                                X44)))
                                                         (let
                                                          ((X51
                                                            Int (ite
                                                                 X39
                                                                 X50
                                                                 X41)))
                                                          (let
                                                           ((X52
                                                             Bool (or
                                                                   X39
                                                                   X22)))
                                                           (let
                                                            ((X53
                                                              Bool (and
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    (not X4))))
                                                            (let
                                                             ((X54
                                                               Int (ite
                                                                    (= X51 4)
                                                                    3
                                                                    X51)))
                                                             (let
                                                              ((X55
                                                                Int (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X54
                                                                    X51)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (= X55 5)
                                                                  3
                                                                  X55)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                   X56
                                                                   X55)))
                                                                (let
                                                                 ((X58
                                                                   Int 
                                                                   (ite
                                                                    (= X57 6)
                                                                    3
                                                                    X57)))
                                                                 (let
                                                                  ((X59
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X58
                                                                    X57)))
                                                                  (let
                                                                   ((X60
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    2
                                                                    X59)))
                                                                   (let
                                                                    ((X61
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X60
                                                                    X51)))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X61 8))
                                                                    8
                                                                    X61)))
                                                                    (let
                                                                    ((X63
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X62
                                                                    X61)))
                                                                    (let
                                                                    ((X64
                                                                    Bool 
                                                                    (and
                                                                    (= X63 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X53)))))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    (= X63 8)
                                                                    2
                                                                    X63)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X65
                                                                    X63)))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))
                                                                    3
                                                                    X66)))
                                                                    (let
                                                                    ((X68
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X67
                                                                    3)
                                                                    (<=
                                                                    X67
                                                                    6)))))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X67 4))
                                                                    4
                                                                    X67)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X68
                                                                    X69
                                                                    X67)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X70
                                                                    X66)))
                                                                    (let
                                                                    ((X72
                                                                    Bool 
                                                                    (or
                                                                    X64
                                                                    X53)))
                                                                    (let
                                                                    ((X73
                                                                    Bool 
                                                                    (and
                                                                    (= X71 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X8)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X72)))))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    (= X71 8)
                                                                    2
                                                                    X71)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X74
                                                                    X71)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))
                                                                    3
                                                                    X75)))
                                                                    (let
                                                                    ((X77
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X76
                                                                    3)
                                                                    (<=
                                                                    X76
                                                                    6)))))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X76 4))
                                                                    4
                                                                    X76)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    X77
                                                                    X78
                                                                    X76)))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X79
                                                                    X75)))
                                                                    (let
                                                                    ((X81
                                                                    Bool 
                                                                    (or
                                                                    X73
                                                                    X72)))
                                                                    (let
                                                                    ((X82
                                                                    Bool 
                                                                    (and
                                                                    (= X80 7)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X81)))))
                                                                    (let
                                                                    ((X83
                                                                    Int 
                                                                    (ite
                                                                    (= X80 7)
                                                                    2
                                                                    X80)))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X83
                                                                    X80)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X61 8))
                                                                    3
                                                                    X48)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X85
                                                                    X48)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X67 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X68
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X88
                                                                    X86)))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X76 4))
                                                                    4
                                                                    X89)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X77
                                                                    X90
                                                                    X89)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X91
                                                                    X89)))
                                                                    (let
                                                                    ((X93
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X84
                                                                    3)
                                                                    (<=
                                                                    X84
                                                                    6)))
                                                                    3
                                                                    X84)))
                                                                    (let
                                                                    ((X94
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X84
                                                                    3)
                                                                    (<=
                                                                    X84
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X93
                                                                    3)
                                                                    (<=
                                                                    X93
                                                                    6)))))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X93 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    X94
                                                                    X95
                                                                    X92)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X96
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X93 4))
                                                                    4
                                                                    X93)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X94
                                                                    X98
                                                                    X93)))
                                                                    (let
                                                                    ((X100
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X99
                                                                    X84)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
                                                                    (or
                                                                    X82
                                                                    X81)))
                                                                    (let
                                                                    ((X102
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X103
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    3
                                                                    X100)))
                                                                    (let
                                                                    ((X104
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X103
                                                                    X100)))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X104
                                                                    4))
                                                                    4
                                                                    X104)))
                                                                    (let
                                                                    ((X106
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X105
                                                                    X104)))
                                                                    (let
                                                                    ((X107
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X18)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X102)))))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    3
                                                                    X106)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X106)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    5))
                                                                    5
                                                                    X109)))
                                                                    (let
                                                                    ((X111
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X112
                                                                    Bool 
                                                                    (or
                                                                    X107
                                                                    X102)))
                                                                    (let
                                                                    ((X113
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X13)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X112)))))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    3
                                                                    X111)))
                                                                    (let
                                                                    ((X115
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X114
                                                                    X111)))
                                                                    (let
                                                                    ((X116
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X115
                                                                    6))
                                                                    6
                                                                    X115)))
                                                                    (let
                                                                    ((X117
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X116
                                                                    X115)))
                                                                    (let
                                                                    ((X118
                                                                    Bool 
                                                                    (or
                                                                    X113
                                                                    X112)))
                                                                    (let
                                                                    ((X119
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X117
                                                                    6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X13))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X118)))))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X117
                                                                    6)
                                                                    3
                                                                    X117)))
                                                                    (let
                                                                    ((X121
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X120
                                                                    X117)))
                                                                    (let
                                                                    ((X122
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X121
                                                                    4))
                                                                    4
                                                                    X121)))
                                                                    (let
                                                                    ((X123
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X122
                                                                    X121)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
                                                                    (or
                                                                    X119
                                                                    X118)))
                                                                    (let
                                                                    ((X125
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X123
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X18))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X124)))))
                                                                    (let
                                                                    ((X126
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X123
                                                                    5)
                                                                    3
                                                                    X123)))
                                                                    (let
                                                                    ((X127
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X126
                                                                    X123)))
                                                                    (let
                                                                    ((X128
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X104
                                                                    4))
                                                                    4
                                                                    X97)))
                                                                    (let
                                                                    ((X129
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X128
                                                                    X97)))
                                                                    (let
                                                                    ((X130
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    5))
                                                                    6
                                                                    X129)))
                                                                    (let
                                                                    ((X131
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X130
                                                                    X129)))
                                                                    (let
                                                                    ((X132
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X115
                                                                    6))
                                                                    5
                                                                    X131)))
                                                                    (let
                                                                    ((X133
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X132
                                                                    X131)))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X121
                                                                    4))
                                                                    4
                                                                    X133)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X134
                                                                    X133)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X127
                                                                    4))
                                                                    4
                                                                    X135)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X136
                                                                    X135)))
                                                                    (let
                                                                    ((X138
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X137
                                                                    X97)))
                                                                    (let
                                                                    ((X139
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X138
                                                                    X48)))
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
                                                                    X21
                                                                    X139)
                                                                    X19))
                                                                    (let
                                                                    ((X140
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    3)))
                                                                    (let
                                                                    ((X141
                                                                    Real 
                                                                    (ite
                                                                    X140
                                                                    X1
                                                                    0.0)))
                                                                    (let
                                                                    ((X142
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    4)))
                                                                    (let
                                                                    ((X143
                                                                    Real 
                                                                    (ite
                                                                    X142
                                                                    X1
                                                                    X141)))
                                                                    (let
                                                                    ((X144
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    5)))
                                                                    (let
                                                                    ((X145
                                                                    Bool X144))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz4_a_0
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.zz3_a_0
                                                                    X145)
                                                                    (=
                                                                    top.impl.usr.zz5_a_0
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.zz4_a_0
                                                                    (not
                                                                    top.impl.usr.zz3_a_0))
                                                                    0.0
                                                                    (-
                                                                    X1
                                                                    (/ 1 20))))
                                                                    (let
                                                                    ((X146
                                                                    Real 
                                                                    (ite
                                                                    X145
                                                                    top.impl.usr.zz5_a_0
                                                                    X143)))
                                                                    (let
                                                                    ((X147
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_0
                                                                    6)))
                                                                    (let
                                                                    ((X148
                                                                    Bool X147))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz1_a_0
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.zz0_a_0
                                                                    X148)
                                                                    (=
                                                                    top.impl.usr.zz2_a_0
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.zz1_a_0
                                                                    (not
                                                                    top.impl.usr.zz0_a_0))
                                                                    0.0
                                                                    (+
                                                                    X1
                                                                    (/ 1 20))))
                                                                    (let
                                                                    ((X149
                                                                    Real 
                                                                    (ite
                                                                    X148
                                                                    top.impl.usr.zz2_a_0
                                                                    X146)))
                                                                    (let
                                                                    ((X150
                                                                    Bool false))
                                                                    (let
                                                                    ((X151
                                                                    Bool 
                                                                    (ite
                                                                    (= X20 4)
                                                                    false
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X20
                                                                    3)
                                                                    (<=
                                                                    X20
                                                                    6))
                                                                    X151
                                                                    X150)))
                                                                    (let
                                                                    ((X153
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X20
                                                                    2)
                                                                    (<=
                                                                    X20
                                                                    8))
                                                                    X152
                                                                    X150)))
                                                                    (let
                                                                    ((X154
                                                                    Bool 
                                                                    (ite
                                                                    X22
                                                                    X153
                                                                    X150)))
                                                                    (let
                                                                    ((X155
                                                                    Bool 
                                                                    (ite
                                                                    (= X51 4)
                                                                    false
                                                                    X154)))
                                                                    (let
                                                                    ((X156
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X155
                                                                    X154)))
                                                                    (let
                                                                    ((X157
                                                                    Bool 
                                                                    (ite
                                                                    X53
                                                                    X156
                                                                    X154)))
                                                                    (let
                                                                    ((X158
                                                                    Bool 
                                                                    (ite
                                                                    X64
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    Bool 
                                                                    (ite
                                                                    X82
                                                                    true
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X127
                                                                    4))
                                                                    4
                                                                    X127)))
                                                                    (let
                                                                    ((X161
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X160
                                                                    X127)))
                                                                    (let
                                                                    ((X162
                                                                    Bool 
                                                                    (or
                                                                    X125
                                                                    X124)))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    false
                                                                    X159)))
                                                                    (let
                                                                    ((X164
                                                                    Bool 
                                                                    (ite
                                                                    X102
                                                                    X163
                                                                    X159)))
                                                                    (let
                                                                    ((X165
                                                                    Bool 
                                                                    (ite
                                                                    X102
                                                                    true
                                                                    X164)))
                                                                    (let
                                                                    ((X166
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    false
                                                                    X165)))
                                                                    (let
                                                                    ((X167
                                                                    Bool 
                                                                    (ite
                                                                    X107
                                                                    X166
                                                                    X165)))
                                                                    (let
                                                                    ((X168
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    false
                                                                    X167)))
                                                                    (let
                                                                    ((X169
                                                                    Bool 
                                                                    (ite
                                                                    X113
                                                                    X168
                                                                    X167)))
                                                                    (let
                                                                    ((X170
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X162)
                                                                    (=
                                                                    X161
                                                                    4))
                                                                    false
                                                                    X169)))
                                                                    (let
                                                                    ((X171
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X170
                                                                    X159)))
                                                                    (let
                                                                    ((X172
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X171
                                                                    X154)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz162_a_0
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    (ite
                                                                    top.impl.usr.zz155_a_0
                                                                    X150
                                                                    X172)
                                                                    X150))
                                                                    (let
                                                                    ((X173
                                                                    Real 
                                                                    (ite
                                                                    top.impl.usr.zz162_a_0
                                                                    top.usr.carSpeed_a_0
                                                                    X149)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.desiredSpeed_a_0
                                                                    (ite
                                                                    (<
                                                                    X173
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    X173
                                                                    100.0)
                                                                    100.0
                                                                    X173)))
                                                                    (let
                                                                    ((X174
                                                                    Bool 
                                                                    (>=
                                                                    top.impl.usr.desiredSpeed_a_0
                                                                    0.0)))
                                                                    (let
                                                                    ((X175
                                                                    Bool 
                                                                    (<=
                                                                    top.impl.usr.desiredSpeed_a_0
                                                                    100.0)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK_a_0
                                                                    (and
                                                                    X174
                                                                    X175))
                                                                    (let
                                                                    ((X176
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X20 1))
                                                                    1
                                                                    X20)))
                                                                    (let
                                                                    ((X177
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X161
                                                                    X100)))
                                                                    (let
                                                                    ((X178
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X177
                                                                    X51)))
                                                                    (let
                                                                    ((X179
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    (ite
                                                                    top.impl.usr.zz155_a_0
                                                                    X176
                                                                    X178)
                                                                    X20)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161_a_0
                                                                    X179)
                                                                    top.res.init_flag_a_0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.desiredSpeed_a_1 Real)
    (top.impl.usr.SP3c_a_1 Bool)
    (top.impl.usr.zz0_a_1 Bool)
    (top.impl.usr.zz1_a_1 Bool)
    (top.impl.usr.zz2_a_1 Real)
    (top.impl.usr.zz3_a_1 Bool)
    (top.impl.usr.zz4_a_1 Bool)
    (top.impl.usr.zz5_a_1 Real)
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
    (top.impl.usr.desiredSpeed_a_0 Real)
    (top.impl.usr.SP3c_a_0 Bool)
    (top.impl.usr.zz0_a_0 Bool)
    (top.impl.usr.zz1_a_0 Bool)
    (top.impl.usr.zz2_a_0 Real)
    (top.impl.usr.zz3_a_0 Bool)
    (top.impl.usr.zz4_a_0 Bool)
    (top.impl.usr.zz5_a_0 Real)
    (top.impl.usr.zz155_a_0 Bool)
    (top.impl.usr.zz161_a_0 Int)
    (top.impl.usr.zz162_a_0 Bool)
    (top.impl.usr.zz170_a_0 Int)
    (top.impl.usr.zz176_a_0 Int)
    (top.impl.usr.zz178_a_0 Bool)
    (top.impl.usr.zz183_a_0 Bool)
  ) Bool
  
  (let
   ((X1 Real top.impl.usr.desiredSpeed_a_0))
   (let
    ((X2 Bool (>= top.usr.carSpeed_a_1 15.0)))
    (let
     ((X3 Bool (= top.usr.carGear_a_1 3)))
     (let
      ((X4
        Bool (and
              (and
               (and
                (and (not top.usr.cancel_a_1) (not top.usr.brakePedal_a_1))
                X3)
               X2)
              top.usr.validInputs_a_1)))
      (let
       ((X5 Bool top.impl.usr.zz183_a_0))
       (and
        (= top.impl.usr.zz183_a_1 top.usr.decelSet_a_1)
        (let
         ((X6 Bool (and (not X5) top.impl.usr.zz183_a_1)))
         (let
          ((X7 Bool top.impl.usr.zz178_a_0))
          (and
           (= top.impl.usr.zz178_a_1 top.usr.accelResume_a_1)
           (let
            ((X8 Bool (and (not X7) top.impl.usr.zz178_a_1)))
            (let
             ((X9 Int top.impl.usr.zz176_a_0))
             (let
              ((X10 Int (+ X9 1)))
              (let
               ((X11 Int (ite top.usr.decelSet_a_1 X10 0)))
               (let
                ((X12 Int (ite (>= 0 X11) 0 X11)))
                (and
                 (= top.impl.usr.zz176_a_1 (ite (<= X12 20) X12 20))
                 (let
                  ((X13 Bool (= top.impl.usr.zz176_a_1 20)))
                  (let
                   ((X14 Int top.impl.usr.zz170_a_0))
                   (let
                    ((X15 Int (+ X14 1)))
                    (let
                     ((X16 Int (ite top.usr.accelResume_a_1 X15 0)))
                     (let
                      ((X17 Int (ite (>= 0 X16) 0 X16)))
                      (and
                       (= top.impl.usr.zz170_a_1 (ite (<= X17 20) X17 20))
                       (let
                        ((X18 Bool (= top.impl.usr.zz170_a_1 20)))
                        (let
                         ((X19 Int top.impl.usr.mode_a_0))
                         (let
                          ((X20 Int top.impl.usr.zz161_a_0))
                          (and
                           (=
                            top.impl.usr.zz155_a_1
                            (ite
                             top.impl.usr.SP3c_a_0
                             false
                             top.impl.usr.zz155_a_0))
                           (let
                            ((X21 Int (ite (not (= X20 1)) 1 X19)))
                            (let
                             ((X22
                               Bool (and
                                     (and (>= X20 2) (<= X20 8))
                                     (not top.usr.onOff_a_1))))
                             (let
                              ((X23 Int (ite (= X20 4) 3 X20)))
                              (let
                               ((X24
                                 Int (ite
                                      (and (>= X20 3) (<= X20 6))
                                      X23
                                      X20)))
                               (let
                                ((X25 Int (ite (= X24 5) 3 X24)))
                                (let
                                 ((X26
                                   Int (ite
                                        (and (>= X20 3) (<= X20 6))
                                        X25
                                        X24)))
                                 (let
                                  ((X27 Int (ite (= X26 6) 3 X26)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X20 3) (<= X20 6))
                                          X27
                                          X26)))
                                   (let
                                    ((X29
                                      Int (ite
                                           (and (>= X20 3) (<= X20 6))
                                           2
                                           X28)))
                                    (let
                                     ((X30
                                       Int (ite
                                            (and (>= X20 2) (<= X20 8))
                                            X29
                                            X20)))
                                     (let
                                      ((X31 Int (ite (= X30 7) 2 X30)))
                                      (let
                                       ((X32
                                         Int (ite
                                              (and (>= X20 2) (<= X20 8))
                                              X31
                                              X30)))
                                       (let
                                        ((X33 Int (ite (= X32 8) 2 X32)))
                                        (let
                                         ((X34
                                           Int (ite
                                                (and (>= X20 2) (<= X20 8))
                                                X33
                                                X32)))
                                         (let
                                          ((X35
                                            Int (ite
                                                 (and (>= X20 2) (<= X20 8))
                                                 0
                                                 X34)))
                                          (let
                                           ((X36 Int (ite X22 X35 X20)))
                                           (let
                                            ((X37
                                              Int (ite (not (= X36 1)) 1 X36)))
                                            (let
                                             ((X38 Int (ite X22 X37 X36)))
                                             (let
                                              ((X39
                                                Bool (and
                                                      (= X38 1)
                                                      (and
                                                       top.usr.onOff_a_1
                                                       (not X22)))))
                                              (let
                                               ((X40
                                                 Int (ite (= X38 1) 0 X38)))
                                               (let
                                                ((X41 Int (ite X39 X40 X38)))
                                                (let
                                                 ((X42
                                                   Int (ite
                                                        (not (= X36 1))
                                                        1
                                                        X19)))
                                                 (let
                                                  ((X43
                                                    Int (ite X22 X42 X19)))
                                                  (let
                                                   ((X44
                                                     Int (ite
                                                          (not
                                                           (and
                                                            (>= X41 2)
                                                            (<= X41 8)))
                                                          2
                                                          X41)))
                                                   (let
                                                    ((X45
                                                      Bool (and
                                                            (not
                                                             (and
                                                              (>= X41 2)
                                                              (<= X41 8)))
                                                            (and
                                                             (>= X44 2)
                                                             (<= X44 8)))))
                                                    (let
                                                     ((X46
                                                       Int (ite
                                                            (not (= X44 7))
                                                            2
                                                            X43)))
                                                     (let
                                                      ((X47
                                                        Int (ite X45 X46 X43)))
                                                      (let
                                                       ((X48
                                                         Int (ite
                                                              X39
                                                              X47
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          Int (ite
                                                               (not
                                                                (= X44 7))
                                                               7
                                                               X44)))
                                                        (let
                                                         ((X50
                                                           Int (ite
                                                                X45
                                                                X49
                                                                X44)))
                                                         (let
                                                          ((X51
                                                            Int (ite
                                                                 X39
                                                                 X50
                                                                 X41)))
                                                          (let
                                                           ((X52
                                                             Bool (or
                                                                   X39
                                                                   X22)))
                                                           (let
                                                            ((X53
                                                              Bool (and
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    (not X4))))
                                                            (let
                                                             ((X54
                                                               Int (ite
                                                                    (= X51 4)
                                                                    3
                                                                    X51)))
                                                             (let
                                                              ((X55
                                                                Int (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X54
                                                                    X51)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (= X55 5)
                                                                  3
                                                                  X55)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                   X56
                                                                   X55)))
                                                                (let
                                                                 ((X58
                                                                   Int 
                                                                   (ite
                                                                    (= X57 6)
                                                                    3
                                                                    X57)))
                                                                 (let
                                                                  ((X59
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X58
                                                                    X57)))
                                                                  (let
                                                                   ((X60
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    2
                                                                    X59)))
                                                                   (let
                                                                    ((X61
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X60
                                                                    X51)))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X61 8))
                                                                    8
                                                                    X61)))
                                                                    (let
                                                                    ((X63
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X62
                                                                    X61)))
                                                                    (let
                                                                    ((X64
                                                                    Bool 
                                                                    (and
                                                                    (= X63 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X53)))))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    (= X63 8)
                                                                    2
                                                                    X63)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X65
                                                                    X63)))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))
                                                                    3
                                                                    X66)))
                                                                    (let
                                                                    ((X68
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X67
                                                                    3)
                                                                    (<=
                                                                    X67
                                                                    6)))))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X67 4))
                                                                    4
                                                                    X67)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X68
                                                                    X69
                                                                    X67)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X70
                                                                    X66)))
                                                                    (let
                                                                    ((X72
                                                                    Bool 
                                                                    (or
                                                                    X64
                                                                    X53)))
                                                                    (let
                                                                    ((X73
                                                                    Bool 
                                                                    (and
                                                                    (= X71 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X8)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X72)))))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    (= X71 8)
                                                                    2
                                                                    X71)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X74
                                                                    X71)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))
                                                                    3
                                                                    X75)))
                                                                    (let
                                                                    ((X77
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X76
                                                                    3)
                                                                    (<=
                                                                    X76
                                                                    6)))))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X76 4))
                                                                    4
                                                                    X76)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    X77
                                                                    X78
                                                                    X76)))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X79
                                                                    X75)))
                                                                    (let
                                                                    ((X81
                                                                    Bool 
                                                                    (or
                                                                    X73
                                                                    X72)))
                                                                    (let
                                                                    ((X82
                                                                    Bool 
                                                                    (and
                                                                    (= X80 7)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X81)))))
                                                                    (let
                                                                    ((X83
                                                                    Int 
                                                                    (ite
                                                                    (= X80 7)
                                                                    2
                                                                    X80)))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X83
                                                                    X80)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X61 8))
                                                                    3
                                                                    X48)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X85
                                                                    X48)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X67 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X68
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X88
                                                                    X86)))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X76 4))
                                                                    4
                                                                    X89)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X77
                                                                    X90
                                                                    X89)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X91
                                                                    X89)))
                                                                    (let
                                                                    ((X93
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X84
                                                                    3)
                                                                    (<=
                                                                    X84
                                                                    6)))
                                                                    3
                                                                    X84)))
                                                                    (let
                                                                    ((X94
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X84
                                                                    3)
                                                                    (<=
                                                                    X84
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X93
                                                                    3)
                                                                    (<=
                                                                    X93
                                                                    6)))))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X93 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    X94
                                                                    X95
                                                                    X92)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X96
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X93 4))
                                                                    4
                                                                    X93)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X94
                                                                    X98
                                                                    X93)))
                                                                    (let
                                                                    ((X100
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X99
                                                                    X84)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
                                                                    (or
                                                                    X82
                                                                    X81)))
                                                                    (let
                                                                    ((X102
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X103
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    3
                                                                    X100)))
                                                                    (let
                                                                    ((X104
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X103
                                                                    X100)))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X104
                                                                    4))
                                                                    4
                                                                    X104)))
                                                                    (let
                                                                    ((X106
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X105
                                                                    X104)))
                                                                    (let
                                                                    ((X107
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X18)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X102)))))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    3
                                                                    X106)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X106)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    5))
                                                                    5
                                                                    X109)))
                                                                    (let
                                                                    ((X111
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X112
                                                                    Bool 
                                                                    (or
                                                                    X107
                                                                    X102)))
                                                                    (let
                                                                    ((X113
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X13)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X112)))))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    3
                                                                    X111)))
                                                                    (let
                                                                    ((X115
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X114
                                                                    X111)))
                                                                    (let
                                                                    ((X116
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X115
                                                                    6))
                                                                    6
                                                                    X115)))
                                                                    (let
                                                                    ((X117
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X116
                                                                    X115)))
                                                                    (let
                                                                    ((X118
                                                                    Bool 
                                                                    (or
                                                                    X113
                                                                    X112)))
                                                                    (let
                                                                    ((X119
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X117
                                                                    6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X13))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X118)))))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X117
                                                                    6)
                                                                    3
                                                                    X117)))
                                                                    (let
                                                                    ((X121
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X120
                                                                    X117)))
                                                                    (let
                                                                    ((X122
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X121
                                                                    4))
                                                                    4
                                                                    X121)))
                                                                    (let
                                                                    ((X123
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X122
                                                                    X121)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
                                                                    (or
                                                                    X119
                                                                    X118)))
                                                                    (let
                                                                    ((X125
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X123
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X18))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X124)))))
                                                                    (let
                                                                    ((X126
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X123
                                                                    5)
                                                                    3
                                                                    X123)))
                                                                    (let
                                                                    ((X127
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X126
                                                                    X123)))
                                                                    (let
                                                                    ((X128
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X104
                                                                    4))
                                                                    4
                                                                    X97)))
                                                                    (let
                                                                    ((X129
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X128
                                                                    X97)))
                                                                    (let
                                                                    ((X130
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    5))
                                                                    6
                                                                    X129)))
                                                                    (let
                                                                    ((X131
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X130
                                                                    X129)))
                                                                    (let
                                                                    ((X132
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X115
                                                                    6))
                                                                    5
                                                                    X131)))
                                                                    (let
                                                                    ((X133
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X132
                                                                    X131)))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X121
                                                                    4))
                                                                    4
                                                                    X133)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X134
                                                                    X133)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X127
                                                                    4))
                                                                    4
                                                                    X135)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X136
                                                                    X135)))
                                                                    (let
                                                                    ((X138
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X137
                                                                    X97)))
                                                                    (let
                                                                    ((X139
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X138
                                                                    X48)))
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
                                                                    X21
                                                                    X139)
                                                                    X19))
                                                                    (let
                                                                    ((X140
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    3)))
                                                                    (let
                                                                    ((X141
                                                                    Real 
                                                                    (ite
                                                                    X140
                                                                    X1
                                                                    0.0)))
                                                                    (let
                                                                    ((X142
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    4)))
                                                                    (let
                                                                    ((X143
                                                                    Real 
                                                                    (ite
                                                                    X142
                                                                    X1
                                                                    X141)))
                                                                    (let
                                                                    ((X144
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    5)))
                                                                    (let
                                                                    ((X145
                                                                    Bool X144))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz4_a_1
                                                                    (ite
                                                                    top.impl.usr.zz3_a_0
                                                                    false
                                                                    top.impl.usr.zz4_a_0))
                                                                    (=
                                                                    top.impl.usr.zz3_a_1
                                                                    X145)
                                                                    (=
                                                                    top.impl.usr.zz5_a_1
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.zz4_a_1
                                                                    (not
                                                                    top.impl.usr.zz3_a_1))
                                                                    0.0
                                                                    (ite
                                                                    top.impl.usr.zz3_a_1
                                                                    (-
                                                                    X1
                                                                    (/ 1 20))
                                                                    top.impl.usr.zz5_a_0)))
                                                                    (let
                                                                    ((X146
                                                                    Real 
                                                                    (ite
                                                                    X145
                                                                    top.impl.usr.zz5_a_1
                                                                    X143)))
                                                                    (let
                                                                    ((X147
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode_a_1
                                                                    6)))
                                                                    (let
                                                                    ((X148
                                                                    Bool X147))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz1_a_1
                                                                    (ite
                                                                    top.impl.usr.zz0_a_0
                                                                    false
                                                                    top.impl.usr.zz1_a_0))
                                                                    (=
                                                                    top.impl.usr.zz0_a_1
                                                                    X148)
                                                                    (=
                                                                    top.impl.usr.zz2_a_1
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.zz1_a_1
                                                                    (not
                                                                    top.impl.usr.zz0_a_1))
                                                                    0.0
                                                                    (ite
                                                                    top.impl.usr.zz0_a_1
                                                                    (+
                                                                    X1
                                                                    (/ 1 20))
                                                                    top.impl.usr.zz2_a_0)))
                                                                    (let
                                                                    ((X149
                                                                    Real 
                                                                    (ite
                                                                    X148
                                                                    top.impl.usr.zz2_a_1
                                                                    X146)))
                                                                    (let
                                                                    ((X150
                                                                    Bool top.impl.usr.zz162_a_0))
                                                                    (let
                                                                    ((X151
                                                                    Bool 
                                                                    (ite
                                                                    (= X20 4)
                                                                    false
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X20
                                                                    3)
                                                                    (<=
                                                                    X20
                                                                    6))
                                                                    X151
                                                                    X150)))
                                                                    (let
                                                                    ((X153
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X20
                                                                    2)
                                                                    (<=
                                                                    X20
                                                                    8))
                                                                    X152
                                                                    X150)))
                                                                    (let
                                                                    ((X154
                                                                    Bool 
                                                                    (ite
                                                                    X22
                                                                    X153
                                                                    X150)))
                                                                    (let
                                                                    ((X155
                                                                    Bool 
                                                                    (ite
                                                                    (= X51 4)
                                                                    false
                                                                    X154)))
                                                                    (let
                                                                    ((X156
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X155
                                                                    X154)))
                                                                    (let
                                                                    ((X157
                                                                    Bool 
                                                                    (ite
                                                                    X53
                                                                    X156
                                                                    X154)))
                                                                    (let
                                                                    ((X158
                                                                    Bool 
                                                                    (ite
                                                                    X64
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    Bool 
                                                                    (ite
                                                                    X82
                                                                    true
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X127
                                                                    4))
                                                                    4
                                                                    X127)))
                                                                    (let
                                                                    ((X161
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X160
                                                                    X127)))
                                                                    (let
                                                                    ((X162
                                                                    Bool 
                                                                    (or
                                                                    X125
                                                                    X124)))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    false
                                                                    X159)))
                                                                    (let
                                                                    ((X164
                                                                    Bool 
                                                                    (ite
                                                                    X102
                                                                    X163
                                                                    X159)))
                                                                    (let
                                                                    ((X165
                                                                    Bool 
                                                                    (ite
                                                                    X102
                                                                    true
                                                                    X164)))
                                                                    (let
                                                                    ((X166
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    false
                                                                    X165)))
                                                                    (let
                                                                    ((X167
                                                                    Bool 
                                                                    (ite
                                                                    X107
                                                                    X166
                                                                    X165)))
                                                                    (let
                                                                    ((X168
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    false
                                                                    X167)))
                                                                    (let
                                                                    ((X169
                                                                    Bool 
                                                                    (ite
                                                                    X113
                                                                    X168
                                                                    X167)))
                                                                    (let
                                                                    ((X170
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X162)
                                                                    (=
                                                                    X161
                                                                    4))
                                                                    false
                                                                    X169)))
                                                                    (let
                                                                    ((X171
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X170
                                                                    X159)))
                                                                    (let
                                                                    ((X172
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X171
                                                                    X154)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz162_a_1
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_1
                                                                    (ite
                                                                    top.impl.usr.zz155_a_1
                                                                    X150
                                                                    X172)
                                                                    X150))
                                                                    (let
                                                                    ((X173
                                                                    Real 
                                                                    (ite
                                                                    top.impl.usr.zz162_a_1
                                                                    top.usr.carSpeed_a_1
                                                                    X149)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.desiredSpeed_a_1
                                                                    (ite
                                                                    (<
                                                                    X173
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    X173
                                                                    100.0)
                                                                    100.0
                                                                    X173)))
                                                                    (let
                                                                    ((X174
                                                                    Bool 
                                                                    (>=
                                                                    top.impl.usr.desiredSpeed_a_1
                                                                    0.0)))
                                                                    (let
                                                                    ((X175
                                                                    Bool 
                                                                    (<=
                                                                    top.impl.usr.desiredSpeed_a_1
                                                                    100.0)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK_a_1
                                                                    (and
                                                                    X174
                                                                    X175))
                                                                    (let
                                                                    ((X176
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X20 1))
                                                                    1
                                                                    X20)))
                                                                    (let
                                                                    ((X177
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X161
                                                                    X100)))
                                                                    (let
                                                                    ((X178
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X177
                                                                    X51)))
                                                                    (let
                                                                    ((X179
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_1
                                                                    (ite
                                                                    top.impl.usr.zz155_a_1
                                                                    X176
                                                                    X178)
                                                                    X20)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161_a_1
                                                                    X179)
                                                                    (not
                                                                    top.res.init_flag_a_1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
  (top.impl.usr.desiredSpeed Real)
  (top.impl.usr.SP3c Bool)
  (top.impl.usr.zz0 Bool)
  (top.impl.usr.zz1 Bool)
  (top.impl.usr.zz2 Real)
  (top.impl.usr.zz3 Bool)
  (top.impl.usr.zz4 Bool)
  (top.impl.usr.zz5 Real)
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
(declare-primed-var top.impl.usr.desiredSpeed Real)
(declare-primed-var top.impl.usr.SP3c Bool)
(declare-primed-var top.impl.usr.zz0 Bool)
(declare-primed-var top.impl.usr.zz1 Bool)
(declare-primed-var top.impl.usr.zz2 Real)
(declare-primed-var top.impl.usr.zz3 Bool)
(declare-primed-var top.impl.usr.zz4 Bool)
(declare-primed-var top.impl.usr.zz5 Real)
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
    (top.impl.usr.desiredSpeed Real)
    (top.impl.usr.SP3c Bool)
    (top.impl.usr.zz0 Bool)
    (top.impl.usr.zz1 Bool)
    (top.impl.usr.zz2 Real)
    (top.impl.usr.zz3 Bool)
    (top.impl.usr.zz4 Bool)
    (top.impl.usr.zz5 Real)
    (top.impl.usr.zz155 Bool)
    (top.impl.usr.zz161 Int)
    (top.impl.usr.zz162 Bool)
    (top.impl.usr.zz170 Int)
    (top.impl.usr.zz176 Int)
    (top.impl.usr.zz178 Bool)
    (top.impl.usr.zz183 Bool)
  ) Bool
  
  (let
   ((X1 Real 0.0))
   (let
    ((X2 Bool (>= top.usr.carSpeed 15.0)))
    (let
     ((X3 Bool (= top.usr.carGear 3)))
     (let
      ((X4
        Bool (and
              (and
               (and (and (not top.usr.cancel) (not top.usr.brakePedal)) X3)
               X2)
              top.usr.validInputs)))
      (let
       ((X5 Bool true))
       (and
        (= top.impl.usr.zz183 top.usr.decelSet)
        (let
         ((X6 Bool (and (not X5) top.impl.usr.zz183)))
         (let
          ((X7 Bool true))
          (and
           (= top.impl.usr.zz178 top.usr.accelResume)
           (let
            ((X8 Bool (and (not X7) top.impl.usr.zz178)))
            (let
             ((X9 Int 0))
             (let
              ((X10 Int (+ X9 1)))
              (let
               ((X11 Int (ite top.usr.decelSet X10 0)))
               (let
                ((X12 Int (ite (>= 0 X11) 0 X11)))
                (and
                 (= top.impl.usr.zz176 (ite (<= X12 20) X12 20))
                 (let
                  ((X13 Bool (= top.impl.usr.zz176 20)))
                  (let
                   ((X14 Int 0))
                   (let
                    ((X15 Int (+ X14 1)))
                    (let
                     ((X16 Int (ite top.usr.accelResume X15 0)))
                     (let
                      ((X17 Int (ite (>= 0 X16) 0 X16)))
                      (and
                       (= top.impl.usr.zz170 (ite (<= X17 20) X17 20))
                       (let
                        ((X18 Bool (= top.impl.usr.zz170 20)))
                        (let
                         ((X19 Int 0))
                         (let
                          ((X20 Int 0))
                          (and
                           (= top.impl.usr.zz155 true)
                           (let
                            ((X21 Int (ite (not (= X20 1)) 1 X19)))
                            (let
                             ((X22
                               Bool (and
                                     (and (>= X20 2) (<= X20 8))
                                     (not top.usr.onOff))))
                             (let
                              ((X23 Int (ite (= X20 4) 3 X20)))
                              (let
                               ((X24
                                 Int (ite
                                      (and (>= X20 3) (<= X20 6))
                                      X23
                                      X20)))
                               (let
                                ((X25 Int (ite (= X24 5) 3 X24)))
                                (let
                                 ((X26
                                   Int (ite
                                        (and (>= X20 3) (<= X20 6))
                                        X25
                                        X24)))
                                 (let
                                  ((X27 Int (ite (= X26 6) 3 X26)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X20 3) (<= X20 6))
                                          X27
                                          X26)))
                                   (let
                                    ((X29
                                      Int (ite
                                           (and (>= X20 3) (<= X20 6))
                                           2
                                           X28)))
                                    (let
                                     ((X30
                                       Int (ite
                                            (and (>= X20 2) (<= X20 8))
                                            X29
                                            X20)))
                                     (let
                                      ((X31 Int (ite (= X30 7) 2 X30)))
                                      (let
                                       ((X32
                                         Int (ite
                                              (and (>= X20 2) (<= X20 8))
                                              X31
                                              X30)))
                                       (let
                                        ((X33 Int (ite (= X32 8) 2 X32)))
                                        (let
                                         ((X34
                                           Int (ite
                                                (and (>= X20 2) (<= X20 8))
                                                X33
                                                X32)))
                                         (let
                                          ((X35
                                            Int (ite
                                                 (and (>= X20 2) (<= X20 8))
                                                 0
                                                 X34)))
                                          (let
                                           ((X36 Int (ite X22 X35 X20)))
                                           (let
                                            ((X37
                                              Int (ite (not (= X36 1)) 1 X36)))
                                            (let
                                             ((X38 Int (ite X22 X37 X36)))
                                             (let
                                              ((X39
                                                Bool (and
                                                      (= X38 1)
                                                      (and
                                                       top.usr.onOff
                                                       (not X22)))))
                                              (let
                                               ((X40
                                                 Int (ite (= X38 1) 0 X38)))
                                               (let
                                                ((X41 Int (ite X39 X40 X38)))
                                                (let
                                                 ((X42
                                                   Int (ite
                                                        (not (= X36 1))
                                                        1
                                                        X19)))
                                                 (let
                                                  ((X43
                                                    Int (ite X22 X42 X19)))
                                                  (let
                                                   ((X44
                                                     Int (ite
                                                          (not
                                                           (and
                                                            (>= X41 2)
                                                            (<= X41 8)))
                                                          2
                                                          X41)))
                                                   (let
                                                    ((X45
                                                      Bool (and
                                                            (not
                                                             (and
                                                              (>= X41 2)
                                                              (<= X41 8)))
                                                            (and
                                                             (>= X44 2)
                                                             (<= X44 8)))))
                                                    (let
                                                     ((X46
                                                       Int (ite
                                                            (not (= X44 7))
                                                            2
                                                            X43)))
                                                     (let
                                                      ((X47
                                                        Int (ite X45 X46 X43)))
                                                      (let
                                                       ((X48
                                                         Int (ite
                                                              X39
                                                              X47
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          Int (ite
                                                               (not
                                                                (= X44 7))
                                                               7
                                                               X44)))
                                                        (let
                                                         ((X50
                                                           Int (ite
                                                                X45
                                                                X49
                                                                X44)))
                                                         (let
                                                          ((X51
                                                            Int (ite
                                                                 X39
                                                                 X50
                                                                 X41)))
                                                          (let
                                                           ((X52
                                                             Bool (or
                                                                   X39
                                                                   X22)))
                                                           (let
                                                            ((X53
                                                              Bool (and
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    (not X4))))
                                                            (let
                                                             ((X54
                                                               Int (ite
                                                                    (= X51 4)
                                                                    3
                                                                    X51)))
                                                             (let
                                                              ((X55
                                                                Int (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X54
                                                                    X51)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (= X55 5)
                                                                  3
                                                                  X55)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                   X56
                                                                   X55)))
                                                                (let
                                                                 ((X58
                                                                   Int 
                                                                   (ite
                                                                    (= X57 6)
                                                                    3
                                                                    X57)))
                                                                 (let
                                                                  ((X59
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X58
                                                                    X57)))
                                                                  (let
                                                                   ((X60
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    2
                                                                    X59)))
                                                                   (let
                                                                    ((X61
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X60
                                                                    X51)))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X61 8))
                                                                    8
                                                                    X61)))
                                                                    (let
                                                                    ((X63
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X62
                                                                    X61)))
                                                                    (let
                                                                    ((X64
                                                                    Bool 
                                                                    (and
                                                                    (= X63 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X53)))))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    (= X63 8)
                                                                    2
                                                                    X63)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X65
                                                                    X63)))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))
                                                                    3
                                                                    X66)))
                                                                    (let
                                                                    ((X68
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X67
                                                                    3)
                                                                    (<=
                                                                    X67
                                                                    6)))))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X67 4))
                                                                    4
                                                                    X67)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X68
                                                                    X69
                                                                    X67)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X70
                                                                    X66)))
                                                                    (let
                                                                    ((X72
                                                                    Bool 
                                                                    (or
                                                                    X64
                                                                    X53)))
                                                                    (let
                                                                    ((X73
                                                                    Bool 
                                                                    (and
                                                                    (= X71 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X8)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X72)))))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    (= X71 8)
                                                                    2
                                                                    X71)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X74
                                                                    X71)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))
                                                                    3
                                                                    X75)))
                                                                    (let
                                                                    ((X77
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X76
                                                                    3)
                                                                    (<=
                                                                    X76
                                                                    6)))))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X76 4))
                                                                    4
                                                                    X76)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    X77
                                                                    X78
                                                                    X76)))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X79
                                                                    X75)))
                                                                    (let
                                                                    ((X81
                                                                    Bool 
                                                                    (or
                                                                    X73
                                                                    X72)))
                                                                    (let
                                                                    ((X82
                                                                    Bool 
                                                                    (and
                                                                    (= X80 7)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X81)))))
                                                                    (let
                                                                    ((X83
                                                                    Int 
                                                                    (ite
                                                                    (= X80 7)
                                                                    2
                                                                    X80)))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X83
                                                                    X80)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X61 8))
                                                                    3
                                                                    X48)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X85
                                                                    X48)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X67 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X68
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X88
                                                                    X86)))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X76 4))
                                                                    4
                                                                    X89)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X77
                                                                    X90
                                                                    X89)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X91
                                                                    X89)))
                                                                    (let
                                                                    ((X93
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X84
                                                                    3)
                                                                    (<=
                                                                    X84
                                                                    6)))
                                                                    3
                                                                    X84)))
                                                                    (let
                                                                    ((X94
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X84
                                                                    3)
                                                                    (<=
                                                                    X84
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X93
                                                                    3)
                                                                    (<=
                                                                    X93
                                                                    6)))))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X93 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    X94
                                                                    X95
                                                                    X92)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X96
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X93 4))
                                                                    4
                                                                    X93)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X94
                                                                    X98
                                                                    X93)))
                                                                    (let
                                                                    ((X100
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X99
                                                                    X84)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
                                                                    (or
                                                                    X82
                                                                    X81)))
                                                                    (let
                                                                    ((X102
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X103
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    3
                                                                    X100)))
                                                                    (let
                                                                    ((X104
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X103
                                                                    X100)))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X104
                                                                    4))
                                                                    4
                                                                    X104)))
                                                                    (let
                                                                    ((X106
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X105
                                                                    X104)))
                                                                    (let
                                                                    ((X107
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X18)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X102)))))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    3
                                                                    X106)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X106)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    5))
                                                                    5
                                                                    X109)))
                                                                    (let
                                                                    ((X111
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X112
                                                                    Bool 
                                                                    (or
                                                                    X107
                                                                    X102)))
                                                                    (let
                                                                    ((X113
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X13)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X112)))))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    3
                                                                    X111)))
                                                                    (let
                                                                    ((X115
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X114
                                                                    X111)))
                                                                    (let
                                                                    ((X116
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X115
                                                                    6))
                                                                    6
                                                                    X115)))
                                                                    (let
                                                                    ((X117
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X116
                                                                    X115)))
                                                                    (let
                                                                    ((X118
                                                                    Bool 
                                                                    (or
                                                                    X113
                                                                    X112)))
                                                                    (let
                                                                    ((X119
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X117
                                                                    6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X13))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X118)))))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X117
                                                                    6)
                                                                    3
                                                                    X117)))
                                                                    (let
                                                                    ((X121
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X120
                                                                    X117)))
                                                                    (let
                                                                    ((X122
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X121
                                                                    4))
                                                                    4
                                                                    X121)))
                                                                    (let
                                                                    ((X123
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X122
                                                                    X121)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
                                                                    (or
                                                                    X119
                                                                    X118)))
                                                                    (let
                                                                    ((X125
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X123
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X18))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X124)))))
                                                                    (let
                                                                    ((X126
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X123
                                                                    5)
                                                                    3
                                                                    X123)))
                                                                    (let
                                                                    ((X127
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X126
                                                                    X123)))
                                                                    (let
                                                                    ((X128
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X104
                                                                    4))
                                                                    4
                                                                    X97)))
                                                                    (let
                                                                    ((X129
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X128
                                                                    X97)))
                                                                    (let
                                                                    ((X130
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    5))
                                                                    6
                                                                    X129)))
                                                                    (let
                                                                    ((X131
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X130
                                                                    X129)))
                                                                    (let
                                                                    ((X132
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X115
                                                                    6))
                                                                    5
                                                                    X131)))
                                                                    (let
                                                                    ((X133
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X132
                                                                    X131)))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X121
                                                                    4))
                                                                    4
                                                                    X133)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X134
                                                                    X133)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X127
                                                                    4))
                                                                    4
                                                                    X135)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X136
                                                                    X135)))
                                                                    (let
                                                                    ((X138
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X137
                                                                    X97)))
                                                                    (let
                                                                    ((X139
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X138
                                                                    X48)))
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
                                                                    X21
                                                                    X139)
                                                                    X19))
                                                                    (let
                                                                    ((X140
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    3)))
                                                                    (let
                                                                    ((X141
                                                                    Real 
                                                                    (ite
                                                                    X140
                                                                    X1
                                                                    0.0)))
                                                                    (let
                                                                    ((X142
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    4)))
                                                                    (let
                                                                    ((X143
                                                                    Real 
                                                                    (ite
                                                                    X142
                                                                    X1
                                                                    X141)))
                                                                    (let
                                                                    ((X144
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    5)))
                                                                    (let
                                                                    ((X145
                                                                    Bool X144))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz4
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.zz3
                                                                    X145)
                                                                    (=
                                                                    top.impl.usr.zz5
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.zz4
                                                                    (not
                                                                    top.impl.usr.zz3))
                                                                    0.0
                                                                    (-
                                                                    X1
                                                                    (/ 1 20))))
                                                                    (let
                                                                    ((X146
                                                                    Real 
                                                                    (ite
                                                                    X145
                                                                    top.impl.usr.zz5
                                                                    X143)))
                                                                    (let
                                                                    ((X147
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode
                                                                    6)))
                                                                    (let
                                                                    ((X148
                                                                    Bool X147))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz1
                                                                    true)
                                                                    (=
                                                                    top.impl.usr.zz0
                                                                    X148)
                                                                    (=
                                                                    top.impl.usr.zz2
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.zz1
                                                                    (not
                                                                    top.impl.usr.zz0))
                                                                    0.0
                                                                    (+
                                                                    X1
                                                                    (/ 1 20))))
                                                                    (let
                                                                    ((X149
                                                                    Real 
                                                                    (ite
                                                                    X148
                                                                    top.impl.usr.zz2
                                                                    X146)))
                                                                    (let
                                                                    ((X150
                                                                    Bool false))
                                                                    (let
                                                                    ((X151
                                                                    Bool 
                                                                    (ite
                                                                    (= X20 4)
                                                                    false
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X20
                                                                    3)
                                                                    (<=
                                                                    X20
                                                                    6))
                                                                    X151
                                                                    X150)))
                                                                    (let
                                                                    ((X153
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X20
                                                                    2)
                                                                    (<=
                                                                    X20
                                                                    8))
                                                                    X152
                                                                    X150)))
                                                                    (let
                                                                    ((X154
                                                                    Bool 
                                                                    (ite
                                                                    X22
                                                                    X153
                                                                    X150)))
                                                                    (let
                                                                    ((X155
                                                                    Bool 
                                                                    (ite
                                                                    (= X51 4)
                                                                    false
                                                                    X154)))
                                                                    (let
                                                                    ((X156
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X155
                                                                    X154)))
                                                                    (let
                                                                    ((X157
                                                                    Bool 
                                                                    (ite
                                                                    X53
                                                                    X156
                                                                    X154)))
                                                                    (let
                                                                    ((X158
                                                                    Bool 
                                                                    (ite
                                                                    X64
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    Bool 
                                                                    (ite
                                                                    X82
                                                                    true
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X127
                                                                    4))
                                                                    4
                                                                    X127)))
                                                                    (let
                                                                    ((X161
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X160
                                                                    X127)))
                                                                    (let
                                                                    ((X162
                                                                    Bool 
                                                                    (or
                                                                    X125
                                                                    X124)))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    false
                                                                    X159)))
                                                                    (let
                                                                    ((X164
                                                                    Bool 
                                                                    (ite
                                                                    X102
                                                                    X163
                                                                    X159)))
                                                                    (let
                                                                    ((X165
                                                                    Bool 
                                                                    (ite
                                                                    X102
                                                                    true
                                                                    X164)))
                                                                    (let
                                                                    ((X166
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    false
                                                                    X165)))
                                                                    (let
                                                                    ((X167
                                                                    Bool 
                                                                    (ite
                                                                    X107
                                                                    X166
                                                                    X165)))
                                                                    (let
                                                                    ((X168
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    false
                                                                    X167)))
                                                                    (let
                                                                    ((X169
                                                                    Bool 
                                                                    (ite
                                                                    X113
                                                                    X168
                                                                    X167)))
                                                                    (let
                                                                    ((X170
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X162)
                                                                    (=
                                                                    X161
                                                                    4))
                                                                    false
                                                                    X169)))
                                                                    (let
                                                                    ((X171
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X170
                                                                    X159)))
                                                                    (let
                                                                    ((X172
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X171
                                                                    X154)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz162
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    (ite
                                                                    top.impl.usr.zz155
                                                                    X150
                                                                    X172)
                                                                    X150))
                                                                    (let
                                                                    ((X173
                                                                    Real 
                                                                    (ite
                                                                    top.impl.usr.zz162
                                                                    top.usr.carSpeed
                                                                    X149)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.desiredSpeed
                                                                    (ite
                                                                    (<
                                                                    X173
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    X173
                                                                    100.0)
                                                                    100.0
                                                                    X173)))
                                                                    (let
                                                                    ((X174
                                                                    Bool 
                                                                    (>=
                                                                    top.impl.usr.desiredSpeed
                                                                    0.0)))
                                                                    (let
                                                                    ((X175
                                                                    Bool 
                                                                    (<=
                                                                    top.impl.usr.desiredSpeed
                                                                    100.0)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK
                                                                    (and
                                                                    X174
                                                                    X175))
                                                                    (let
                                                                    ((X176
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X20 1))
                                                                    1
                                                                    X20)))
                                                                    (let
                                                                    ((X177
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X161
                                                                    X100)))
                                                                    (let
                                                                    ((X178
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X177
                                                                    X51)))
                                                                    (let
                                                                    ((X179
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    (ite
                                                                    top.impl.usr.zz155
                                                                    X176
                                                                    X178)
                                                                    X20)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161
                                                                    X179)
                                                                    top.res.init_flag)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.desiredSpeed Real)
    (top.impl.usr.SP3c Bool)
    (top.impl.usr.zz0 Bool)
    (top.impl.usr.zz1 Bool)
    (top.impl.usr.zz2 Real)
    (top.impl.usr.zz3 Bool)
    (top.impl.usr.zz4 Bool)
    (top.impl.usr.zz5 Real)
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
    (top.impl.usr.desiredSpeed! Real)
    (top.impl.usr.SP3c! Bool)
    (top.impl.usr.zz0! Bool)
    (top.impl.usr.zz1! Bool)
    (top.impl.usr.zz2! Real)
    (top.impl.usr.zz3! Bool)
    (top.impl.usr.zz4! Bool)
    (top.impl.usr.zz5! Real)
    (top.impl.usr.zz155! Bool)
    (top.impl.usr.zz161! Int)
    (top.impl.usr.zz162! Bool)
    (top.impl.usr.zz170! Int)
    (top.impl.usr.zz176! Int)
    (top.impl.usr.zz178! Bool)
    (top.impl.usr.zz183! Bool)
  
  ) Bool
  
  (let
   ((X1 Real top.impl.usr.desiredSpeed))
   (let
    ((X2 Bool (>= top.usr.carSpeed! 15.0)))
    (let
     ((X3 Bool (= top.usr.carGear! 3)))
     (let
      ((X4
        Bool (and
              (and
               (and (and (not top.usr.cancel!) (not top.usr.brakePedal!)) X3)
               X2)
              top.usr.validInputs!)))
      (let
       ((X5 Bool top.impl.usr.zz183))
       (and
        (= top.impl.usr.zz183! top.usr.decelSet!)
        (let
         ((X6 Bool (and (not X5) top.impl.usr.zz183!)))
         (let
          ((X7 Bool top.impl.usr.zz178))
          (and
           (= top.impl.usr.zz178! top.usr.accelResume!)
           (let
            ((X8 Bool (and (not X7) top.impl.usr.zz178!)))
            (let
             ((X9 Int top.impl.usr.zz176))
             (let
              ((X10 Int (+ X9 1)))
              (let
               ((X11 Int (ite top.usr.decelSet! X10 0)))
               (let
                ((X12 Int (ite (>= 0 X11) 0 X11)))
                (and
                 (= top.impl.usr.zz176! (ite (<= X12 20) X12 20))
                 (let
                  ((X13 Bool (= top.impl.usr.zz176! 20)))
                  (let
                   ((X14 Int top.impl.usr.zz170))
                   (let
                    ((X15 Int (+ X14 1)))
                    (let
                     ((X16 Int (ite top.usr.accelResume! X15 0)))
                     (let
                      ((X17 Int (ite (>= 0 X16) 0 X16)))
                      (and
                       (= top.impl.usr.zz170! (ite (<= X17 20) X17 20))
                       (let
                        ((X18 Bool (= top.impl.usr.zz170! 20)))
                        (let
                         ((X19 Int top.impl.usr.mode))
                         (let
                          ((X20 Int top.impl.usr.zz161))
                          (and
                           (=
                            top.impl.usr.zz155!
                            (ite top.impl.usr.SP3c false top.impl.usr.zz155))
                           (let
                            ((X21 Int (ite (not (= X20 1)) 1 X19)))
                            (let
                             ((X22
                               Bool (and
                                     (and (>= X20 2) (<= X20 8))
                                     (not top.usr.onOff!))))
                             (let
                              ((X23 Int (ite (= X20 4) 3 X20)))
                              (let
                               ((X24
                                 Int (ite
                                      (and (>= X20 3) (<= X20 6))
                                      X23
                                      X20)))
                               (let
                                ((X25 Int (ite (= X24 5) 3 X24)))
                                (let
                                 ((X26
                                   Int (ite
                                        (and (>= X20 3) (<= X20 6))
                                        X25
                                        X24)))
                                 (let
                                  ((X27 Int (ite (= X26 6) 3 X26)))
                                  (let
                                   ((X28
                                     Int (ite
                                          (and (>= X20 3) (<= X20 6))
                                          X27
                                          X26)))
                                   (let
                                    ((X29
                                      Int (ite
                                           (and (>= X20 3) (<= X20 6))
                                           2
                                           X28)))
                                    (let
                                     ((X30
                                       Int (ite
                                            (and (>= X20 2) (<= X20 8))
                                            X29
                                            X20)))
                                     (let
                                      ((X31 Int (ite (= X30 7) 2 X30)))
                                      (let
                                       ((X32
                                         Int (ite
                                              (and (>= X20 2) (<= X20 8))
                                              X31
                                              X30)))
                                       (let
                                        ((X33 Int (ite (= X32 8) 2 X32)))
                                        (let
                                         ((X34
                                           Int (ite
                                                (and (>= X20 2) (<= X20 8))
                                                X33
                                                X32)))
                                         (let
                                          ((X35
                                            Int (ite
                                                 (and (>= X20 2) (<= X20 8))
                                                 0
                                                 X34)))
                                          (let
                                           ((X36 Int (ite X22 X35 X20)))
                                           (let
                                            ((X37
                                              Int (ite (not (= X36 1)) 1 X36)))
                                            (let
                                             ((X38 Int (ite X22 X37 X36)))
                                             (let
                                              ((X39
                                                Bool (and
                                                      (= X38 1)
                                                      (and
                                                       top.usr.onOff!
                                                       (not X22)))))
                                              (let
                                               ((X40
                                                 Int (ite (= X38 1) 0 X38)))
                                               (let
                                                ((X41 Int (ite X39 X40 X38)))
                                                (let
                                                 ((X42
                                                   Int (ite
                                                        (not (= X36 1))
                                                        1
                                                        X19)))
                                                 (let
                                                  ((X43
                                                    Int (ite X22 X42 X19)))
                                                  (let
                                                   ((X44
                                                     Int (ite
                                                          (not
                                                           (and
                                                            (>= X41 2)
                                                            (<= X41 8)))
                                                          2
                                                          X41)))
                                                   (let
                                                    ((X45
                                                      Bool (and
                                                            (not
                                                             (and
                                                              (>= X41 2)
                                                              (<= X41 8)))
                                                            (and
                                                             (>= X44 2)
                                                             (<= X44 8)))))
                                                    (let
                                                     ((X46
                                                       Int (ite
                                                            (not (= X44 7))
                                                            2
                                                            X43)))
                                                     (let
                                                      ((X47
                                                        Int (ite X45 X46 X43)))
                                                      (let
                                                       ((X48
                                                         Int (ite
                                                              X39
                                                              X47
                                                              X43)))
                                                       (let
                                                        ((X49
                                                          Int (ite
                                                               (not
                                                                (= X44 7))
                                                               7
                                                               X44)))
                                                        (let
                                                         ((X50
                                                           Int (ite
                                                                X45
                                                                X49
                                                                X44)))
                                                         (let
                                                          ((X51
                                                            Int (ite
                                                                 X39
                                                                 X50
                                                                 X41)))
                                                          (let
                                                           ((X52
                                                             Bool (or
                                                                   X39
                                                                   X22)))
                                                           (let
                                                            ((X53
                                                              Bool (and
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    (not X4))))
                                                            (let
                                                             ((X54
                                                               Int (ite
                                                                    (= X51 4)
                                                                    3
                                                                    X51)))
                                                             (let
                                                              ((X55
                                                                Int (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X54
                                                                    X51)))
                                                              (let
                                                               ((X56
                                                                 Int 
                                                                 (ite
                                                                  (= X55 5)
                                                                  3
                                                                  X55)))
                                                               (let
                                                                ((X57
                                                                  Int 
                                                                  (ite
                                                                   (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                   X56
                                                                   X55)))
                                                                (let
                                                                 ((X58
                                                                   Int 
                                                                   (ite
                                                                    (= X57 6)
                                                                    3
                                                                    X57)))
                                                                 (let
                                                                  ((X59
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X58
                                                                    X57)))
                                                                  (let
                                                                   ((X60
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    2
                                                                    X59)))
                                                                   (let
                                                                    ((X61
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X60
                                                                    X51)))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X61 8))
                                                                    8
                                                                    X61)))
                                                                    (let
                                                                    ((X63
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X62
                                                                    X61)))
                                                                    (let
                                                                    ((X64
                                                                    Bool 
                                                                    (and
                                                                    (= X63 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X53)))))
                                                                    (let
                                                                    ((X65
                                                                    Int 
                                                                    (ite
                                                                    (= X63 8)
                                                                    2
                                                                    X63)))
                                                                    (let
                                                                    ((X66
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X65
                                                                    X63)))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))
                                                                    3
                                                                    X66)))
                                                                    (let
                                                                    ((X68
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X66
                                                                    3)
                                                                    (<=
                                                                    X66
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X67
                                                                    3)
                                                                    (<=
                                                                    X67
                                                                    6)))))
                                                                    (let
                                                                    ((X69
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X67 4))
                                                                    4
                                                                    X67)))
                                                                    (let
                                                                    ((X70
                                                                    Int 
                                                                    (ite
                                                                    X68
                                                                    X69
                                                                    X67)))
                                                                    (let
                                                                    ((X71
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X70
                                                                    X66)))
                                                                    (let
                                                                    ((X72
                                                                    Bool 
                                                                    (or
                                                                    X64
                                                                    X53)))
                                                                    (let
                                                                    ((X73
                                                                    Bool 
                                                                    (and
                                                                    (= X71 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X8)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X72)))))
                                                                    (let
                                                                    ((X74
                                                                    Int 
                                                                    (ite
                                                                    (= X71 8)
                                                                    2
                                                                    X71)))
                                                                    (let
                                                                    ((X75
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X74
                                                                    X71)))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))
                                                                    3
                                                                    X75)))
                                                                    (let
                                                                    ((X77
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X75
                                                                    3)
                                                                    (<=
                                                                    X75
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X76
                                                                    3)
                                                                    (<=
                                                                    X76
                                                                    6)))))
                                                                    (let
                                                                    ((X78
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X76 4))
                                                                    4
                                                                    X76)))
                                                                    (let
                                                                    ((X79
                                                                    Int 
                                                                    (ite
                                                                    X77
                                                                    X78
                                                                    X76)))
                                                                    (let
                                                                    ((X80
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X79
                                                                    X75)))
                                                                    (let
                                                                    ((X81
                                                                    Bool 
                                                                    (or
                                                                    X73
                                                                    X72)))
                                                                    (let
                                                                    ((X82
                                                                    Bool 
                                                                    (and
                                                                    (= X80 7)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X4)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X81)))))
                                                                    (let
                                                                    ((X83
                                                                    Int 
                                                                    (ite
                                                                    (= X80 7)
                                                                    2
                                                                    X80)))
                                                                    (let
                                                                    ((X84
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X83
                                                                    X80)))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X61 8))
                                                                    3
                                                                    X48)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X53
                                                                    X85
                                                                    X48)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X67 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X68
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    Int 
                                                                    (ite
                                                                    X64
                                                                    X88
                                                                    X86)))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X76 4))
                                                                    4
                                                                    X89)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X77
                                                                    X90
                                                                    X89)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
                                                                    (ite
                                                                    X73
                                                                    X91
                                                                    X89)))
                                                                    (let
                                                                    ((X93
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X84
                                                                    3)
                                                                    (<=
                                                                    X84
                                                                    6)))
                                                                    3
                                                                    X84)))
                                                                    (let
                                                                    ((X94
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X84
                                                                    3)
                                                                    (<=
                                                                    X84
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X93
                                                                    3)
                                                                    (<=
                                                                    X93
                                                                    6)))))
                                                                    (let
                                                                    ((X95
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X93 4))
                                                                    4
                                                                    X92)))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    X94
                                                                    X95
                                                                    X92)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X96
                                                                    X92)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X93 4))
                                                                    4
                                                                    X93)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X94
                                                                    X98
                                                                    X93)))
                                                                    (let
                                                                    ((X100
                                                                    Int 
                                                                    (ite
                                                                    X82
                                                                    X99
                                                                    X84)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
                                                                    (or
                                                                    X82
                                                                    X81)))
                                                                    (let
                                                                    ((X102
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X6)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X103
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    3
                                                                    X100)))
                                                                    (let
                                                                    ((X104
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X103
                                                                    X100)))
                                                                    (let
                                                                    ((X105
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X104
                                                                    4))
                                                                    4
                                                                    X104)))
                                                                    (let
                                                                    ((X106
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X105
                                                                    X104)))
                                                                    (let
                                                                    ((X107
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X18)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X102)))))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    3
                                                                    X106)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X106)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    5))
                                                                    5
                                                                    X109)))
                                                                    (let
                                                                    ((X111
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X110
                                                                    X109)))
                                                                    (let
                                                                    ((X112
                                                                    Bool 
                                                                    (or
                                                                    X107
                                                                    X102)))
                                                                    (let
                                                                    ((X113
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X13)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X112)))))
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    3
                                                                    X111)))
                                                                    (let
                                                                    ((X115
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X114
                                                                    X111)))
                                                                    (let
                                                                    ((X116
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X115
                                                                    6))
                                                                    6
                                                                    X115)))
                                                                    (let
                                                                    ((X117
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X116
                                                                    X115)))
                                                                    (let
                                                                    ((X118
                                                                    Bool 
                                                                    (or
                                                                    X113
                                                                    X112)))
                                                                    (let
                                                                    ((X119
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X117
                                                                    6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X13))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X118)))))
                                                                    (let
                                                                    ((X120
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X117
                                                                    6)
                                                                    3
                                                                    X117)))
                                                                    (let
                                                                    ((X121
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X120
                                                                    X117)))
                                                                    (let
                                                                    ((X122
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X121
                                                                    4))
                                                                    4
                                                                    X121)))
                                                                    (let
                                                                    ((X123
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X122
                                                                    X121)))
                                                                    (let
                                                                    ((X124
                                                                    Bool 
                                                                    (or
                                                                    X119
                                                                    X118)))
                                                                    (let
                                                                    ((X125
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X123
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X18))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X124)))))
                                                                    (let
                                                                    ((X126
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X123
                                                                    5)
                                                                    3
                                                                    X123)))
                                                                    (let
                                                                    ((X127
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X126
                                                                    X123)))
                                                                    (let
                                                                    ((X128
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X104
                                                                    4))
                                                                    4
                                                                    X97)))
                                                                    (let
                                                                    ((X129
                                                                    Int 
                                                                    (ite
                                                                    X102
                                                                    X128
                                                                    X97)))
                                                                    (let
                                                                    ((X130
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    5))
                                                                    6
                                                                    X129)))
                                                                    (let
                                                                    ((X131
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X130
                                                                    X129)))
                                                                    (let
                                                                    ((X132
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X115
                                                                    6))
                                                                    5
                                                                    X131)))
                                                                    (let
                                                                    ((X133
                                                                    Int 
                                                                    (ite
                                                                    X113
                                                                    X132
                                                                    X131)))
                                                                    (let
                                                                    ((X134
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X121
                                                                    4))
                                                                    4
                                                                    X133)))
                                                                    (let
                                                                    ((X135
                                                                    Int 
                                                                    (ite
                                                                    X119
                                                                    X134
                                                                    X133)))
                                                                    (let
                                                                    ((X136
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X127
                                                                    4))
                                                                    4
                                                                    X135)))
                                                                    (let
                                                                    ((X137
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X136
                                                                    X135)))
                                                                    (let
                                                                    ((X138
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X137
                                                                    X97)))
                                                                    (let
                                                                    ((X139
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X138
                                                                    X48)))
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
                                                                    X21
                                                                    X139)
                                                                    X19))
                                                                    (let
                                                                    ((X140
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    3)))
                                                                    (let
                                                                    ((X141
                                                                    Real 
                                                                    (ite
                                                                    X140
                                                                    X1
                                                                    0.0)))
                                                                    (let
                                                                    ((X142
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    4)))
                                                                    (let
                                                                    ((X143
                                                                    Real 
                                                                    (ite
                                                                    X142
                                                                    X1
                                                                    X141)))
                                                                    (let
                                                                    ((X144
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    5)))
                                                                    (let
                                                                    ((X145
                                                                    Bool X144))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz4!
                                                                    (ite
                                                                    top.impl.usr.zz3
                                                                    false
                                                                    top.impl.usr.zz4))
                                                                    (=
                                                                    top.impl.usr.zz3!
                                                                    X145)
                                                                    (=
                                                                    top.impl.usr.zz5!
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.zz4!
                                                                    (not
                                                                    top.impl.usr.zz3!))
                                                                    0.0
                                                                    (ite
                                                                    top.impl.usr.zz3!
                                                                    (-
                                                                    X1
                                                                    (/ 1 20))
                                                                    top.impl.usr.zz5)))
                                                                    (let
                                                                    ((X146
                                                                    Real 
                                                                    (ite
                                                                    X145
                                                                    top.impl.usr.zz5!
                                                                    X143)))
                                                                    (let
                                                                    ((X147
                                                                    Bool 
                                                                    (=
                                                                    top.impl.usr.mode!
                                                                    6)))
                                                                    (let
                                                                    ((X148
                                                                    Bool X147))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz1!
                                                                    (ite
                                                                    top.impl.usr.zz0
                                                                    false
                                                                    top.impl.usr.zz1))
                                                                    (=
                                                                    top.impl.usr.zz0!
                                                                    X148)
                                                                    (=
                                                                    top.impl.usr.zz2!
                                                                    (ite
                                                                    (and
                                                                    top.impl.usr.zz1!
                                                                    (not
                                                                    top.impl.usr.zz0!))
                                                                    0.0
                                                                    (ite
                                                                    top.impl.usr.zz0!
                                                                    (+
                                                                    X1
                                                                    (/ 1 20))
                                                                    top.impl.usr.zz2)))
                                                                    (let
                                                                    ((X149
                                                                    Real 
                                                                    (ite
                                                                    X148
                                                                    top.impl.usr.zz2!
                                                                    X146)))
                                                                    (let
                                                                    ((X150
                                                                    Bool top.impl.usr.zz162))
                                                                    (let
                                                                    ((X151
                                                                    Bool 
                                                                    (ite
                                                                    (= X20 4)
                                                                    false
                                                                    X150)))
                                                                    (let
                                                                    ((X152
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X20
                                                                    3)
                                                                    (<=
                                                                    X20
                                                                    6))
                                                                    X151
                                                                    X150)))
                                                                    (let
                                                                    ((X153
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X20
                                                                    2)
                                                                    (<=
                                                                    X20
                                                                    8))
                                                                    X152
                                                                    X150)))
                                                                    (let
                                                                    ((X154
                                                                    Bool 
                                                                    (ite
                                                                    X22
                                                                    X153
                                                                    X150)))
                                                                    (let
                                                                    ((X155
                                                                    Bool 
                                                                    (ite
                                                                    (= X51 4)
                                                                    false
                                                                    X154)))
                                                                    (let
                                                                    ((X156
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    3)
                                                                    (<=
                                                                    X51
                                                                    6))
                                                                    X155
                                                                    X154)))
                                                                    (let
                                                                    ((X157
                                                                    Bool 
                                                                    (ite
                                                                    X53
                                                                    X156
                                                                    X154)))
                                                                    (let
                                                                    ((X158
                                                                    Bool 
                                                                    (ite
                                                                    X64
                                                                    true
                                                                    X157)))
                                                                    (let
                                                                    ((X159
                                                                    Bool 
                                                                    (ite
                                                                    X82
                                                                    true
                                                                    X158)))
                                                                    (let
                                                                    ((X160
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X127
                                                                    4))
                                                                    4
                                                                    X127)))
                                                                    (let
                                                                    ((X161
                                                                    Int 
                                                                    (ite
                                                                    X125
                                                                    X160
                                                                    X127)))
                                                                    (let
                                                                    ((X162
                                                                    Bool 
                                                                    (or
                                                                    X125
                                                                    X124)))
                                                                    (let
                                                                    ((X163
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X100
                                                                    4)
                                                                    false
                                                                    X159)))
                                                                    (let
                                                                    ((X164
                                                                    Bool 
                                                                    (ite
                                                                    X102
                                                                    X163
                                                                    X159)))
                                                                    (let
                                                                    ((X165
                                                                    Bool 
                                                                    (ite
                                                                    X102
                                                                    true
                                                                    X164)))
                                                                    (let
                                                                    ((X166
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X106
                                                                    4)
                                                                    false
                                                                    X165)))
                                                                    (let
                                                                    ((X167
                                                                    Bool 
                                                                    (ite
                                                                    X107
                                                                    X166
                                                                    X165)))
                                                                    (let
                                                                    ((X168
                                                                    Bool 
                                                                    (ite
                                                                    (=
                                                                    X111
                                                                    4)
                                                                    false
                                                                    X167)))
                                                                    (let
                                                                    ((X169
                                                                    Bool 
                                                                    (ite
                                                                    X113
                                                                    X168
                                                                    X167)))
                                                                    (let
                                                                    ((X170
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X162)
                                                                    (=
                                                                    X161
                                                                    4))
                                                                    false
                                                                    X169)))
                                                                    (let
                                                                    ((X171
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X170
                                                                    X159)))
                                                                    (let
                                                                    ((X172
                                                                    Bool 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X171
                                                                    X154)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz162!
                                                                    (ite
                                                                    top.impl.usr.SP3c!
                                                                    (ite
                                                                    top.impl.usr.zz155!
                                                                    X150
                                                                    X172)
                                                                    X150))
                                                                    (let
                                                                    ((X173
                                                                    Real 
                                                                    (ite
                                                                    top.impl.usr.zz162!
                                                                    top.usr.carSpeed!
                                                                    X149)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.desiredSpeed!
                                                                    (ite
                                                                    (<
                                                                    X173
                                                                    0.0)
                                                                    0.0
                                                                    (ite
                                                                    (>
                                                                    X173
                                                                    100.0)
                                                                    100.0
                                                                    X173)))
                                                                    (let
                                                                    ((X174
                                                                    Bool 
                                                                    (>=
                                                                    top.impl.usr.desiredSpeed!
                                                                    0.0)))
                                                                    (let
                                                                    ((X175
                                                                    Bool 
                                                                    (<=
                                                                    top.impl.usr.desiredSpeed!
                                                                    100.0)))
                                                                    (and
                                                                    (=
                                                                    top.usr.OK!
                                                                    (and
                                                                    X174
                                                                    X175))
                                                                    (let
                                                                    ((X176
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X20 1))
                                                                    1
                                                                    X20)))
                                                                    (let
                                                                    ((X177
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not
                                                                    X101)
                                                                    (and
                                                                    (>=
                                                                    X100
                                                                    3)
                                                                    (<=
                                                                    X100
                                                                    6)))
                                                                    X161
                                                                    X100)))
                                                                    (let
                                                                    ((X178
                                                                    Int 
                                                                    (ite
                                                                    (and
                                                                    (not X52)
                                                                    (and
                                                                    (>=
                                                                    X51
                                                                    2)
                                                                    (<=
                                                                    X51
                                                                    8)))
                                                                    X177
                                                                    X51)))
                                                                    (let
                                                                    ((X179
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c!
                                                                    (ite
                                                                    top.impl.usr.zz155!
                                                                    X176
                                                                    X178)
                                                                    X20)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.zz161!
                                                                    X179)
                                                                    (not
                                                                    top.res.init_flag!))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
    (top.impl.usr.desiredSpeed Real)
    (top.impl.usr.SP3c Bool)
    (top.impl.usr.zz0 Bool)
    (top.impl.usr.zz1 Bool)
    (top.impl.usr.zz2 Real)
    (top.impl.usr.zz3 Bool)
    (top.impl.usr.zz4 Bool)
    (top.impl.usr.zz5 Real)
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
