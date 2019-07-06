; constraint : w2 < 2.0
; constraint : w1 < 0.0
; constraint : w1 > 0.0
  ( set-logic BV )
  ( define-fun hd05  (    ( x  ( BitVec 32 ) ) )  ( BitVec 32 )  ( bvor     x  ( bvsub     x   #x00000001 ) ) )
( synth-fun f  (    ( x  ( BitVec 32 ) ) )  ( BitVec 32 ) (
	(Start  ( BitVec 32 ) (		#x00000001
		#x00000000
		#xffffffff
		x
		(bvnot NT0)
		(bvneg NT0)
		(bvurem NT0 NT0)
		(bvxor NT0 NT0)
		(bvor NT0 NT0)
		(bvadd NT0 NT0)
		(bvmul NT0 NT0)
		(bvudiv NT0 NT0)
		(bvsub NT0 NT0)
		(bvlshr NT0 NT0)
		(bvsrem NT0 NT0)
		(bvashr NT0 NT0)
		(bvshl NT0 NT0)
		(bvsdiv NT0 NT0)
))
	(NT0  ( BitVec 32 ) (		#x00000001
		#x00000000
		#xffffffff
		x
))
))
  ( declare-var x  ( BitVec 32 ) )
  ( constraint  ( =     ( hd05    x )  ( f    x ) ) )
  ( check-synth )
