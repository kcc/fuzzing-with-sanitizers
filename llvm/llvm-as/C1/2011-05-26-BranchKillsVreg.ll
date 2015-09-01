







target datalayout = "E-p:32:32:32-i1:8:8-i8:8:32-i16:16:32-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-n32"
target triple = "mips-ellcc-linux"

define i32 @mergesort(i8* %base, i32 %nmemb, i32 %size, i32 (i8*, i8*)* nocapture %cmp) nounwind {
entry:
  br i1 undef, label %return, label %if.end13

if.end13:                                         
  br label %while.body

while.body:                                       
  %list1.0482 = phi i8* [ %base, %if.end13 ], [ null, %while.body ]
  br i1 undef, label %while.end415, label %while.body

while.end415:                                     
  br i1 undef, label %if.then419, label %if.end427

if.then419:                                       
  %call425 = tail call i8* @memmove(i8* %list1.0482, i8* undef, i32 undef) nounwind
  br label %if.end427

if.end427:                                        
  %list2.1 = phi i8* [ undef, %if.then419 ], [ %list1.0482, %while.end415 ]
  tail call void @free(i8* %list2.1)
  unreachable

return:                                           
  ret i32 -1
}


declare i8* @memmove(i8*, i8*, i32)

declare void @free(i8*)

