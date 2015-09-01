

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "armv4t--linux-gnueabihf"

%big_struct0 = type { [517 x i32] }
%big_struct1 = type { [516 x i32] }


define void @f(%big_struct0* %p0, %big_struct1* %p1) {




  call void @callme0(%big_struct0* byval %p0)





  call void @callme1(%big_struct1* byval %p1)



  ret void
}

declare void @callme0(%big_struct0* byval)
declare void @callme1(%big_struct1* byval)

