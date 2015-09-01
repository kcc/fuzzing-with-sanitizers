


define i32 @veccond128(<4 x i32> %input) {
entry:
  %0 = bitcast <4 x i32> %input to i128
  %1 = icmp ne i128 %0, 0
  br i1 %1, label %if-true-block, label %endif-block

if-true-block:                                    
  ret i32 0
endif-block:                                      
  ret i32 1






}

define i32 @veccond256(<8 x i32> %input) {
entry:
  %0 = bitcast <8 x i32> %input to i256
  %1 = icmp ne i256 %0, 0
  br i1 %1, label %if-true-block, label %endif-block

if-true-block:                                    
  ret i32 0
endif-block:                                      
  ret i32 1







}

define i32 @veccond512(<16 x i32> %input) {
entry:
  %0 = bitcast <16 x i32> %input to i512
  %1 = icmp ne i512 %0, 0
  br i1 %1, label %if-true-block, label %endif-block

if-true-block:                                    
  ret i32 0
endif-block:                                      
  ret i32 1










}

define i32 @vectest128(<4 x i32> %input) {
entry:
  %0 = bitcast <4 x i32> %input to i128
  %1 = icmp ne i128 %0, 0
  %2 = zext i1 %1 to i32
  ret i32 %2






}

define i32 @vectest256(<8 x i32> %input) {
entry:
  %0 = bitcast <8 x i32> %input to i256
  %1 = icmp ne i256 %0, 0
  %2 = zext i1 %1 to i32
  ret i32 %2







}

define i32 @vectest512(<16 x i32> %input) {
entry:
  %0 = bitcast <16 x i32> %input to i512
  %1 = icmp ne i512 %0, 0
  %2 = zext i1 %1 to i32
  ret i32 %2










}

define i32 @vecsel128(<4 x i32> %input, i32 %a, i32 %b) {
entry:
  %0 = bitcast <4 x i32> %input to i128
  %1 = icmp ne i128 %0, 0
  %2 = select i1 %1, i32 %a, i32 %b
  ret i32 %2






}

define i32 @vecsel256(<8 x i32> %input, i32 %a, i32 %b) {
entry:
  %0 = bitcast <8 x i32> %input to i256
  %1 = icmp ne i256 %0, 0
  %2 = select i1 %1, i32 %a, i32 %b
  ret i32 %2







}

define i32 @vecsel512(<16 x i32> %input, i32 %a, i32 %b) {
entry:
  %0 = bitcast <16 x i32> %input to i512
  %1 = icmp ne i512 %0, 0
  %2 = select i1 %1, i32 %a, i32 %b
  ret i32 %2










}
