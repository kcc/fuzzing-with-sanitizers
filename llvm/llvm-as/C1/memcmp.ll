






@.str = private constant [23 x i8] c"fooooooooooooooooooooo\00", align 1 

declare i32 @memcmp(...)

define void @memcmp2(i8* %X, i8* %Y, i32* nocapture %P) nounwind {
entry:
  %0 = tail call i32 (...) @memcmp(i8* %X, i8* %Y, i32 2) nounwind 
  %1 = icmp eq i32 %0, 0                          
  br i1 %1, label %return, label %bb

bb:                                               
  store i32 4, i32* %P, align 4
  ret void

return:                                           
  ret void






}

define void @memcmp2a(i8* %X, i32* nocapture %P) nounwind {
entry:
  %0 = tail call i32 (...) @memcmp(i8* %X, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 1), i32 2) nounwind 
  %1 = icmp eq i32 %0, 0                          
  br i1 %1, label %return, label %bb

bb:                                               
  store i32 4, i32* %P, align 4
  ret void

return:                                           
  ret void



}


define void @memcmp4(i8* %X, i8* %Y, i32* nocapture %P) nounwind {
entry:
  %0 = tail call i32 (...) @memcmp(i8* %X, i8* %Y, i32 4) nounwind 
  %1 = icmp eq i32 %0, 0                          
  br i1 %1, label %return, label %bb

bb:                                               
  store i32 4, i32* %P, align 4
  ret void

return:                                           
  ret void



}

define void @memcmp4a(i8* %X, i32* nocapture %P) nounwind {
entry:
  %0 = tail call i32 (...) @memcmp(i8* %X, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 1), i32 4) nounwind 
  %1 = icmp eq i32 %0, 0                          
  br i1 %1, label %return, label %bb

bb:                                               
  store i32 4, i32* %P, align 4
  ret void

return:                                           
  ret void


}

define void @memcmp8(i8* %X, i8* %Y, i32* nocapture %P) nounwind {
entry:
  %0 = tail call i32 (...) @memcmp(i8* %X, i8* %Y, i32 8) nounwind 
  %1 = icmp eq i32 %0, 0                          
  br i1 %1, label %return, label %bb

bb:                                               
  store i32 4, i32* %P, align 4
  ret void

return:                                           
  ret void



}

define void @memcmp8a(i8* %X, i32* nocapture %P) nounwind {
entry:
  %0 = tail call i32 (...) @memcmp(i8* %X, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 8) nounwind 
  %1 = icmp eq i32 %0, 0                          
  br i1 %1, label %return, label %bb

bb:                                               
  store i32 4, i32* %P, align 4
  ret void

return:                                           
  ret void



}

