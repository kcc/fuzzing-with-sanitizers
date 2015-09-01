





target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.3"

@g = common global i32 0                          

define internal void @foo(i32 %x) nounwind ssp {
entry:
  %0 = icmp slt i32 %x, 0                         
  br i1 %0, label %return, label %bb

bb:                                               
  %1 = sub nsw i32 %x, 1                          
  call void @foo(i32 %1) nounwind ssp
  store volatile i32 1, i32* @g, align 4
  ret void

return:                                           
  ret void
}




define void @bonk() nounwind ssp {
entry:
  call void @foo(i32 42) nounwind ssp
  ret void
}





define internal void @f1(i32 %x, i8* %Foo, i8* %Bar) nounwind ssp {
entry:
  %0 = bitcast i8* %Bar to void (i32, i8*, i8*)*
  %1 = sub nsw i32 %x, 1
  call void %0(i32 %1, i8* %Foo, i8* %Bar) nounwind
  store volatile i32 42, i32* @g, align 4
  ret void
}

define internal void @f2(i32 %x, i8* %Foo, i8* %Bar) nounwind ssp {
entry:
  %0 = icmp slt i32 %x, 0                         
  br i1 %0, label %return, label %bb

bb:                                               
  %1 = bitcast i8* %Foo to void (i32, i8*, i8*)*  
  call void %1(i32 %x, i8* %Foo, i8* %Bar) nounwind
  store volatile i32 13, i32* @g, align 4
  ret void

return:                                           
  ret void
}






define void @top_level() nounwind ssp {
entry:
  call void @f2(i32 123, i8* bitcast (void (i32, i8*, i8*)* @f1 to i8*), i8* bitcast (void (i32, i8*, i8*)* @f2 to i8*)) nounwind ssp
  ret void
}




define i32 @fib(i32 %i) {
entry:
  %is.zero = icmp eq i32 %i, 0
  br i1 %is.zero, label %zero.then, label %zero.else

zero.then:
  ret i32 0

zero.else:
  %is.one = icmp eq i32 %i, 1
  br i1 %is.one, label %one.then, label %one.else

one.then:
  ret i32 1

one.else:
  %i1 = sub i32 %i, 1
  %f1 = call i32 @fib(i32 %i1)
  %i2 = sub i32 %i, 2
  %f2 = call i32 @fib(i32 %i2)
  %f = add i32 %f1, %f2
  ret i32 %f
}

define i32 @fib_caller() {



  %f1 = call i32 @fib(i32 0)
  %f2 = call i32 @fib(i32 1)
  %result = add i32 %f1, %f2
  ret i32 %result
}
