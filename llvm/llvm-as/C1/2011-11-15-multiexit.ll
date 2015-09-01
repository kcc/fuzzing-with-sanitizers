







target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"



define i32 @test(i32* %first, i32* %last) uwtable ssp {
entry:
  br i1 undef, label %if.end, label %if.then

if.then:                                          
  br i1 undef, label %if.end, label %do.body

do.body:                                          
  %firstIV = phi i32* [ %incdec.ptr2, %if.else ], [ %first, %if.then ]
  %incdec.ptr1 = getelementptr inbounds i32, i32* %firstIV, i64 1
  %cmp1 = icmp eq i32* %incdec.ptr1, %last
  br i1 %cmp1, label %early.exit, label %if.else

if.else:                                        
  %incdec.ptr2 = getelementptr inbounds i32, i32* %firstIV, i64 2
  %cmp2 = icmp eq i32* %incdec.ptr2, %last
  br i1 %cmp2, label %if.end, label %do.body

early.exit:
  %first.lcssa = phi i32* [ %firstIV, %do.body ]
  br label %if.end

if.end:
  %tmp = phi i32* [ %first.lcssa, %early.exit ], [ %first, %if.then ], [ %first, %entry ], [ undef, %if.else ]
  %val = load i32, i32* %tmp
  ret i32 %val
}
