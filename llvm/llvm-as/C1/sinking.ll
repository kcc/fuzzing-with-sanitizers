

declare i32 @strlen(i8*) readonly

declare void @foo()


define i32 @test1(i8* %P) {
	br label %Loop

Loop:		
	%A = call i32 @strlen( i8* %P ) readonly
	br i1 false, label %Loop, label %Out

Out:		
	ret i32 %A




}

declare double @sin(double) readnone


define double @test2(double %X) {
	br label %Loop

Loop:		
	call void @foo( )
	%A = call double @sin( double %X ) readnone
	br i1 true, label %Loop, label %Out

Out:		
	ret double %A




}



define void @test3() {
Entry:
	br i1 false, label %Loop, label %Exit
Loop:
	%X = add i32 0, 1
	br i1 false, label %Loop, label %Exit
Exit:
	%Y = phi i32 [ 0, %Entry ], [ %X, %Loop ]
	ret void
        





}





define i32 @test4(i32 %N) {
Entry:
	br label %Loop
Loop:		
	%N_addr.0.pn = phi i32 [ %dec, %Loop ], [ %N, %Entry ]	
	%tmp.6 = mul i32 %N, %N_addr.0.pn		
	%tmp.7 = sub i32 %tmp.6, %N		
	%dec = add i32 %N_addr.0.pn, -1		
	%tmp.1 = icmp ne i32 %N_addr.0.pn, 1		
	br i1 %tmp.1, label %Loop, label %Out
Out:		
	ret i32 %tmp.7






}





@X = global i32 5		

define i32 @test5(i32 %N) {
Entry:
	br label %Loop
Loop:		
	%N_addr.0.pn = phi i32 [ %dec, %Loop ], [ %N, %Entry ]	
	%tmp.6 = load i32, i32* @X		
	%dec = add i32 %N_addr.0.pn, -1		
	%tmp.1 = icmp ne i32 %N_addr.0.pn, 1		
	br i1 %tmp.1, label %Loop, label %Out
Out:		
	ret i32 %tmp.6




}








	%Ty = type { i32, i32 }
@X2 = external global %Ty

define i32 @test6() {
	br label %Loop
Loop:
	%dead = getelementptr %Ty, %Ty* @X2, i64 0, i32 0
	%sunk2 = load i32, i32* %dead
	br i1 false, label %Loop, label %Out
Out:		
	ret i32 %sunk2





}






define i32 @test7(i32 %N, i1 %C) {
Entry:
	br label %Loop
Loop:		
	%N_addr.0.pn = phi i32 [ %dec, %ContLoop ], [ %N, %Entry ]
	%tmp.6 = mul i32 %N, %N_addr.0.pn
	%tmp.7 = sub i32 %tmp.6, %N		
	%dec = add i32 %N_addr.0.pn, -1		
	br i1 %C, label %ContLoop, label %Out1
ContLoop:
	%tmp.1 = icmp ne i32 %N_addr.0.pn, 1
	br i1 %tmp.1, label %Loop, label %Out2
Out1:		
	ret i32 %tmp.7
Out2:		
	ret i32 %tmp.7











}





define i32 @test8(i1 %C1, i1 %C2, i32* %P, i32* %Q) {
Entry:
	br label %Loop
Loop:		
	br i1 %C1, label %Cont, label %exit1
Cont:		
	%X = load i32, i32* %P		
	store i32 %X, i32* %Q
	%V = add i32 %X, 1		
	br i1 %C2, label %Loop, label %exit2
exit1:		
	ret i32 0
exit2:		
	ret i32 %V







}


define void @test9() {
loopentry.2.i:
	br i1 false, label %no_exit.1.i.preheader, label %loopentry.3.i.preheader
no_exit.1.i.preheader:		
	br label %no_exit.1.i
no_exit.1.i:		
	br i1 false, label %return.i, label %endif.8.i
endif.8.i:		
	%inc.1.i = add i32 0, 1		
	br i1 false, label %no_exit.1.i, label %loopentry.3.i.preheader.loopexit
loopentry.3.i.preheader.loopexit:		
	br label %loopentry.3.i.preheader
loopentry.3.i.preheader:		
	%arg_num.0.i.ph13000 = phi i32 [ 0, %loopentry.2.i ], [ %inc.1.i, %loopentry.3.i.preheader.loopexit ]		
	ret void
return.i:		
	ret void





}




define i32 @test10(i32 %N) {
Entry:
	br label %Loop
Loop:		
	%N_addr.0.pn = phi i32 [ %dec, %Loop ], [ %N, %Entry ]		
	%tmp.6 = sdiv i32 %N, %N_addr.0.pn		
	%dec = add i32 %N_addr.0.pn, -1		
	%tmp.1 = icmp ne i32 %N_addr.0.pn, 0		
	br i1 %tmp.1, label %Loop, label %Out
Out:		
	ret i32 %tmp.6
        





}


define void @test11() {
	br label %Loop
Loop:
	%dead = getelementptr %Ty, %Ty* @X2, i64 0, i32 0
	br i1 false, label %Loop, label %Out
Out:
	ret void



}

@c = common global [1 x i32] zeroinitializer, align 4



define i32 @PR18753(i1* %a, i1* %b, i1* %c, i1* %d) {
entry:
  br label %l1.header

l1.header:
  %iv = phi i64 [ %iv.next, %l1.latch ], [ 0, %entry ]
  %arrayidx.i = getelementptr inbounds [1 x i32], [1 x i32]* @c, i64 0, i64 %iv
  br label %l2.header

l2.header:
  %x0 = load i1, i1* %c, align 4
  br i1 %x0, label %l1.latch, label %l3.preheader

l3.preheader:
  br label %l3.header

l3.header:
  %x1 = load i1, i1* %d, align 4
  br i1 %x1, label %l2.latch, label %l4.preheader

l4.preheader:
  br label %l4.header

l4.header:
  %x2 = load i1, i1* %a
  br i1 %x2, label %l3.latch, label %l4.body

l4.body:
  call void @f(i32* %arrayidx.i)
  %x3 = load i1, i1* %b
  %l = trunc i64 %iv to i32
  br i1 %x3, label %l4.latch, label %exit

l4.latch:
  call void @g()
  %x4 = load i1, i1* %b, align 4
  br i1 %x4, label %l4.header, label %exit

l3.latch:
  br label %l3.header

l2.latch:
  br label %l2.header

l1.latch:
  %iv.next = add nsw i64 %iv, 1
  br label %l1.header

exit:
  %lcssa = phi i32 [ %l, %l4.latch ], [ %l, %l4.body ]






  ret i32 %lcssa
}




define void @test12() {

  br label %lab4

lab4:
  br label %lab20

lab5:
  br label %lab20

lab6:
  br label %lab4

lab7:
  br i1 undef, label %lab8, label %lab13

lab8:
  br i1 undef, label %lab13, label %lab10

lab10:
  br label %lab7

lab13:
  ret void

lab20:
  br label %lab21

lab21:



  store i32 36127957, i32* undef, align 4
  br i1 undef, label %lab21, label %lab22

lab22:



  indirectbr i8* undef, [label %lab5, label %lab6, label %lab7]
}




define void @test13() {

  br label %lab59

lab19:
  br i1 undef, label %lab20, label %lab38

lab20:
  br label %lab60

lab21:
  br i1 undef, label %lab22, label %lab38

lab22:
  br label %lab38

lab38:
  ret void

lab59:
  indirectbr i8* undef, [label %lab60, label %lab38]

lab60:



  store i32 2145244101, i32* undef, align 4
  indirectbr i8* undef, [label %lab21, label %lab19]
}

declare void @f(i32*)

declare void @g()
