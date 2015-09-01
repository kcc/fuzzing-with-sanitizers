

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i386-pc-linux-gnu"
	%llvm.dbg.anchor.type = type { i32, i32 }
	%struct.cset = type { i8*, i8, i8, i32, i8* }
	%struct.lmat = type { %struct.re_guts*, i32, %llvm.dbg.anchor.type*, i8*, i8*, i8*, i8*, i8**, i32, i8*, i8*, i8*, i8*, i8* }
	%struct.re_guts = type { i32*, %struct.cset*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, [1 x i8] }

define i8* @lbackref(%struct.lmat* %m, i8* %start, i8* %stop, i32 %startst, i32 %stopst, i32 %lev, i32 %rec) nounwind {
entry:
	br label %bb63

bb:		
	switch i32 0, label %bb62 [
		i32 268435456, label %bb2
		i32 805306368, label %bb9
		i32 -1610612736, label %bb51
	]

bb2:		
	br label %bb62

bb9:		
	%0 = load i8, i8* %sp.1, align 1		
	br label %bb62

bb51:		
	%1 = load i8, i8* %sp.1, align 1		
	ret i8* null

bb62:		
	br label %bb63

bb63:		
	%sp.1 = phi i8* [ null, %bb62 ], [ %sp.1.lcssa, %bb84 ], [ %start, %entry ], [ %sp.1.lcssa, %bb69 ]		
	br i1 false, label %bb, label %bb65

bb65:		
	%sp.1.lcssa = phi i8* [ %sp.1, %bb63 ]		
	br i1 false, label %bb66, label %bb69

bb66:		
	ret i8* null

bb69:		
	switch i32 0, label %bb108.loopexit2.loopexit.loopexit [
		i32 1342177280, label %bb63
		i32 1476395008, label %bb84
		i32 1879048192, label %bb104
		i32 2013265920, label %bb93
	]

bb84:		
	%2 = tail call i8* @lbackref(%struct.lmat* %m, i8* %sp.1.lcssa, i8* %stop, i32 0, i32 %stopst, i32 0, i32 0) nounwind		
	br label %bb63

bb93:		
	ret i8* null

bb104:		
	%sp.1.lcssa.lcssa33 = phi i8* [ %sp.1.lcssa, %bb69 ]		
	unreachable

bb108.loopexit2.loopexit.loopexit:		
	ret i8* null
}
