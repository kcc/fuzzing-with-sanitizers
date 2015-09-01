
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios8.0.0"





define linkonce_odr hidden i64 @_ZNSt3__14findINS_11__wrap_iterIPiEEiEET_S4_S4_RKT0_(i64 %__first.coerce, i64 %__last.coerce, i32* nocapture readonly dereferenceable(4) %__value_) {
entry:
  %coerce.val.ip = inttoptr i64 %__first.coerce to i32*
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to i32*
  br label %for.cond

for.cond:                                         
  %coerce.val.ip9 = phi i32* [ %incdec.ptr.i, %for.inc ], [ %coerce.val.ip, %entry ]
  %lnot.i = icmp eq i32* %coerce.val.ip9, %coerce.val.ip2
  br i1 %lnot.i, label %for.end, label %for.body

for.body:                                         
  %0 = load i32, i32* %coerce.val.ip9, align 4
  %1 = load i32, i32* %__value_, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          
  %incdec.ptr.i = getelementptr inbounds i32, i32* %coerce.val.ip9, i64 1
  br label %for.cond

for.end:                                          
  %coerce.val.ip9.lcssa = phi i32* [ %coerce.val.ip9, %for.cond ], [ %coerce.val.ip9, %for.body ]
  %coerce.val.pi = ptrtoint i32* %coerce.val.ip9.lcssa to i64
  ret i64 %coerce.val.pi
}
