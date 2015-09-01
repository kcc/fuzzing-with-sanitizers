
target datalayout = "e-p:64:64:64"

declare fastcc void @bar()
declare void @llvm.stackrestore(i8*)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind
declare void @has_sret(i8* sret %p)
declare void @has_noaliases(i32* noalias %p, i32* %q)
declare void @one_arg(i32)

@CG = constant i32 7
@E = external global i8

define i32 @foo() noreturn {
  %buf = alloca i8
  %buf2 = alloca {i8, i8}, align 2

  call void @bar()

  store i32 0, i32* null

  %t = load i32, i32* null

  store i32 0, i32* undef

  %u = load i32, i32* undef

  store i32 0, i32* inttoptr (i64 -1 to i32*)

  store i32 0, i32* inttoptr (i64 1 to i32*)

  store i8 0, i8* %buf, align 2

  %gep = getelementptr {i8, i8}, {i8, i8}* %buf2, i32 0, i32 1
  store i8 0, i8* %gep, align 2

  %sd = sdiv i32 2, 0

  %ud = udiv i32 2, 0

  %sr = srem i32 2, 0

  %ur = urem i32 2, 0

  %ee = extractelement <4 x i32> zeroinitializer, i32 4

  %ie = insertelement <4 x i32> zeroinitializer, i32 0, i32 4

  %r = lshr i32 0, 32

  %q = ashr i32 0, 32

  %l = shl i32 0, 32

  %xx = xor i32 undef, undef

  %xs = sub i32 undef, undef


  store i32 8, i32* @CG

  store i32 8, i32* bitcast (i32()* @foo to i32*)

  %lb = load i32, i32* bitcast (i8* blockaddress(@foo, %next) to i32*)

  call void() bitcast (i8* blockaddress(@foo, %next) to void()*)()

  call void @llvm.stackrestore(i8* null)

  call void @has_sret(i8* null)

  call void @has_noaliases(i32* @CG, i32* @CG)

  call void (i32, i32) bitcast (void (i32)* @one_arg to void (i32, i32)*)(i32 0, i32 0)

  call void () bitcast (void (i32)* @one_arg to void ()*)()

  call void (float) bitcast (void (i32)* @one_arg to void (float)*)(float 0.0)


  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i32* @CG to i8*), i8* bitcast (i32* @CG to i8*), i64 1, i32 1, i1 0)


  %wider = bitcast i8* %buf to i16*
  store i16 0, i16* %wider

  %inner = getelementptr {i8, i8}, {i8, i8}* %buf2, i32 0, i32 1
  %wider2 = bitcast i8* %inner to i16*
  store i16 0, i16* %wider2

  %before = getelementptr i8, i8* %buf, i32 -1
  %wider3 = bitcast i8* %before to i16*
  store i16 0, i16* %wider3

  br label %next

next:

  %a = alloca i32

  ret i32 0

foo:


  %e = bitcast i8* @E to i64*
  store i64 0, i64* %e
  %z = add i32 0, 0

  unreachable
}


define void @0() nounwind {
  ret void
}


declare void @llvm.va_start(i8*)
define void @not_vararg(i8* %p) nounwind {
  call void @llvm.va_start(i8* %p)
  ret void
}


define void @use_indbr() {
  indirectbr i8* bitcast (i32()* @foo to i8*), [label %block]
block:
  unreachable
}


declare void @tailcallee(i8*)
define void @use_tail(i8* %valist) {
  %t = alloca i8
  tail call void @tailcallee(i8* %t)
  ret void
}


define i8* @return_local(i32 %n, i32 %m) {
  %t = alloca i8, i32 %n
  %s = getelementptr i8, i8* %t, i32 %m
  ret i8* %s
}


define i32* @return_obscured_local() {
entry:
  %retval = alloca i32*
  %x = alloca i32
  store i32* %x, i32** %retval
  br label %next
next:
  %t0 = load i32*, i32** %retval
  %t1 = insertvalue { i32, i32, i32* } zeroinitializer, i32* %t0, 2
  %t2 = extractvalue { i32, i32, i32* } %t1, 2
  br label %exit
exit:
  %t3 = phi i32* [ %t2, %next ]
  %t4 = bitcast i32* %t3 to i32*
  %t5 = ptrtoint i32* %t4 to i64
  %t6 = add i64 %t5, 0
  %t7 = inttoptr i64 %t6 to i32*
  ret i32* %t7
}


define i32* @self_reference() {
entry:
  unreachable
exit:
  %t3 = phi i32* [ %t4, %exit ]
  %t4 = bitcast i32* %t3 to i32*
  %x = load volatile i32, i32* %t3
  br label %exit
}


%struct = type { double, double }
declare i32 @nonstruct_callee() nounwind
define void @struct_caller() nounwind {
entry:
  call %struct bitcast (i32 ()* @foo to %struct ()*)()

  
  indirectbr i8* null, []
}
