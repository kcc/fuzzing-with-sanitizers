
target datalayout = "p:32:32"



@opte_a = global i32 0
@opte_b = global i32 0



define zeroext i1 @no_offsets() {
  %t = icmp eq i32* @opte_a, @opte_b
  ret i1 %t
  
  
}



define zeroext i1 @both_past_the_end() {
  %x = getelementptr i32, i32* @opte_a, i32 1
  %y = getelementptr i32, i32* @opte_b, i32 1
  %t = icmp eq i32* %x, %y
  ret i1 %t
  
  
  
}




define zeroext i1 @just_one_past_the_end() {
  %x = getelementptr i32, i32* @opte_a, i32 1
  %t = icmp eq i32* %x, @opte_b
  ret i1 %t
  
  
}



define zeroext i1 @no_alloca_offsets() {
  %m = alloca i32
  %n = alloca i32
  %t = icmp eq i32* %m, %n
  ret i1 %t
  
  
}



define zeroext i1 @both_past_the_end_alloca() {
  %m = alloca i32
  %n = alloca i32
  %x = getelementptr i32, i32* %m, i32 1
  %y = getelementptr i32, i32* %n, i32 1
  %t = icmp eq i32* %x, %y
  ret i1 %t
  
  
  
}




define zeroext i1 @just_one_past_the_end_alloca() {
  %m = alloca i32
  %n = alloca i32
  %x = getelementptr i32, i32* %m, i32 1
  %t = icmp eq i32* %x, %n
  ret i1 %t
  
  
}
