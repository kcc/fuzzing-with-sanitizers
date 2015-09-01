

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.7.0"








define i32 @main(i32 %arg, i8** %arg1) nounwind {
bb:
  %tmp = alloca i32, align 4                      
  %tmp2 = alloca i32, align 4                     
  %tmp3 = alloca i32                              
  store i32 1, i32* %tmp, align 4
  store i32 1, i32* %tmp2, align 4
  br label %bb4

bb4:                                              
  %tmp6 = load i32, i32* %tmp2, align 4                
  %tmp7 = add i32 %tmp6, -1                       
  store i32 %tmp7, i32* %tmp2, align 4
  %tmp8 = icmp eq i32 %tmp7, 0                    
  %tmp9 = load i32, i32* %tmp                          
  %tmp10 = add i32 %tmp9, -1              
  store i32 %tmp10, i32* %tmp3
  br i1 %tmp8, label %bb11, label %bb4

bb11:                                             
  %tmp12 = load i32, i32* %tmp, align 4                
  ret i32 %tmp12
}


