
%big = type i32

@var = global %big 0



define void @consume_i1_arg(i1 %in) {



  %val = zext i1 %in to %big
  store %big %val, %big* @var
  ret void
}



define void @consume_i1_ret() {




  %val1 = call i1 @produce_i1_ret()
  %val = zext i1 %val1 to %big
  store %big %val, %big* @var
  ret void
}


define i1 @produce_i1_ret() {



  %val = load %big, %big* @var
  %val1 = trunc %big %val to i1
  ret i1 %val1
}

define void @produce_i1_arg() {




  %val = load %big, %big* @var
  %val1 = trunc %big %val to i1
  call void @consume_i1_arg(i1 %val1)
  ret void
}






