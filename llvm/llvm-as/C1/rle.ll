



define i32 @test0(i32 %V, i32* %P) {
  store i32 %V, i32* %P

  %A = load i32, i32* %P
  ret i32 %A


}







define i8 @crash0({i32, i32} %A, {i32, i32}* %P) {
  store {i32, i32} %A, {i32, i32}* %P
  %X = bitcast {i32, i32}* %P to i8*
  %Y = load i8, i8* %X
  ret i8 %Y
}


declare void @helper()
define void @crash1() {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* undef, i8* undef, i64 undef, i32 1, i1 false) nounwind
  %tmp = load i8, i8* bitcast (void ()* @helper to i8*)
  %x = icmp eq i8 %tmp, 15
  ret void
}








define float @coerce_mustalias1(i32 %V, i32* %P) {
  store i32 %V, i32* %P
   
  %P2 = bitcast i32* %P to float*

  %A = load float, float* %P2
  ret float %A



}


define float @coerce_mustalias2(i32* %V, i32** %P) {
  store i32* %V, i32** %P
   
  %P2 = bitcast i32** %P to float*

  %A = load float, float* %P2
  ret float %A



}


define i32* @coerce_mustalias3(float %V, float* %P) {
  store float %V, float* %P
   
  %P2 = bitcast float* %P to i32**

  %A = load i32*, i32** %P2
  ret i32* %A



}


define float @coerce_mustalias4(i32* %P, i1 %cond) {
  %A = load i32, i32* %P
  
  %P2 = bitcast i32* %P to float*
  %B = load float, float* %P2
  br i1 %cond, label %T, label %F
T:
  ret float %B
  
F:
  %X = bitcast i32 %A to float
  ret float %X






}


define i8 @coerce_mustalias5(i32 %V, i32* %P) {
  store i32 %V, i32* %P
   
  %P2 = bitcast i32* %P to i8*

  %A = load i8, i8* %P2
  ret i8 %A



}


define float @coerce_mustalias6(i64 %V, i64* %P) {
  store i64 %V, i64* %P
   
  %P2 = bitcast i64* %P to float*

  %A = load float, float* %P2
  ret float %A



}


define i8* @coerce_mustalias7(i64 %V, i64* %P) {
  store i64 %V, i64* %P
   
  %P2 = bitcast i64* %P to i8**

  %A = load i8*, i8** %P2
  ret i8* %A



}


define signext i16 @memset_to_i16_local(i16* %A) nounwind ssp {
entry:
  %conv = bitcast i16* %A to i8* 
  tail call void @llvm.memset.p0i8.i64(i8* %conv, i8 1, i64 200, i32 1, i1 false)
  %arrayidx = getelementptr inbounds i16, i16* %A, i64 42
  %tmp2 = load i16, i16* %arrayidx
  ret i16 %tmp2



}


define float @memset_to_float_local(float* %A, i8 %Val) nounwind ssp {
entry:
  %conv = bitcast float* %A to i8*                
  tail call void @llvm.memset.p0i8.i64(i8* %conv, i8 %Val, i64 400, i32 1, i1 false)
  %arrayidx = getelementptr inbounds float, float* %A, i64 42 
  %tmp2 = load float, float* %arrayidx                   
  ret float %tmp2









}


define i16 @memset_to_i16_nonlocal0(i16* %P, i1 %cond) {
  %P3 = bitcast i16* %P to i8*
  br i1 %cond, label %T, label %F
T:
  tail call void @llvm.memset.p0i8.i64(i8* %P3, i8 1, i64 400, i32 1, i1 false)
  br label %Cont
  
F:
  tail call void @llvm.memset.p0i8.i64(i8* %P3, i8 2, i64 400, i32 1, i1 false)
  br label %Cont

Cont:
  %P2 = getelementptr i16, i16* %P, i32 4
  %A = load i16, i16* %P2
  ret i16 %A






}

@GCst = constant {i32, float, i32 } { i32 42, float 14., i32 97 }
@GCst_as1 = addrspace(1) constant {i32, float, i32 } { i32 42, float 14., i32 97 }


define float @memcpy_to_float_local(float* %A) nounwind ssp {
entry:
  %conv = bitcast float* %A to i8*                
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %conv, i8* bitcast ({i32, float, i32 }* @GCst to i8*), i64 12, i32 1, i1 false)
  %arrayidx = getelementptr inbounds float, float* %A, i64 1 
  %tmp2 = load float, float* %arrayidx                   
  ret float %tmp2



}


define float @memcpy_to_float_local_as1(float* %A) nounwind ssp {
entry:
  %conv = bitcast float* %A to i8*                
  tail call void @llvm.memcpy.p0i8.p1i8.i64(i8* %conv, i8 addrspace(1)* bitcast ({i32, float, i32 } addrspace(1)* @GCst_as1 to i8 addrspace(1)*), i64 12, i32 1, i1 false)
  %arrayidx = getelementptr inbounds float, float* %A, i64 1 
  %tmp2 = load float, float* %arrayidx                   
  ret float %tmp2



}


define i8 @coerce_mustalias_nonlocal0(i32* %P, i1 %cond) {
  %P2 = bitcast i32* %P to float*
  %P3 = bitcast i32* %P to i8*
  br i1 %cond, label %T, label %F
T:
  store i32 42, i32* %P
  br label %Cont
  
F:
  store float 1.0, float* %P2
  br label %Cont

Cont:
  %A = load i8, i8* %P3
  ret i8 %A






}




define i8 @coerce_mustalias_nonlocal1(i32* %P, i1 %cond) {
  %P2 = bitcast i32* %P to float*
  br i1 %cond, label %T, label %F
T:
  store i32 42, i32* %P
  br label %Cont
  
F:
  store float 1.0, float* %P2
  br label %Cont

Cont:
  %P3 = bitcast i32* %P to i8*
  %A = load i8, i8* %P3
  ret i8 %A






}



define i8 @coerce_mustalias_pre0(i32* %P, i1 %cond) {
  %P3 = bitcast i32* %P to i8*
  br i1 %cond, label %T, label %F
T:
  store i32 42, i32* %P
  br label %Cont
  
F:
  br label %Cont

Cont:
  %A = load i8, i8* %P3
  ret i8 %A








}








define i8 @coerce_offset0(i32 %V, i32* %P) {
  store i32 %V, i32* %P
   
  %P2 = bitcast i32* %P to i8*
  %P3 = getelementptr i8, i8* %P2, i32 2

  %A = load i8, i8* %P3
  ret i8 %A



}

define i8 @coerce_offset0_addrspacecast(i32 %V, i32* %P) {
  store i32 %V, i32* %P

  %P2 = addrspacecast i32* %P to i8 addrspace(1)*
  %P3 = getelementptr i8, i8 addrspace(1)* %P2, i32 2

  %A = load i8, i8 addrspace(1)* %P3
  ret i8 %A



}


define i8 @coerce_offset_nonlocal0(i32* %P, i1 %cond) {
  %P2 = bitcast i32* %P to float*
  %P3 = bitcast i32* %P to i8*
  %P4 = getelementptr i8, i8* %P3, i32 2
  br i1 %cond, label %T, label %F
T:
  store i32 57005, i32* %P
  br label %Cont
  
F:
  store float 1.0, float* %P2
  br label %Cont

Cont:
  %A = load i8, i8* %P4
  ret i8 %A






}



define i8 @coerce_offset_pre0(i32* %P, i1 %cond) {
  %P3 = bitcast i32* %P to i8*
  %P4 = getelementptr i8, i8* %P3, i32 2
  br i1 %cond, label %T, label %F
T:
  store i32 42, i32* %P
  br label %Cont
  
F:
  br label %Cont

Cont:
  %A = load i8, i8* %P4
  ret i8 %A








}

define i32 @chained_load(i32** %p, i32 %x, i32 %y) {
block1:
  %A = alloca i32*

  %z = load i32*, i32** %p
  store i32* %z, i32** %A
  %cmp = icmp eq i32 %x, %y
  br i1 %cmp, label %block2, label %block3

block2:
 %a = load i32*, i32** %p
 br label %block4

block3:
  %b = load i32*, i32** %p
  br label %block4

block4:
  %c = load i32*, i32** %p
  %d = load i32, i32* %c
  ret i32 %d
  





}


declare i1 @cond() readonly
declare i1 @cond2() readonly

define i32 @phi_trans2() {

entry:
  %P = alloca i32, i32 400
  br label %F1
  
F1:
  %A = phi i32 [1, %entry], [2, %F]
  %cond2 = call i1 @cond()
  br i1 %cond2, label %T1, label %TY
  
T1:
  %P2 = getelementptr i32, i32* %P, i32 %A
  %x = load i32, i32* %P2
  %cond = call i1 @cond2()
  br i1 %cond, label %TX, label %F
  
F:
  %P3 = getelementptr i32, i32* %P, i32 2
  store i32 17, i32* %P3
  
  store i32 42, i32* %P2  
  br label %F1

TX:
  
  
  
  
  
  


  ret i32 %x
TY:
  ret i32 0
}

define i32 @phi_trans3(i32* %p, i32 %x, i32 %y, i32 %z) {

block1:
  %cmpxy = icmp eq i32 %x, %y
  br i1 %cmpxy, label %block2, label %block3

block2:
 store i32 87, i32* %p
 br label %block4

block3:
  %p2 = getelementptr i32, i32* %p, i32 43
  store i32 97, i32* %p2
  br label %block4

block4:
  %A = phi i32 [-1, %block2], [42, %block3]
  br i1 %cmpxy, label %block5, label %exit
  




block5:
  %B = add i32 %A, 1
  br i1 %cmpxy, label %block6, label %exit
  
block6:
  %C = getelementptr i32, i32* %p, i32 %B
  br i1 %cmpxy, label %block7, label %exit
  
block7:
  %D = load i32, i32* %C
  ret i32 %D
  



exit:
  ret i32 -1
}

define i8 @phi_trans4(i8* %p) {

entry:
  %X3 = getelementptr i8, i8* %p, i32 192
  store i8 192, i8* %X3
  
  %X = getelementptr i8, i8* %p, i32 4
  %Y = load i8, i8* %X
  br label %loop

loop:
  %i = phi i32 [4, %entry], [192, %loop]
  %X2 = getelementptr i8, i8* %p, i32 %i
  %Y2 = load i8, i8* %X2
  



  
  %cond = call i1 @cond2()

  %Z = bitcast i8 *%X3 to i32*
  store i32 0, i32* %Z
  br i1 %cond, label %loop, label %out
  
out:
  %R = add i8 %Y, %Y2
  ret i8 %R
}

define i8 @phi_trans5(i8* %p) {

entry:
  
  %X4 = getelementptr i8, i8* %p, i32 2
  store i8 19, i8* %X4
  
  %X = getelementptr i8, i8* %p, i32 4
  %Y = load i8, i8* %X
  br label %loop

loop:
  %i = phi i32 [4, %entry], [3, %cont]
  %X2 = getelementptr i8, i8* %p, i32 %i
  %Y2 = load i8, i8* %X2  
  %cond = call i1 @cond2()
  br i1 %cond, label %cont, label %out

cont:
  %Z = getelementptr i8, i8* %X2, i32 -1
  %Z2 = bitcast i8 *%Z to i32*
  store i32 50462976, i32* %Z2  





  br label %loop
  
out:
  %R = add i8 %Y, %Y2
  ret i8 %R
}



define i32 @memset_to_load() nounwind readnone {
entry:
  %x = alloca [256 x i32], align 4                
  %tmp = bitcast [256 x i32]* %x to i8*           
  call void @llvm.memset.p0i8.i64(i8* %tmp, i8 0, i64 1024, i32 4, i1 false)
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %x, i32 0, i32 0 
  %tmp1 = load i32, i32* %arraydecay                   
  ret i32 %tmp1


}






define i32 @load_load_partial_alias(i8* %P) nounwind ssp {
entry:
  %0 = bitcast i8* %P to i32*
  %tmp2 = load i32, i32* %0
  %add.ptr = getelementptr inbounds i8, i8* %P, i64 1
  %tmp5 = load i8, i8* %add.ptr
  %conv = zext i8 %tmp5 to i32
  %add = add nsw i32 %tmp2, %conv
  ret i32 %add









}



define i32 @load_load_partial_alias_cross_block(i8* %P) nounwind ssp {
entry:
  %xx = bitcast i8* %P to i32*
  %x1 = load i32, i32* %xx, align 4
  %cmp = icmp eq i32 %x1, 127
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    
  %arrayidx4 = getelementptr inbounds i8, i8* %P, i64 1
  %tmp5 = load i8, i8* %arrayidx4, align 1
  %conv6 = zext i8 %tmp5 to i32
  ret i32 %conv6

if.end:
  ret i32 52




}






%widening1 = type { i32, i8, i8, i8, i8 }

@f = global %widening1 zeroinitializer, align 4

define i32 @test_widening1(i8* %P) nounwind ssp noredzone {
entry:
  %tmp = load i8, i8* getelementptr inbounds (%widening1, %widening1* @f, i64 0, i32 1), align 4
  %conv = zext i8 %tmp to i32
  %tmp1 = load i8, i8* getelementptr inbounds (%widening1, %widening1* @f, i64 0, i32 2), align 1
  %conv2 = zext i8 %tmp1 to i32
  %add = add nsw i32 %conv, %conv2
  ret i32 %add





}

define i32 @test_widening2() nounwind ssp noredzone {
entry:
  %tmp = load i8, i8* getelementptr inbounds (%widening1, %widening1* @f, i64 0, i32 1), align 4
  %conv = zext i8 %tmp to i32
  %tmp1 = load i8, i8* getelementptr inbounds (%widening1, %widening1* @f, i64 0, i32 2), align 1
  %conv2 = zext i8 %tmp1 to i32
  %add = add nsw i32 %conv, %conv2

  %tmp2 = load i8, i8* getelementptr inbounds (%widening1, %widening1* @f, i64 0, i32 3), align 2
  %conv3 = zext i8 %tmp2 to i32
  %add2 = add nsw i32 %add, %conv3

  %tmp3 = load i8, i8* getelementptr inbounds (%widening1, %widening1* @f, i64 0, i32 4), align 1
  %conv4 = zext i8 %tmp3 to i32
  %add3 = add nsw i32 %add2, %conv3

  ret i32 %add3





}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind
declare void @llvm.memcpy.p0i8.p1i8.i64(i8* nocapture, i8 addrspace(1)* nocapture, i64, i32, i1) nounwind







%class.X = type { [8 x i8] }

@_ZTV1X = weak_odr constant [5 x i8*] zeroinitializer
@_ZTV1Y = weak_odr constant [5 x i8*] zeroinitializer

declare void @use()
declare void @use3(i8***, i8**)


define void @test_escape1() nounwind {
  %x = alloca i8**, align 8
  store i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @_ZTV1X, i64 0, i64 2), i8*** %x, align 8
  call void @use() nounwind
  %DEAD = load i8**, i8*** %x, align 8
  call void @use3(i8*** %x, i8** %DEAD) nounwind
  ret void



}
