





define x86_fp80 @test1() {
        %tmp85 = call x86_fp80 asm sideeffect "fld0", "={st(0)}"()
        ret x86_fp80 %tmp85
}




define double @test2() {
        %tmp85 = call double asm sideeffect "fld0", "={st(0)}"()
        ret double %tmp85
}









define void @test3(x86_fp80 %X) {
        call void asm sideeffect "frob ", "{st(0)},~{st},~{dirflag},~{fpsr},~{flags}"( x86_fp80 %X)
        ret void
}







define void @test4(double %X) {
        call void asm sideeffect "frob ", "{st(0)},~{st},~{dirflag},~{fpsr},~{flags}"( double %X)
        ret void
}







define void @test5(double %X) {
        %Y = fadd double %X, 123.0
        call void asm sideeffect "frob ", "{st(0)},~{st},~{dirflag},~{fpsr},~{flags}"( double %Y)
        ret void
}


define void @test6(double %A, double %B, double %C, 
                   double %D, double %E) nounwind  {
entry:





	tail call void asm sideeffect "foo $0 $1", "f,f,~{dirflag},~{fpsr},~{flags}"( double %A, double %A ) nounwind 





	tail call void asm sideeffect "bar $0 $1", "f,f,~{dirflag},~{fpsr},~{flags}"( double %B, double %C ) nounwind 






	tail call void asm sideeffect "baz $0 $1", "f,f,~{dirflag},~{fpsr},~{flags}"( double %D, double %E ) nounwind 






	tail call void asm sideeffect "baz $0", "f,~{dirflag},~{fpsr},~{flags}"( double %D ) nounwind 
	ret void
}














define void @testPR4185() {
return:
	call void asm sideeffect "fistpl $0", "{st},~{st}"(double 1.000000e+06)
	call void asm sideeffect "fistpl $0", "{st},~{st}"(double 1.000000e+06)
	ret void
}













define void @testPR4185b() {
return:
	call void asm sideeffect "fistl $0", "{st}"(double 1.000000e+06)
	call void asm sideeffect "fistpl $0", "{st},~{st}"(double 1.000000e+06)
	ret void
}











define void @testPR4459(x86_fp80 %a) {
entry:
	%0 = call x86_fp80 @ceil(x86_fp80 %a)
	call void asm sideeffect "fistpl $0", "{st},~{st}"( x86_fp80 %0)
	call void @test3(x86_fp80 %0 )
        ret void
}
declare x86_fp80 @ceil(x86_fp80)














define void @testPR4484(x86_fp80 %a) {
entry:
	%0 = call x86_fp80 @test1()
	call void asm sideeffect "fistpl $0", "{st},~{st}"(x86_fp80 %a)
	call void @test3(x86_fp80 %0)
	ret void
}



define void @testPR4485(x86_fp80* %a) {
entry:
	%0 = load x86_fp80, x86_fp80* %a, align 16
	%1 = fmul x86_fp80 %0, 0xK4006B400000000000000
	%2 = fmul x86_fp80 %1, 0xK4012F424000000000000
	tail call void asm sideeffect "fistpl $0", "{st},~{st}"(x86_fp80 %2)
	%3 = load x86_fp80, x86_fp80* %a, align 16
	%4 = fmul x86_fp80 %3, 0xK4006B400000000000000
	%5 = fmul x86_fp80 %4, 0xK4012F424000000000000
	tail call void asm sideeffect "fistpl $0", "{st},~{st}"(x86_fp80 %5)
	ret void
}
















define void @fist1(x86_fp80 %x, i32* %p) nounwind ssp {
entry:
  tail call void asm sideeffect "fistl $1", "{st},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(x86_fp80 %x, i32* %p) nounwind
  ret void
}















define x86_fp80 @fist2(x86_fp80 %x, i32* %p) nounwind ssp {
entry:
  %0 = tail call x86_fp80 asm "fistl $2", "=&{st},0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(x86_fp80 %x, i32* %p) nounwind
  ret x86_fp80 %0
}













define void @fucomp1(x86_fp80 %x, x86_fp80 %y) nounwind ssp {
entry:
  tail call void asm sideeffect "fucomp $1", "{st},f,~{st},~{dirflag},~{fpsr},~{flags}"(x86_fp80 %x, x86_fp80 %y) nounwind
  ret void
}

























define void @fucomp2(x86_fp80 %x, x86_fp80 %y) nounwind ssp {
entry:
  tail call void asm sideeffect "fucomp $1", "{st},{st(1)},~{st},~{dirflag},~{fpsr},~{flags}"(x86_fp80 %x, x86_fp80 %y) nounwind
  ret void
}
define void @fucomp3(x86_fp80 %x, x86_fp80 %y) nounwind ssp {
entry:
  tail call void asm sideeffect "fucompp $1", "{st},{st(1)},~{st},~{st(1)},~{dirflag},~{fpsr},~{flags}"(x86_fp80 %x, x86_fp80 %y) nounwind
  ret void
}


%complex = type { float, float }








define float @sincos1(float %x) nounwind ssp {
entry:
  %0 = tail call %complex asm "sincos", "={st},={st(1)},0,~{dirflag},~{fpsr},~{flags}"(float %x) nounwind
  %asmresult = extractvalue %complex %0, 0
  ret float %asmresult
}










define float @sincos2(float %x) nounwind ssp {
entry:
  %0 = tail call %complex asm "sincos", "={st(1)},={st},1,~{dirflag},~{fpsr},~{flags}"(float %x) nounwind
  %asmresult = extractvalue %complex %0, 1
  ret float %asmresult
}
















define float @sincos3(float %x) nounwind ssp {
entry:
  %0 = tail call %complex asm sideeffect "sincos", "={st(1)},={st},1,~{dirflag},~{fpsr},~{flags}"(float %x) nounwind
  %1 = tail call %complex asm sideeffect "sincos", "={st(1)},={st},1,~{dirflag},~{fpsr},~{flags}"(float %x) nounwind
  %asmresult = extractvalue %complex %0, 0
  ret float %asmresult
}






define i32 @PR10602() nounwind ssp {
entry:
  %0 = tail call i32 asm "fcomi $2, $1
  ret i32 %0
}


















%struct.fpu_t = type { [8 x x86_fp80], x86_fp80, %struct.anon1, %struct.anon2, i32, i8, [15 x i8] }
%struct.anon1 = type { i32, i32, i32 }
%struct.anon2 = type { i32, i32, i32, i32 }

@fpu = external global %struct.fpu_t, align 16


define void @test_live_st(i32 %a1) {
entry:
  %0 = load x86_fp80, x86_fp80* undef, align 16
  %cond = icmp eq i32 %a1, 1
  br i1 %cond, label %sw.bb4.i, label %_Z5tointRKe.exit

sw.bb4.i:
  %1 = call x86_fp80 asm sideeffect "frndint", "={st},0,~{dirflag},~{fpsr},~{flags}"(x86_fp80 %0)
  call void asm sideeffect "fldcw $0", "*m,~{dirflag},~{fpsr},~{flags}"(i32* undef)
  br label %_Z5tointRKe.exit

_Z5tointRKe.exit:
  %result.0.i = phi x86_fp80 [ %1, %sw.bb4.i ], [ %0, %entry ]
  %conv.i1814 = fptosi x86_fp80 %result.0.i to i32
  %conv626 = sitofp i32 %conv.i1814 to x86_fp80
  store x86_fp80 %conv626, x86_fp80* getelementptr inbounds (%struct.fpu_t, %struct.fpu_t* @fpu, i32 0, i32 1)
  br label %return

return:
  ret void
}








define double @test_operand_rewrite() {
entry:
  %0 = tail call { double, double } asm sideeffect "foo $0, $1", "={st},={st(1)},~{dirflag},~{fpsr},~{flags}"()
  %asmresult = extractvalue { double, double } %0, 0
  %asmresult1 = extractvalue { double, double } %0, 1
  %sub = fsub double %asmresult, %asmresult1
  ret double %sub
}
