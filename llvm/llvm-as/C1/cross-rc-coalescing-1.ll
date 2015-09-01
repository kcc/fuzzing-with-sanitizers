

%struct.FILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

declare i32 @fgetc(%struct.FILE* nocapture) nounwind

define i32 @main(i32 %argc, i8** nocapture %argv) nounwind {
entry:
  br i1 undef, label %bb, label %bb1

bb:                                               
  unreachable

bb1:                                              
  br i1 undef, label %bb.i1, label %bb1.i2

bb.i1:                                            
  unreachable

bb1.i2:                                           
  %0 = call  i32 @fgetc(%struct.FILE* undef) nounwind 
  br i1 undef, label %bb2.i3, label %bb3.i4

bb2.i3:                                           
  br i1 undef, label %bb4.i, label %bb3.i4

bb3.i4:                                           
  unreachable

bb4.i:                                            
  br i1 undef, label %bb5.i, label %get_image.exit

bb5.i:                                            
  unreachable

get_image.exit:                                   
  br i1 undef, label %bb28, label %bb27

bb27:                                             
  br label %bb.i

bb.i:                                             
  %1 = fptrunc double undef to float              
  %2 = fptoui float %1 to i8                      
  store i8 %2, i8* undef, align 1
  br label %bb.i

bb28:                                             
  unreachable
}
