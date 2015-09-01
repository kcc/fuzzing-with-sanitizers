

define i32 @compute_min_2(i32 %x, i32 %y) {

 entry:
  %not_x = sub i32 -1, %x
  %not_y = sub i32 -1, %y
  %cmp = icmp sgt i32 %not_x, %not_y
  %not_min = select i1 %cmp, i32 %not_x, i32 %not_y
  %min = sub i32 -1, %not_min
  ret i32 %min




}

define i32 @compute_min_3(i32 %x, i32 %y, i32 %z) {

 entry:
  %not_x = sub i32 -1, %x
  %not_y = sub i32 -1, %y
  %not_z = sub i32 -1, %z
  %cmp_1 = icmp sgt i32 %not_x, %not_y
  %not_min_1 = select i1 %cmp_1, i32 %not_x, i32 %not_y
  %cmp_2 = icmp sgt i32 %not_min_1, %not_z
  %not_min_2 = select i1 %cmp_2, i32 %not_min_1, i32 %not_z
  %min = sub i32 -1, %not_min_2
  ret i32 %min






}

define i32 @compute_min_arithmetic(i32 %x, i32 %y) {

 entry:
  %not_value = sub i32 3, %x
  %not_y = sub i32 -1, %y
  %cmp = icmp sgt i32 %not_value, %not_y
  %not_min = select i1 %cmp, i32 %not_value, i32 %not_y
  ret i32 %not_min






}

declare void @fake_use(i32)

define i32 @compute_min_pessimization(i32 %x, i32 %y) {

 entry:
  %not_value = sub i32 3, %x
  call void @fake_use(i32 %not_value)
  %not_y = sub i32 -1, %y
  %cmp = icmp sgt i32 %not_value, %not_y


  %not_min = select i1 %cmp, i32 %not_value, i32 %not_y
  %min = sub i32 -1, %not_min
  ret i32 %min
}

define i32 @max_of_nots(i32 %x, i32 %y) {







  %c0 = icmp sgt i32 %y, 0
  %xor_y = xor i32 %y, -1
  %s0 = select i1 %c0, i32 %xor_y, i32 -1
  %xor_x = xor i32 %x, -1
  %c1 = icmp slt i32 %s0, %xor_x
  %smax96 = select i1 %c1, i32 %xor_x, i32 %s0
  ret i32 %smax96
}
