

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @Func1() sanitize_address {
entry:




















  %XXX = alloca [20 x i8], align 1
  %arr.ptr = bitcast [20 x i8]* %XXX to i8*
  store volatile i8 0, i8* %arr.ptr
  ret void
}


define void @Func2() sanitize_address {
entry:




  %XXX = alloca [20 x i8], align 1
  %arr.ptr = bitcast [20 x i8]* %XXX to i8*
  store volatile i8 0, i8* %arr.ptr
  call void asm sideeffect "mov %%rbx, %%rcx", "~{dirflag},~{fpsr},~{flags}"() nounwind
  ret void
}


%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
@_ZL3buf = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16

define void @Func3() uwtable sanitize_address {






entry:
  %a = alloca i32, align 4
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @_ZL3buf, i32 0, i32 0)) nounwind returns_twice
  %cmp = icmp eq i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @_ZL3buf, i32 0, i32 0), i32 1) noreturn nounwind
  unreachable

if.end:                                           
  call void @_Z10escape_ptrPi(i32* %a)
  ret void
}

declare i32 @_setjmp(%struct.__jmp_buf_tag*) nounwind returns_twice
declare void @longjmp(%struct.__jmp_buf_tag*, i32) noreturn nounwind
declare void @_Z10escape_ptrPi(i32*)
