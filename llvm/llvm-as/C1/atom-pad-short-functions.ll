

declare void @external_function(...)

define i32 @test_return_val(i32 %a) nounwind {









  ret i32 %a
}

define i32 @test_optsize(i32 %a) nounwind optsize {



  ret i32 %a
}

define i32 @test_minsize(i32 %a) nounwind minsize {



  ret i32 %a
}

define i32 @test_add(i32 %a, i32 %b) nounwind {







  %result = add i32 %a, %b
  ret i32 %result
}

define i32 @test_multiple_ret(i32 %a, i32 %b, i1 %c) nounwind {











  br i1 %c, label %bb1, label %bb2

bb1:
  ret i32 %a

bb2:
  ret i32 %b
}

define void @test_call_others(i32 %x) nounwind
{


  %tobool = icmp eq i32 %x, 0
  br i1 %tobool, label %if.end, label %true.case


true.case:
  tail call void bitcast (void (...)* @external_function to void ()*)() nounwind
  br label %if.end






if.end:
  ret void

}

define void @test_branch_to_same_bb(i32 %x, i32 %y) nounwind {

  %cmp = icmp sgt i32 %x, 0
  br i1 %cmp, label %while.cond, label %while.end

while.cond:
  br label %while.cond






while.end:
  ret void
}

