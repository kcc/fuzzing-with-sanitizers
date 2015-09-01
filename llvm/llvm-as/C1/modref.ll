
target datalayout = "E-p:64:64:64-a0:0:8-f32:32:32-f64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-v64:64:64-v128:128:128"

declare void @llvm.lifetime.end(i64, i8* nocapture)

declare void @external(i32*) 

define i32 @test0(i8* %P) {
  %A = alloca i32
  call void @external(i32* %A)

  store i32 0, i32* %A

  call void @llvm.memset.p0i8.i32(i8* %P, i8 0, i32 42, i32 1, i1 false)

  %B = load i32, i32* %A
  ret i32 %B



}

define i8 @test1() {

  %A = alloca i8
  %B = alloca i8

  store i8 2, i8* %B  

  call void @llvm.memcpy.p0i8.p0i8.i8(i8* %A, i8* %B, i8 -1, i32 0, i1 false)

  %C = load i8, i8* %B
  ret i8 %C

}

define i8 @test2(i8* %P) {

  %P2 = getelementptr i8, i8* %P, i32 127
  store i8 1, i8* %P2  
  call void @llvm.memset.p0i8.i8(i8* %P, i8 2, i8 127, i32 0, i1 false)
  %A = load i8, i8* %P2
  ret i8 %A

}

define i8 @test2a(i8* %P) {

  %P2 = getelementptr i8, i8* %P, i32 126

  
  store i8 1, i8* %P2  

  call void @llvm.memset.p0i8.i8(i8* %P, i8 2, i8 127, i32 0, i1 false)
  %A = load i8, i8* %P2
  ret i8 %A


}

define void @test3(i8* %P, i8 %X) {



  %Y = add i8 %X, 1     

  %P2 = getelementptr i8, i8* %P, i32 2
  store i8 %Y, i8* %P2  

  call void @llvm.lifetime.end(i64 1, i8* %P)
  store i8 2, i8* %P2

  ret void

}

define void @test3a(i8* %P, i8 %X) {

  %Y = add i8 %X, 1     

  %P2 = getelementptr i8, i8* %P, i32 2
  store i8 %Y, i8* %P2

  call void @llvm.lifetime.end(i64 10, i8* %P)
  ret void

}

@G1 = external global i32
@G2 = external global [4000 x i32]

define i32 @test4(i8* %P) {
  %tmp = load i32, i32* @G1
  call void @llvm.memset.p0i8.i32(i8* bitcast ([4000 x i32]* @G2 to i8*), i8 0, i32 4000, i32 1, i1 false)
  %tmp2 = load i32, i32* @G1
  %sub = sub i32 %tmp2, %tmp
  ret i32 %sub





}



define i32 @test5(i8* %P, i32 %Len) {
  %tmp = load i32, i32* @G1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast ([4000 x i32]* @G2 to i8*), i8* bitcast (i32* @G1 to i8*), i32 %Len, i32 1, i1 false)
  %tmp2 = load i32, i32* @G1
  %sub = sub i32 %tmp2, %tmp
  ret i32 %sub





}

define i8 @test6(i8* %p, i8* noalias %a) {
  %x = load i8, i8* %a
  %t = va_arg i8* %p, float
  %y = load i8, i8* %a
  %z = add i8 %x, %y
  ret i8 %z




}


declare void @test7decl(i32* nocapture %x)
define i32 @test7() nounwind uwtable ssp {
entry:
  %x = alloca i32, align 4
  store i32 0, i32* %x, align 4
  %add.ptr = getelementptr inbounds i32, i32* %x, i64 1
  call void @test7decl(i32* %add.ptr)
  %tmp = load i32, i32* %x, align 4
  ret i32 %tmp




}



declare i32 @func_argmemonly(i32 * %P) argmemonly



define i32 @test8(i32 *%P) {
  %V1 = load i32, i32* %P
  call i32 @func_argmemonly(i32* %P)
  %V2 = load i32, i32* %P
  %Diff = sub i32 %V1, %V2
  ret i32 %Diff
  
  
  
  
}



define i32 @test9(i32* %P, i32* noalias %P2) {
  %V1 = load i32, i32* %P
  call i32 @func_argmemonly(i32* %P2)
  %V2 = load i32, i32* %P
  %Diff = sub i32 %V1, %V2
  ret i32 %Diff
  
  
}




define i32 @test10(i32* %P, i32* %P2) {
  %V1 = load i32, i32* %P
  call i32 @func_argmemonly(i32* %P2)
  %V2 = load i32, i32* %P
  %Diff = sub i32 %V1, %V2
  ret i32 %Diff
  
  
  
  
}

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind
declare void @llvm.memset.p0i8.i8(i8* nocapture, i8, i8, i32, i1) nounwind
declare void @llvm.memcpy.p0i8.p0i8.i8(i8* nocapture, i8* nocapture, i8, i32, i1) nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
