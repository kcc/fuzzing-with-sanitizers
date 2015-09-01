


target datalayout = "e-p:32:32"
target triple = "i686-pc-linux-gnu"
	%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }


define void @ggenorien() {
entry:
	%tmp68 = icmp eq %struct.termbox* null, null		
	br i1 %tmp68, label %cond_next448, label %bb80

bb80:		
	ret void

cond_next448:		
	br i1 false, label %bb756, label %bb595

bb595:		
	br label %bb609

bb609:		
	%termnum.6240.0 = phi i32 [ 2, %bb595 ], [ %termnum.6, %bb756 ]		
	%tmp755 = add i32 %termnum.6240.0, 1		
	br label %bb756

bb756:		
	%termnum.6 = phi i32 [ %tmp755, %bb609 ], [ 2, %cond_next448 ]		
	br label %bb609
}
