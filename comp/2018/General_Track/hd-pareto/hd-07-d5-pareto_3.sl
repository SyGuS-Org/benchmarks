; constraint : w2 < 3.0
; constraint : w1 < 0.0
; constraint : w1 > 0.0
  ( set-logic BV )
  ( define-fun hd07  (    ( x  ( BitVec 32 ) ) )  ( BitVec 32 )  ( bvand     ( bvnot    x )  ( bvadd     x   #x00000001 ) ) )
( synth-fun f  (    ( x  ( BitVec 32 ) ) )  ( BitVec 32 ) (
	(Start  ( BitVec 32 ) (		#x00000001
		#x00000000
		#xffffffff
		x
		(bvnot NT0)
		(bvneg NT0)
		(bvxor NT0 NT0)
		(bvsdiv NT0 NT0)
		(bvor NT0 NT0)
		(bvsub NT0 NT0)
		(bvadd NT0 NT0)
		(bvmul NT0 NT0)
		(bvudiv NT0 NT0)
		(bvurem NT0 NT0)
		(bvlshr NT0 NT0)
		(bvashr NT0 NT0)
		(bvsrem NT0 NT0)
		(bvshl NT0 NT0)
		(bvudiv NT4 NT0)
		(bvxor NT4 NT0)
		(bvor NT4 NT0)
		(bvadd NT4 NT0)
		(bvmul NT4 NT0)
		(bvurem NT4 NT0)
		(bvlshr NT4 NT0)
		(bvsrem NT4 NT0)
		(bvsdiv NT4 NT0)
		(bvashr NT4 NT0)
		(bvshl NT4 NT0)
		(bvsub NT4 NT0)
		(bvnot NT4)
		(bvneg NT4)
))
	(NT0  ( BitVec 32 ) (		#x00000001
		#x00000000
		#xffffffff
		x
))
	(NT4  ( BitVec 32 ) (		(bvnot NT0)
		(bvneg NT0)
		(bvxor NT0 NT0)
		(bvsdiv NT0 NT0)
		(bvor NT0 NT0)
		(bvsub NT0 NT0)
		(bvadd NT0 NT0)
		(bvmul NT0 NT0)
		(bvudiv NT0 NT0)
		(bvurem NT0 NT0)
		(bvlshr NT0 NT0)
		(bvashr NT0 NT0)
		(bvsrem NT0 NT0)
		(bvshl NT0 NT0)
))
))
  ( declare-var x  ( BitVec 32 ) )
  ( constraint  ( =     ( hd07    x )  ( f    x ) ) )
  ( check-synth )
