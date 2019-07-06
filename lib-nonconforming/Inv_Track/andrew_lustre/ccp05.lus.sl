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
   ((X1 Int 0))
   (let
    ((X2 Int (ite (not (= X1 1)) 1 X1)))
    (and
     (= top.usr.OK_a_0 (or (= X2 1) (and (>= X2 2) (<= X2 8))))
     (let
      ((X3 Bool (>= top.usr.carSpeed_a_0 15.0)))
      (let
       ((X4 Bool (= top.usr.carGear_a_0 3)))
       (let
        ((X5
          Bool (and
                (and
                 (and
                  (and (not top.usr.cancel_a_0) (not top.usr.brakePedal_a_0))
                  X4)
                 X3)
                top.usr.validInputs_a_0)))
        (let
         ((X6 Bool true))
         (and
          (= top.impl.usr.zz183_a_0 top.usr.decelSet_a_0)
          (let
           ((X7 Bool (and (not X6) top.impl.usr.zz183_a_0)))
           (let
            ((X8 Bool true))
            (and
             (= top.impl.usr.zz178_a_0 top.usr.accelResume_a_0)
             (let
              ((X9 Bool (and (not X8) top.impl.usr.zz178_a_0)))
              (let
               ((X10 Int 0))
               (let
                ((X11 Int (+ X10 1)))
                (let
                 ((X12 Int (ite top.usr.decelSet_a_0 X11 0)))
                 (let
                  ((X13 Int (ite (>= 0 X12) 0 X12)))
                  (and
                   (= top.impl.usr.zz176_a_0 (ite (<= X13 20) X13 20))
                   (let
                    ((X14 Bool (= top.impl.usr.zz176_a_0 20)))
                    (let
                     ((X15 Int 0))
                     (let
                      ((X16 Int (+ X15 1)))
                      (let
                       ((X17 Int (ite top.usr.accelResume_a_0 X16 0)))
                       (let
                        ((X18 Int (ite (>= 0 X17) 0 X17)))
                        (and
                         (= top.impl.usr.zz170_a_0 (ite (<= X18 20) X18 20))
                         (let
                          ((X19 Bool (= top.impl.usr.zz170_a_0 20)))
                          (and
                           (= top.impl.usr.zz155_a_0 true)
                           (let
                            ((X20
                              Bool (and
                                    (and (>= X1 2) (<= X1 8))
                                    (not top.usr.onOff_a_0))))
                            (let
                             ((X21 Int (ite (= X1 4) 3 X1)))
                             (let
                              ((X22
                                Int (ite (and (>= X1 3) (<= X1 6)) X21 X1)))
                              (let
                               ((X23 Int (ite (= X22 5) 3 X22)))
                               (let
                                ((X24
                                  Int (ite (and (>= X1 3) (<= X1 6)) X23 X22)))
                                (let
                                 ((X25 Int (ite (= X24 6) 3 X24)))
                                 (let
                                  ((X26
                                    Int (ite
                                         (and (>= X1 3) (<= X1 6))
                                         X25
                                         X24)))
                                  (let
                                   ((X27
                                     Int (ite
                                          (and (>= X1 3) (<= X1 6))
                                          2
                                          X26)))
                                   (let
                                    ((X28
                                      Int (ite
                                           (and (>= X1 2) (<= X1 8))
                                           X27
                                           X1)))
                                    (let
                                     ((X29 Int (ite (= X28 7) 2 X28)))
                                     (let
                                      ((X30
                                        Int (ite
                                             (and (>= X1 2) (<= X1 8))
                                             X29
                                             X28)))
                                      (let
                                       ((X31 Int (ite (= X30 8) 2 X30)))
                                       (let
                                        ((X32
                                          Int (ite
                                               (and (>= X1 2) (<= X1 8))
                                               X31
                                               X30)))
                                        (let
                                         ((X33
                                           Int (ite
                                                (and (>= X1 2) (<= X1 8))
                                                0
                                                X32)))
                                         (let
                                          ((X34 Int (ite X20 X33 X1)))
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
                                              ((X38
                                                Int (ite (= X36 1) 0 X36)))
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
                                                        Bool (and
                                                              (and
                                                               (>= X44 3)
                                                               (<= X44 6))
                                                              (not X5))))
                                                      (let
                                                       ((X47
                                                         Int (ite
                                                              (= X44 4)
                                                              3
                                                              X44)))
                                                       (let
                                                        ((X48
                                                          Int (ite
                                                               (and
                                                                (>= X44 3)
                                                                (<= X44 6))
                                                               X47
                                                               X44)))
                                                        (let
                                                         ((X49
                                                           Int (ite
                                                                (= X48 5)
                                                                3
                                                                X48)))
                                                         (let
                                                          ((X50
                                                            Int (ite
                                                                 (and
                                                                  (>= X44 3)
                                                                  (<= X44 6))
                                                                 X49
                                                                 X48)))
                                                          (let
                                                           ((X51
                                                             Int (ite
                                                                  (= X50 6)
                                                                  3
                                                                  X50)))
                                                           (let
                                                            ((X52
                                                              Int (ite
                                                                   (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                   X51
                                                                   X50)))
                                                            (let
                                                             ((X53
                                                               Int (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    2
                                                                    X52)))
                                                             (let
                                                              ((X54
                                                                Int (ite
                                                                    X46
                                                                    X53
                                                                    X44)))
                                                              (let
                                                               ((X55
                                                                 Int 
                                                                 (ite
                                                                  (not
                                                                   (= X54 8))
                                                                  8
                                                                  X54)))
                                                               (let
                                                                ((X56
                                                                  Int 
                                                                  (ite
                                                                   X46
                                                                   X55
                                                                   X54)))
                                                                (let
                                                                 ((X57
                                                                   Bool 
                                                                   (and
                                                                    (= X56 8)
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
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X46)))))
                                                                 (let
                                                                  ((X58
                                                                    Int 
                                                                    (ite
                                                                    (= X56 8)
                                                                    2
                                                                    X56)))
                                                                  (let
                                                                   ((X59
                                                                    Int 
                                                                    (ite
                                                                    X57
                                                                    X58
                                                                    X56)))
                                                                   (let
                                                                    ((X60
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X59
                                                                    3)
                                                                    (<=
                                                                    X59
                                                                    6)))
                                                                    3
                                                                    X59)))
                                                                    (let
                                                                    ((X61
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X59
                                                                    3)
                                                                    (<=
                                                                    X59
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X60
                                                                    3)
                                                                    (<=
                                                                    X60
                                                                    6)))))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 4))
                                                                    4
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
                                                                    X57
                                                                    X63
                                                                    X59)))
                                                                    (let
                                                                    ((X65
                                                                    Bool 
                                                                    (or
                                                                    X57
                                                                    X46)))
                                                                    (let
                                                                    ((X66
                                                                    Bool 
                                                                    (and
                                                                    (= X64 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X9)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X65)))))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    (= X64 8)
                                                                    2
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X66
                                                                    X67
                                                                    X64)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X69 4))
                                                                    4
                                                                    X69)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X69)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    X66
                                                                    X72
                                                                    X68)))
                                                                    (let
                                                                    ((X74
                                                                    Bool 
                                                                    (or
                                                                    X66
                                                                    X65)))
                                                                    (let
                                                                    ((X75
                                                                    Bool 
                                                                    (and
                                                                    (= X73 7)
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
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X74)))))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    (= X73 7)
                                                                    2
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X75
                                                                    X76
                                                                    X73)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X78 4))
                                                                    4
                                                                    X78)))
                                                                    (let
                                                                    ((X81
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X78)))
                                                                    (let
                                                                    ((X82
                                                                    Int 
                                                                    (ite
                                                                    X75
                                                                    X81
                                                                    X77)))
                                                                    (let
                                                                    ((X83
                                                                    Bool 
                                                                    (or
                                                                    X75
                                                                    X74)))
                                                                    (let
                                                                    ((X84
                                                                    Bool 
                                                                    (and
                                                                    (= X82 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X7)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    (= X82 4)
                                                                    3
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X84
                                                                    X85
                                                                    X82)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X86 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X84
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    Bool 
                                                                    (and
                                                                    (= X88 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X19)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X84)))))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    (= X88 4)
                                                                    3
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X89
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X91 5))
                                                                    5
                                                                    X91)))
                                                                    (let
                                                                    ((X93
                                                                    Int 
                                                                    (ite
                                                                    X89
                                                                    X92
                                                                    X91)))
                                                                    (let
                                                                    ((X94
                                                                    Bool 
                                                                    (or
                                                                    X89
                                                                    X84)))
                                                                    (let
                                                                    ((X95
                                                                    Bool 
                                                                    (and
                                                                    (= X93 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X14)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X94)))))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    (= X93 4)
                                                                    3
                                                                    X93)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X95
                                                                    X96
                                                                    X93)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X97 6))
                                                                    6
                                                                    X97)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X95
                                                                    X98
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    Bool 
                                                                    (or
                                                                    X95
                                                                    X94)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
                                                                    (and
                                                                    (= X99 6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X14))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X100)))))
                                                                    (let
                                                                    ((X102
                                                                    Int 
                                                                    (ite
                                                                    (= X99 6)
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
                                                                    (or
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X107
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X19))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X106)))))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X105)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    4))
                                                                    4
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
                                                                    Int 
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
                                                                    X112
                                                                    X44)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c_a_0
                                                                    true)
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_0
                                                                    (ite
                                                                    top.impl.usr.zz155_a_0
                                                                    X2
                                                                    X113)
                                                                    X1)))
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
   ((X1 Int top.impl.usr.zz161_a_0))
   (let
    ((X2 Int (ite (not (= X1 1)) 1 X1)))
    (and
     (= top.usr.OK_a_1 (or (= X2 1) (and (>= X2 2) (<= X2 8))))
     (let
      ((X3 Bool (>= top.usr.carSpeed_a_1 15.0)))
      (let
       ((X4 Bool (= top.usr.carGear_a_1 3)))
       (let
        ((X5
          Bool (and
                (and
                 (and
                  (and (not top.usr.cancel_a_1) (not top.usr.brakePedal_a_1))
                  X4)
                 X3)
                top.usr.validInputs_a_1)))
        (let
         ((X6 Bool top.impl.usr.zz183_a_0))
         (and
          (= top.impl.usr.zz183_a_1 top.usr.decelSet_a_1)
          (let
           ((X7 Bool (and (not X6) top.impl.usr.zz183_a_1)))
           (let
            ((X8 Bool top.impl.usr.zz178_a_0))
            (and
             (= top.impl.usr.zz178_a_1 top.usr.accelResume_a_1)
             (let
              ((X9 Bool (and (not X8) top.impl.usr.zz178_a_1)))
              (let
               ((X10 Int top.impl.usr.zz176_a_0))
               (let
                ((X11 Int (+ X10 1)))
                (let
                 ((X12 Int (ite top.usr.decelSet_a_1 X11 0)))
                 (let
                  ((X13 Int (ite (>= 0 X12) 0 X12)))
                  (and
                   (= top.impl.usr.zz176_a_1 (ite (<= X13 20) X13 20))
                   (let
                    ((X14 Bool (= top.impl.usr.zz176_a_1 20)))
                    (let
                     ((X15 Int top.impl.usr.zz170_a_0))
                     (let
                      ((X16 Int (+ X15 1)))
                      (let
                       ((X17 Int (ite top.usr.accelResume_a_1 X16 0)))
                       (let
                        ((X18 Int (ite (>= 0 X17) 0 X17)))
                        (and
                         (= top.impl.usr.zz170_a_1 (ite (<= X18 20) X18 20))
                         (let
                          ((X19 Bool (= top.impl.usr.zz170_a_1 20)))
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
                                    (and (>= X1 2) (<= X1 8))
                                    (not top.usr.onOff_a_1))))
                            (let
                             ((X21 Int (ite (= X1 4) 3 X1)))
                             (let
                              ((X22
                                Int (ite (and (>= X1 3) (<= X1 6)) X21 X1)))
                              (let
                               ((X23 Int (ite (= X22 5) 3 X22)))
                               (let
                                ((X24
                                  Int (ite (and (>= X1 3) (<= X1 6)) X23 X22)))
                                (let
                                 ((X25 Int (ite (= X24 6) 3 X24)))
                                 (let
                                  ((X26
                                    Int (ite
                                         (and (>= X1 3) (<= X1 6))
                                         X25
                                         X24)))
                                  (let
                                   ((X27
                                     Int (ite
                                          (and (>= X1 3) (<= X1 6))
                                          2
                                          X26)))
                                   (let
                                    ((X28
                                      Int (ite
                                           (and (>= X1 2) (<= X1 8))
                                           X27
                                           X1)))
                                    (let
                                     ((X29 Int (ite (= X28 7) 2 X28)))
                                     (let
                                      ((X30
                                        Int (ite
                                             (and (>= X1 2) (<= X1 8))
                                             X29
                                             X28)))
                                      (let
                                       ((X31 Int (ite (= X30 8) 2 X30)))
                                       (let
                                        ((X32
                                          Int (ite
                                               (and (>= X1 2) (<= X1 8))
                                               X31
                                               X30)))
                                        (let
                                         ((X33
                                           Int (ite
                                                (and (>= X1 2) (<= X1 8))
                                                0
                                                X32)))
                                         (let
                                          ((X34 Int (ite X20 X33 X1)))
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
                                              ((X38
                                                Int (ite (= X36 1) 0 X36)))
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
                                                        Bool (and
                                                              (and
                                                               (>= X44 3)
                                                               (<= X44 6))
                                                              (not X5))))
                                                      (let
                                                       ((X47
                                                         Int (ite
                                                              (= X44 4)
                                                              3
                                                              X44)))
                                                       (let
                                                        ((X48
                                                          Int (ite
                                                               (and
                                                                (>= X44 3)
                                                                (<= X44 6))
                                                               X47
                                                               X44)))
                                                        (let
                                                         ((X49
                                                           Int (ite
                                                                (= X48 5)
                                                                3
                                                                X48)))
                                                         (let
                                                          ((X50
                                                            Int (ite
                                                                 (and
                                                                  (>= X44 3)
                                                                  (<= X44 6))
                                                                 X49
                                                                 X48)))
                                                          (let
                                                           ((X51
                                                             Int (ite
                                                                  (= X50 6)
                                                                  3
                                                                  X50)))
                                                           (let
                                                            ((X52
                                                              Int (ite
                                                                   (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                   X51
                                                                   X50)))
                                                            (let
                                                             ((X53
                                                               Int (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    2
                                                                    X52)))
                                                             (let
                                                              ((X54
                                                                Int (ite
                                                                    X46
                                                                    X53
                                                                    X44)))
                                                              (let
                                                               ((X55
                                                                 Int 
                                                                 (ite
                                                                  (not
                                                                   (= X54 8))
                                                                  8
                                                                  X54)))
                                                               (let
                                                                ((X56
                                                                  Int 
                                                                  (ite
                                                                   X46
                                                                   X55
                                                                   X54)))
                                                                (let
                                                                 ((X57
                                                                   Bool 
                                                                   (and
                                                                    (= X56 8)
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
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X46)))))
                                                                 (let
                                                                  ((X58
                                                                    Int 
                                                                    (ite
                                                                    (= X56 8)
                                                                    2
                                                                    X56)))
                                                                  (let
                                                                   ((X59
                                                                    Int 
                                                                    (ite
                                                                    X57
                                                                    X58
                                                                    X56)))
                                                                   (let
                                                                    ((X60
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X59
                                                                    3)
                                                                    (<=
                                                                    X59
                                                                    6)))
                                                                    3
                                                                    X59)))
                                                                    (let
                                                                    ((X61
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X59
                                                                    3)
                                                                    (<=
                                                                    X59
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X60
                                                                    3)
                                                                    (<=
                                                                    X60
                                                                    6)))))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 4))
                                                                    4
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
                                                                    X57
                                                                    X63
                                                                    X59)))
                                                                    (let
                                                                    ((X65
                                                                    Bool 
                                                                    (or
                                                                    X57
                                                                    X46)))
                                                                    (let
                                                                    ((X66
                                                                    Bool 
                                                                    (and
                                                                    (= X64 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X9)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X65)))))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    (= X64 8)
                                                                    2
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X66
                                                                    X67
                                                                    X64)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X69 4))
                                                                    4
                                                                    X69)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X69)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    X66
                                                                    X72
                                                                    X68)))
                                                                    (let
                                                                    ((X74
                                                                    Bool 
                                                                    (or
                                                                    X66
                                                                    X65)))
                                                                    (let
                                                                    ((X75
                                                                    Bool 
                                                                    (and
                                                                    (= X73 7)
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
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X74)))))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    (= X73 7)
                                                                    2
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X75
                                                                    X76
                                                                    X73)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X78 4))
                                                                    4
                                                                    X78)))
                                                                    (let
                                                                    ((X81
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X78)))
                                                                    (let
                                                                    ((X82
                                                                    Int 
                                                                    (ite
                                                                    X75
                                                                    X81
                                                                    X77)))
                                                                    (let
                                                                    ((X83
                                                                    Bool 
                                                                    (or
                                                                    X75
                                                                    X74)))
                                                                    (let
                                                                    ((X84
                                                                    Bool 
                                                                    (and
                                                                    (= X82 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X7)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    (= X82 4)
                                                                    3
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X84
                                                                    X85
                                                                    X82)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X86 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X84
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    Bool 
                                                                    (and
                                                                    (= X88 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X19)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X84)))))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    (= X88 4)
                                                                    3
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X89
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X91 5))
                                                                    5
                                                                    X91)))
                                                                    (let
                                                                    ((X93
                                                                    Int 
                                                                    (ite
                                                                    X89
                                                                    X92
                                                                    X91)))
                                                                    (let
                                                                    ((X94
                                                                    Bool 
                                                                    (or
                                                                    X89
                                                                    X84)))
                                                                    (let
                                                                    ((X95
                                                                    Bool 
                                                                    (and
                                                                    (= X93 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X14)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X94)))))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    (= X93 4)
                                                                    3
                                                                    X93)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X95
                                                                    X96
                                                                    X93)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X97 6))
                                                                    6
                                                                    X97)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X95
                                                                    X98
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    Bool 
                                                                    (or
                                                                    X95
                                                                    X94)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
                                                                    (and
                                                                    (= X99 6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X14))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X100)))))
                                                                    (let
                                                                    ((X102
                                                                    Int 
                                                                    (ite
                                                                    (= X99 6)
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
                                                                    (or
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X107
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X19))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X106)))))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X105)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    4))
                                                                    4
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
                                                                    Int 
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
                                                                    X112
                                                                    X44)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c_a_1
                                                                    true)
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c_a_1
                                                                    (ite
                                                                    top.impl.usr.zz155_a_1
                                                                    X2
                                                                    X113)
                                                                    X1)))
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
(declare-primed-var top.impl.usr.SP3c Bool)
(declare-primed-var top.impl.usr.zz155 Bool)
(declare-primed-var top.impl.usr.zz161 Int)
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
    (top.impl.usr.SP3c Bool)
    (top.impl.usr.zz155 Bool)
    (top.impl.usr.zz161 Int)
    (top.impl.usr.zz170 Int)
    (top.impl.usr.zz176 Int)
    (top.impl.usr.zz178 Bool)
    (top.impl.usr.zz183 Bool)
  ) Bool
  
  (let
   ((X1 Int 0))
   (let
    ((X2 Int (ite (not (= X1 1)) 1 X1)))
    (and
     (= top.usr.OK (or (= X2 1) (and (>= X2 2) (<= X2 8))))
     (let
      ((X3 Bool (>= top.usr.carSpeed 15.0)))
      (let
       ((X4 Bool (= top.usr.carGear 3)))
       (let
        ((X5
          Bool (and
                (and
                 (and (and (not top.usr.cancel) (not top.usr.brakePedal)) X4)
                 X3)
                top.usr.validInputs)))
        (let
         ((X6 Bool true))
         (and
          (= top.impl.usr.zz183 top.usr.decelSet)
          (let
           ((X7 Bool (and (not X6) top.impl.usr.zz183)))
           (let
            ((X8 Bool true))
            (and
             (= top.impl.usr.zz178 top.usr.accelResume)
             (let
              ((X9 Bool (and (not X8) top.impl.usr.zz178)))
              (let
               ((X10 Int 0))
               (let
                ((X11 Int (+ X10 1)))
                (let
                 ((X12 Int (ite top.usr.decelSet X11 0)))
                 (let
                  ((X13 Int (ite (>= 0 X12) 0 X12)))
                  (and
                   (= top.impl.usr.zz176 (ite (<= X13 20) X13 20))
                   (let
                    ((X14 Bool (= top.impl.usr.zz176 20)))
                    (let
                     ((X15 Int 0))
                     (let
                      ((X16 Int (+ X15 1)))
                      (let
                       ((X17 Int (ite top.usr.accelResume X16 0)))
                       (let
                        ((X18 Int (ite (>= 0 X17) 0 X17)))
                        (and
                         (= top.impl.usr.zz170 (ite (<= X18 20) X18 20))
                         (let
                          ((X19 Bool (= top.impl.usr.zz170 20)))
                          (and
                           (= top.impl.usr.zz155 true)
                           (let
                            ((X20
                              Bool (and
                                    (and (>= X1 2) (<= X1 8))
                                    (not top.usr.onOff))))
                            (let
                             ((X21 Int (ite (= X1 4) 3 X1)))
                             (let
                              ((X22
                                Int (ite (and (>= X1 3) (<= X1 6)) X21 X1)))
                              (let
                               ((X23 Int (ite (= X22 5) 3 X22)))
                               (let
                                ((X24
                                  Int (ite (and (>= X1 3) (<= X1 6)) X23 X22)))
                                (let
                                 ((X25 Int (ite (= X24 6) 3 X24)))
                                 (let
                                  ((X26
                                    Int (ite
                                         (and (>= X1 3) (<= X1 6))
                                         X25
                                         X24)))
                                  (let
                                   ((X27
                                     Int (ite
                                          (and (>= X1 3) (<= X1 6))
                                          2
                                          X26)))
                                   (let
                                    ((X28
                                      Int (ite
                                           (and (>= X1 2) (<= X1 8))
                                           X27
                                           X1)))
                                    (let
                                     ((X29 Int (ite (= X28 7) 2 X28)))
                                     (let
                                      ((X30
                                        Int (ite
                                             (and (>= X1 2) (<= X1 8))
                                             X29
                                             X28)))
                                      (let
                                       ((X31 Int (ite (= X30 8) 2 X30)))
                                       (let
                                        ((X32
                                          Int (ite
                                               (and (>= X1 2) (<= X1 8))
                                               X31
                                               X30)))
                                        (let
                                         ((X33
                                           Int (ite
                                                (and (>= X1 2) (<= X1 8))
                                                0
                                                X32)))
                                         (let
                                          ((X34 Int (ite X20 X33 X1)))
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
                                              ((X38
                                                Int (ite (= X36 1) 0 X36)))
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
                                                        Bool (and
                                                              (and
                                                               (>= X44 3)
                                                               (<= X44 6))
                                                              (not X5))))
                                                      (let
                                                       ((X47
                                                         Int (ite
                                                              (= X44 4)
                                                              3
                                                              X44)))
                                                       (let
                                                        ((X48
                                                          Int (ite
                                                               (and
                                                                (>= X44 3)
                                                                (<= X44 6))
                                                               X47
                                                               X44)))
                                                        (let
                                                         ((X49
                                                           Int (ite
                                                                (= X48 5)
                                                                3
                                                                X48)))
                                                         (let
                                                          ((X50
                                                            Int (ite
                                                                 (and
                                                                  (>= X44 3)
                                                                  (<= X44 6))
                                                                 X49
                                                                 X48)))
                                                          (let
                                                           ((X51
                                                             Int (ite
                                                                  (= X50 6)
                                                                  3
                                                                  X50)))
                                                           (let
                                                            ((X52
                                                              Int (ite
                                                                   (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                   X51
                                                                   X50)))
                                                            (let
                                                             ((X53
                                                               Int (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    2
                                                                    X52)))
                                                             (let
                                                              ((X54
                                                                Int (ite
                                                                    X46
                                                                    X53
                                                                    X44)))
                                                              (let
                                                               ((X55
                                                                 Int 
                                                                 (ite
                                                                  (not
                                                                   (= X54 8))
                                                                  8
                                                                  X54)))
                                                               (let
                                                                ((X56
                                                                  Int 
                                                                  (ite
                                                                   X46
                                                                   X55
                                                                   X54)))
                                                                (let
                                                                 ((X57
                                                                   Bool 
                                                                   (and
                                                                    (= X56 8)
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
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X46)))))
                                                                 (let
                                                                  ((X58
                                                                    Int 
                                                                    (ite
                                                                    (= X56 8)
                                                                    2
                                                                    X56)))
                                                                  (let
                                                                   ((X59
                                                                    Int 
                                                                    (ite
                                                                    X57
                                                                    X58
                                                                    X56)))
                                                                   (let
                                                                    ((X60
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X59
                                                                    3)
                                                                    (<=
                                                                    X59
                                                                    6)))
                                                                    3
                                                                    X59)))
                                                                    (let
                                                                    ((X61
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X59
                                                                    3)
                                                                    (<=
                                                                    X59
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X60
                                                                    3)
                                                                    (<=
                                                                    X60
                                                                    6)))))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 4))
                                                                    4
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
                                                                    X57
                                                                    X63
                                                                    X59)))
                                                                    (let
                                                                    ((X65
                                                                    Bool 
                                                                    (or
                                                                    X57
                                                                    X46)))
                                                                    (let
                                                                    ((X66
                                                                    Bool 
                                                                    (and
                                                                    (= X64 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X9)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X65)))))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    (= X64 8)
                                                                    2
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X66
                                                                    X67
                                                                    X64)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X69 4))
                                                                    4
                                                                    X69)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X69)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    X66
                                                                    X72
                                                                    X68)))
                                                                    (let
                                                                    ((X74
                                                                    Bool 
                                                                    (or
                                                                    X66
                                                                    X65)))
                                                                    (let
                                                                    ((X75
                                                                    Bool 
                                                                    (and
                                                                    (= X73 7)
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
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X74)))))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    (= X73 7)
                                                                    2
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X75
                                                                    X76
                                                                    X73)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X78 4))
                                                                    4
                                                                    X78)))
                                                                    (let
                                                                    ((X81
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X78)))
                                                                    (let
                                                                    ((X82
                                                                    Int 
                                                                    (ite
                                                                    X75
                                                                    X81
                                                                    X77)))
                                                                    (let
                                                                    ((X83
                                                                    Bool 
                                                                    (or
                                                                    X75
                                                                    X74)))
                                                                    (let
                                                                    ((X84
                                                                    Bool 
                                                                    (and
                                                                    (= X82 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X7)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    (= X82 4)
                                                                    3
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X84
                                                                    X85
                                                                    X82)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X86 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X84
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    Bool 
                                                                    (and
                                                                    (= X88 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X19)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X84)))))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    (= X88 4)
                                                                    3
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X89
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X91 5))
                                                                    5
                                                                    X91)))
                                                                    (let
                                                                    ((X93
                                                                    Int 
                                                                    (ite
                                                                    X89
                                                                    X92
                                                                    X91)))
                                                                    (let
                                                                    ((X94
                                                                    Bool 
                                                                    (or
                                                                    X89
                                                                    X84)))
                                                                    (let
                                                                    ((X95
                                                                    Bool 
                                                                    (and
                                                                    (= X93 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X14)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X94)))))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    (= X93 4)
                                                                    3
                                                                    X93)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X95
                                                                    X96
                                                                    X93)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X97 6))
                                                                    6
                                                                    X97)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X95
                                                                    X98
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    Bool 
                                                                    (or
                                                                    X95
                                                                    X94)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
                                                                    (and
                                                                    (= X99 6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X14))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X100)))))
                                                                    (let
                                                                    ((X102
                                                                    Int 
                                                                    (ite
                                                                    (= X99 6)
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
                                                                    (or
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X107
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X19))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X106)))))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X105)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    4))
                                                                    4
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
                                                                    Int 
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
                                                                    X112
                                                                    X44)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c
                                                                    true)
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c
                                                                    (ite
                                                                    top.impl.usr.zz155
                                                                    X2
                                                                    X113)
                                                                    X1)))
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
   ((X1 Int top.impl.usr.zz161))
   (let
    ((X2 Int (ite (not (= X1 1)) 1 X1)))
    (and
     (= top.usr.OK! (or (= X2 1) (and (>= X2 2) (<= X2 8))))
     (let
      ((X3 Bool (>= top.usr.carSpeed! 15.0)))
      (let
       ((X4 Bool (= top.usr.carGear! 3)))
       (let
        ((X5
          Bool (and
                (and
                 (and
                  (and (not top.usr.cancel!) (not top.usr.brakePedal!))
                  X4)
                 X3)
                top.usr.validInputs!)))
        (let
         ((X6 Bool top.impl.usr.zz183))
         (and
          (= top.impl.usr.zz183! top.usr.decelSet!)
          (let
           ((X7 Bool (and (not X6) top.impl.usr.zz183!)))
           (let
            ((X8 Bool top.impl.usr.zz178))
            (and
             (= top.impl.usr.zz178! top.usr.accelResume!)
             (let
              ((X9 Bool (and (not X8) top.impl.usr.zz178!)))
              (let
               ((X10 Int top.impl.usr.zz176))
               (let
                ((X11 Int (+ X10 1)))
                (let
                 ((X12 Int (ite top.usr.decelSet! X11 0)))
                 (let
                  ((X13 Int (ite (>= 0 X12) 0 X12)))
                  (and
                   (= top.impl.usr.zz176! (ite (<= X13 20) X13 20))
                   (let
                    ((X14 Bool (= top.impl.usr.zz176! 20)))
                    (let
                     ((X15 Int top.impl.usr.zz170))
                     (let
                      ((X16 Int (+ X15 1)))
                      (let
                       ((X17 Int (ite top.usr.accelResume! X16 0)))
                       (let
                        ((X18 Int (ite (>= 0 X17) 0 X17)))
                        (and
                         (= top.impl.usr.zz170! (ite (<= X18 20) X18 20))
                         (let
                          ((X19 Bool (= top.impl.usr.zz170! 20)))
                          (and
                           (=
                            top.impl.usr.zz155!
                            (ite top.impl.usr.SP3c false top.impl.usr.zz155))
                           (let
                            ((X20
                              Bool (and
                                    (and (>= X1 2) (<= X1 8))
                                    (not top.usr.onOff!))))
                            (let
                             ((X21 Int (ite (= X1 4) 3 X1)))
                             (let
                              ((X22
                                Int (ite (and (>= X1 3) (<= X1 6)) X21 X1)))
                              (let
                               ((X23 Int (ite (= X22 5) 3 X22)))
                               (let
                                ((X24
                                  Int (ite (and (>= X1 3) (<= X1 6)) X23 X22)))
                                (let
                                 ((X25 Int (ite (= X24 6) 3 X24)))
                                 (let
                                  ((X26
                                    Int (ite
                                         (and (>= X1 3) (<= X1 6))
                                         X25
                                         X24)))
                                  (let
                                   ((X27
                                     Int (ite
                                          (and (>= X1 3) (<= X1 6))
                                          2
                                          X26)))
                                   (let
                                    ((X28
                                      Int (ite
                                           (and (>= X1 2) (<= X1 8))
                                           X27
                                           X1)))
                                    (let
                                     ((X29 Int (ite (= X28 7) 2 X28)))
                                     (let
                                      ((X30
                                        Int (ite
                                             (and (>= X1 2) (<= X1 8))
                                             X29
                                             X28)))
                                      (let
                                       ((X31 Int (ite (= X30 8) 2 X30)))
                                       (let
                                        ((X32
                                          Int (ite
                                               (and (>= X1 2) (<= X1 8))
                                               X31
                                               X30)))
                                        (let
                                         ((X33
                                           Int (ite
                                                (and (>= X1 2) (<= X1 8))
                                                0
                                                X32)))
                                         (let
                                          ((X34 Int (ite X20 X33 X1)))
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
                                              ((X38
                                                Int (ite (= X36 1) 0 X36)))
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
                                                        Bool (and
                                                              (and
                                                               (>= X44 3)
                                                               (<= X44 6))
                                                              (not X5))))
                                                      (let
                                                       ((X47
                                                         Int (ite
                                                              (= X44 4)
                                                              3
                                                              X44)))
                                                       (let
                                                        ((X48
                                                          Int (ite
                                                               (and
                                                                (>= X44 3)
                                                                (<= X44 6))
                                                               X47
                                                               X44)))
                                                        (let
                                                         ((X49
                                                           Int (ite
                                                                (= X48 5)
                                                                3
                                                                X48)))
                                                         (let
                                                          ((X50
                                                            Int (ite
                                                                 (and
                                                                  (>= X44 3)
                                                                  (<= X44 6))
                                                                 X49
                                                                 X48)))
                                                          (let
                                                           ((X51
                                                             Int (ite
                                                                  (= X50 6)
                                                                  3
                                                                  X50)))
                                                           (let
                                                            ((X52
                                                              Int (ite
                                                                   (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                   X51
                                                                   X50)))
                                                            (let
                                                             ((X53
                                                               Int (ite
                                                                    (and
                                                                    (>=
                                                                    X44
                                                                    3)
                                                                    (<=
                                                                    X44
                                                                    6))
                                                                    2
                                                                    X52)))
                                                             (let
                                                              ((X54
                                                                Int (ite
                                                                    X46
                                                                    X53
                                                                    X44)))
                                                              (let
                                                               ((X55
                                                                 Int 
                                                                 (ite
                                                                  (not
                                                                   (= X54 8))
                                                                  8
                                                                  X54)))
                                                               (let
                                                                ((X56
                                                                  Int 
                                                                  (ite
                                                                   X46
                                                                   X55
                                                                   X54)))
                                                                (let
                                                                 ((X57
                                                                   Bool 
                                                                   (and
                                                                    (= X56 8)
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
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X46)))))
                                                                 (let
                                                                  ((X58
                                                                    Int 
                                                                    (ite
                                                                    (= X56 8)
                                                                    2
                                                                    X56)))
                                                                  (let
                                                                   ((X59
                                                                    Int 
                                                                    (ite
                                                                    X57
                                                                    X58
                                                                    X56)))
                                                                   (let
                                                                    ((X60
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X59
                                                                    3)
                                                                    (<=
                                                                    X59
                                                                    6)))
                                                                    3
                                                                    X59)))
                                                                    (let
                                                                    ((X61
                                                                    Bool 
                                                                    (and
                                                                    (not
                                                                    (and
                                                                    (>=
                                                                    X59
                                                                    3)
                                                                    (<=
                                                                    X59
                                                                    6)))
                                                                    (and
                                                                    (>=
                                                                    X60
                                                                    3)
                                                                    (<=
                                                                    X60
                                                                    6)))))
                                                                    (let
                                                                    ((X62
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X60 4))
                                                                    4
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
                                                                    X57
                                                                    X63
                                                                    X59)))
                                                                    (let
                                                                    ((X65
                                                                    Bool 
                                                                    (or
                                                                    X57
                                                                    X46)))
                                                                    (let
                                                                    ((X66
                                                                    Bool 
                                                                    (and
                                                                    (= X64 8)
                                                                    (and
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X9)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X65)))))
                                                                    (let
                                                                    ((X67
                                                                    Int 
                                                                    (ite
                                                                    (= X64 8)
                                                                    2
                                                                    X64)))
                                                                    (let
                                                                    ((X68
                                                                    Int 
                                                                    (ite
                                                                    X66
                                                                    X67
                                                                    X64)))
                                                                    (let
                                                                    ((X69
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X69 4))
                                                                    4
                                                                    X69)))
                                                                    (let
                                                                    ((X72
                                                                    Int 
                                                                    (ite
                                                                    X70
                                                                    X71
                                                                    X69)))
                                                                    (let
                                                                    ((X73
                                                                    Int 
                                                                    (ite
                                                                    X66
                                                                    X72
                                                                    X68)))
                                                                    (let
                                                                    ((X74
                                                                    Bool 
                                                                    (or
                                                                    X66
                                                                    X65)))
                                                                    (let
                                                                    ((X75
                                                                    Bool 
                                                                    (and
                                                                    (= X73 7)
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
                                                                    (not X5)
                                                                    0
                                                                    1)
                                                                    0)))
                                                                    (not X74)))))
                                                                    (let
                                                                    ((X76
                                                                    Int 
                                                                    (ite
                                                                    (= X73 7)
                                                                    2
                                                                    X73)))
                                                                    (let
                                                                    ((X77
                                                                    Int 
                                                                    (ite
                                                                    X75
                                                                    X76
                                                                    X73)))
                                                                    (let
                                                                    ((X78
                                                                    Int 
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
                                                                    Bool 
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
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X78 4))
                                                                    4
                                                                    X78)))
                                                                    (let
                                                                    ((X81
                                                                    Int 
                                                                    (ite
                                                                    X79
                                                                    X80
                                                                    X78)))
                                                                    (let
                                                                    ((X82
                                                                    Int 
                                                                    (ite
                                                                    X75
                                                                    X81
                                                                    X77)))
                                                                    (let
                                                                    ((X83
                                                                    Bool 
                                                                    (or
                                                                    X75
                                                                    X74)))
                                                                    (let
                                                                    ((X84
                                                                    Bool 
                                                                    (and
                                                                    (= X82 4)
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X7)
                                                                    0
                                                                    1)
                                                                    0)))))
                                                                    (let
                                                                    ((X85
                                                                    Int 
                                                                    (ite
                                                                    (= X82 4)
                                                                    3
                                                                    X82)))
                                                                    (let
                                                                    ((X86
                                                                    Int 
                                                                    (ite
                                                                    X84
                                                                    X85
                                                                    X82)))
                                                                    (let
                                                                    ((X87
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X86 4))
                                                                    4
                                                                    X86)))
                                                                    (let
                                                                    ((X88
                                                                    Int 
                                                                    (ite
                                                                    X84
                                                                    X87
                                                                    X86)))
                                                                    (let
                                                                    ((X89
                                                                    Bool 
                                                                    (and
                                                                    (= X88 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X19)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X84)))))
                                                                    (let
                                                                    ((X90
                                                                    Int 
                                                                    (ite
                                                                    (= X88 4)
                                                                    3
                                                                    X88)))
                                                                    (let
                                                                    ((X91
                                                                    Int 
                                                                    (ite
                                                                    X89
                                                                    X90
                                                                    X88)))
                                                                    (let
                                                                    ((X92
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X91 5))
                                                                    5
                                                                    X91)))
                                                                    (let
                                                                    ((X93
                                                                    Int 
                                                                    (ite
                                                                    X89
                                                                    X92
                                                                    X91)))
                                                                    (let
                                                                    ((X94
                                                                    Bool 
                                                                    (or
                                                                    X89
                                                                    X84)))
                                                                    (let
                                                                    ((X95
                                                                    Bool 
                                                                    (and
                                                                    (= X93 4)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not X14)
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not X94)))))
                                                                    (let
                                                                    ((X96
                                                                    Int 
                                                                    (ite
                                                                    (= X93 4)
                                                                    3
                                                                    X93)))
                                                                    (let
                                                                    ((X97
                                                                    Int 
                                                                    (ite
                                                                    X95
                                                                    X96
                                                                    X93)))
                                                                    (let
                                                                    ((X98
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (= X97 6))
                                                                    6
                                                                    X97)))
                                                                    (let
                                                                    ((X99
                                                                    Int 
                                                                    (ite
                                                                    X95
                                                                    X98
                                                                    X97)))
                                                                    (let
                                                                    ((X100
                                                                    Bool 
                                                                    (or
                                                                    X95
                                                                    X94)))
                                                                    (let
                                                                    ((X101
                                                                    Bool 
                                                                    (and
                                                                    (= X99 6)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X14))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X100)))))
                                                                    (let
                                                                    ((X102
                                                                    Int 
                                                                    (ite
                                                                    (= X99 6)
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
                                                                    (or
                                                                    X101
                                                                    X100)))
                                                                    (let
                                                                    ((X107
                                                                    Bool 
                                                                    (and
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    (and
                                                                    (not
                                                                    (=
                                                                    (ite
                                                                    (not
                                                                    (not X19))
                                                                    0
                                                                    1)
                                                                    0))
                                                                    (not
                                                                    X106)))))
                                                                    (let
                                                                    ((X108
                                                                    Int 
                                                                    (ite
                                                                    (=
                                                                    X105
                                                                    5)
                                                                    3
                                                                    X105)))
                                                                    (let
                                                                    ((X109
                                                                    Int 
                                                                    (ite
                                                                    X107
                                                                    X108
                                                                    X105)))
                                                                    (let
                                                                    ((X110
                                                                    Int 
                                                                    (ite
                                                                    (not
                                                                    (=
                                                                    X109
                                                                    4))
                                                                    4
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
                                                                    Int 
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
                                                                    X112
                                                                    X44)))
                                                                    (and
                                                                    (=
                                                                    top.impl.usr.SP3c!
                                                                    true)
                                                                    (let
                                                                    ((X114
                                                                    Int 
                                                                    (ite
                                                                    top.impl.usr.SP3c!
                                                                    (ite
                                                                    top.impl.usr.zz155!
                                                                    X2
                                                                    X113)
                                                                    X1)))
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
