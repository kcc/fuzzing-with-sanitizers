





















@str1 = internal constant [27 x i8] c"EXCEPTION_ACCESS_VIOLATION\00"
@str2 = internal constant [29 x i8] c"EXCEPTION_INT_DIVIDE_BY_ZERO\00"

define i32 @safe_div(i32* %n, i32* %d) personality i8* bitcast (i32 (...)* @_except_handler3 to i8*) {
entry:
  %r = alloca i32, align 4
  store i32 42, i32* %r
  invoke void @try_body(i32* %r, i32* %n, i32* %d)
          to label %__try.cont unwind label %lpad

lpad:
  %vals = landingpad { i8*, i32 }
          catch i8* bitcast (i32 ()* @safe_div_filt0 to i8*)
          catch i8* bitcast (i32 ()* @safe_div_filt1 to i8*)
  %ehptr = extractvalue { i8*, i32 } %vals, 0
  %sel = extractvalue { i8*, i32 } %vals, 1
  %filt0_val = call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @safe_div_filt0 to i8*))
  %is_filt0 = icmp eq i32 %sel, %filt0_val
  br i1 %is_filt0, label %handler0, label %eh.dispatch1

eh.dispatch1:
  %filt1_val = call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @safe_div_filt1 to i8*))
  %is_filt1 = icmp eq i32 %sel, %filt1_val
  br i1 %is_filt1, label %handler1, label %eh.resume

handler0:
  call void @puts(i8* getelementptr ([27 x i8], [27 x i8]* @str1, i32 0, i32 0))
  store i32 -1, i32* %r, align 4
  br label %__try.cont

handler1:
  call void @puts(i8* getelementptr ([29 x i8], [29 x i8]* @str2, i32 0, i32 0))
  store i32 -2, i32* %r, align 4
  br label %__try.cont

eh.resume:
  resume { i8*, i32 } %vals

__try.cont:
  %safe_ret = load i32, i32* %r, align 4
  ret i32 %safe_ret
}




































define void @try_body(i32* %r, i32* %n, i32* %d) {
entry:
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %d, align 4
  %div = sdiv i32 %0, %1
  store i32 %div, i32* %r, align 4
  ret void
}
















define i32 @safe_div_filt0() {
  %ebp = call i8* @llvm.frameaddress(i32 1)
  %eh_ptrs.addr.i8 = getelementptr inbounds i8, i8* %ebp, i32 -20
  %eh_ptrs.addr = bitcast i8* %eh_ptrs.addr.i8 to i32***
  %eh_ptrs = load i32**, i32*** %eh_ptrs.addr
  %eh_rec = load i32*, i32** %eh_ptrs
  %eh_code = load i32, i32* %eh_rec
  
  %cmp = icmp eq i32 %eh_code, 3221225477
  %filt.res = zext i1 %cmp to i32
  ret i32 %filt.res
}
define i32 @safe_div_filt1() {
  %ebp = call i8* @llvm.frameaddress(i32 1)
  %eh_ptrs.addr.i8 = getelementptr inbounds i8, i8* %ebp, i32 -20
  %eh_ptrs.addr = bitcast i8* %eh_ptrs.addr.i8 to i32***
  %eh_ptrs = load i32**, i32*** %eh_ptrs.addr
  %eh_rec = load i32*, i32** %eh_ptrs
  %eh_code = load i32, i32* %eh_rec
  
  %cmp = icmp eq i32 %eh_code, 3221225620
  %filt.res = zext i1 %cmp to i32
  ret i32 %filt.res
}

@str_result = internal constant [21 x i8] c"safe_div result: %d\0A\00"

define i32 @main() {
  %d.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4

  store i32 10, i32* %n.addr, align 4
  store i32 2, i32* %d.addr, align 4
  %r1 = call i32 @safe_div(i32* %n.addr, i32* %d.addr)
  call void (i8*, ...) @printf(i8* getelementptr ([21 x i8], [21 x i8]* @str_result, i32 0, i32 0), i32 %r1)

  store i32 10, i32* %n.addr, align 4
  store i32 0, i32* %d.addr, align 4
  %r2 = call i32 @safe_div(i32* %n.addr, i32* %d.addr)
  call void (i8*, ...) @printf(i8* getelementptr ([21 x i8], [21 x i8]* @str_result, i32 0, i32 0), i32 %r2)

  %r3 = call i32 @safe_div(i32* %n.addr, i32* null)
  call void (i8*, ...) @printf(i8* getelementptr ([21 x i8], [21 x i8]* @str_result, i32 0, i32 0), i32 %r3)
  ret i32 0
}

declare i32 @_except_handler3(...)
declare i32 @llvm.eh.typeid.for(i8*) readnone nounwind
declare void @puts(i8*)
declare void @printf(i8*, ...)
declare void @abort()
declare i8* @llvm.frameaddress(i32)
