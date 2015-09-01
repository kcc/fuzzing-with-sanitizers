
target datalayout = "e-p:64:64:64-p1:16:16:16-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:64:64-f80:128-v64:64:64-v128:128:128-a0:0:64-n8:16:32:64"

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

define void @no_split_on_non_byte_width(i32) {

  %arg = alloca i32 , align 8
  store i32 %0, i32* %arg
  br label %load_i32

load_i32:



  %r0 = load i32, i32* %arg
  br label %load_i1

load_i1:


  %p1 = bitcast i32* %arg to i1*
  %t1 = load i1, i1* %p1
  ret void
}





%union.Foo = type { x86_fp80, i64, i64 }

@foo_copy_source = external constant %union.Foo
@i64_sink = global i64 0

define void @memcpy_fp80_padding() {
  %x = alloca %union.Foo

  
  %x_i8 = bitcast %union.Foo* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %x_i8, i8* bitcast (%union.Foo* @foo_copy_source to i8*), i32 32, i32 16, i1 false)

  
  %mid_p = getelementptr %union.Foo, %union.Foo* %x, i32 0, i32 1
  %elt = load i64, i64* %mid_p
  store i64 %elt, i64* @i64_sink
  ret void
}






define void @memset_fp80_padding() {
  %x = alloca %union.Foo

  
  %x_i8 = bitcast %union.Foo* %x to i8*
  call void @llvm.memset.p0i8.i32(i8* %x_i8, i8 -1, i32 32, i32 16, i1 false)

  
  %mid_p = getelementptr %union.Foo, %union.Foo* %x, i32 0, i32 1
  %elt = load i64, i64* %mid_p
  store i64 %elt, i64* @i64_sink
  ret void
}





%S.vec3float = type { float, float, float }
%U.vec3float = type { <4 x float> }

declare i32 @memcpy_vec3float_helper(%S.vec3float*)

define i32 @memcpy_vec3float_widening(%S.vec3float* %x) {



entry:
  
  %tmp1 = alloca %S.vec3float, align 4
  %0 = bitcast %S.vec3float* %tmp1 to i8*
  %1 = bitcast %S.vec3float* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 12, i32 4, i1 false)

  
  %unused1 = bitcast %S.vec3float* %tmp1 to %U.vec3float*
  %unused2 = getelementptr inbounds %U.vec3float, %U.vec3float* %unused1, i32 0, i32 0
  %unused3 = load <4 x float>, <4 x float>* %unused2, align 1

  
  %tmp2 = alloca %S.vec3float, align 4
  %2 = bitcast %S.vec3float* %tmp2 to i8*
  %3 = bitcast %S.vec3float* %tmp1 to i8*


  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 12, i32 4, i1 false)

  %result = call i32 @memcpy_vec3float_helper(%S.vec3float* %tmp2)
  ret i32 %result

}
