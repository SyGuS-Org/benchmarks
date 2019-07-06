  ( set-logic BV )
  ( define-fun hd05  (    ( x  ( BitVec 32 ) ) )  ( BitVec 32 )  ( bvor     x  ( bvsub     x   #x00000001 ) ) )
( synth-fun f  (    ( x  ( BitVec 32 ) ) )  ( BitVec 32 ) (
	(Start  ( BitVec 32 ) (		(bvnot Start)
		(bvxor Start Start)
		(bvand Start Start)
		(bvor Start Start)
		(bvneg Start)
		(bvadd Start Start)
		(bvmul Start Start)
		(bvudiv Start Start)
		(bvurem Start Start)
		(bvlshr Start Start)
		(bvashr Start Start)
		(bvshl Start Start)
		(bvsdiv Start Start)
		(bvsrem Start Start)
		(bvsub Start Start)
		#x00000001
		#x00000000
		#xffffffff
		x
))
))
  ( declare-var x  ( BitVec 32 ) )
  ( constraint  ( =     ( hd05    x )  ( f    x ) ) )
  ( check-synth )
