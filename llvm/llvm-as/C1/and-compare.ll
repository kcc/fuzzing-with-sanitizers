


target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


define i1 @test1(i32 %a, i32 %b) {





        %tmp1 = and i32 %a, 65280               
        %tmp3 = and i32 %b, 65280               
        %tmp = icmp ne i32 %tmp1, %tmp3         
        ret i1 %tmp
}

define zeroext i1 @test2(i64 %A) {




  %and = and i64 %A, 128
  %cmp = icmp eq i64 %and, 0
  ret i1 %cmp
}

define zeroext i1 @test3(i64 %A) {




  %and = and i64 %A, 128
  %cmp = icmp ne i64 %and, 0
  ret i1 %cmp
}
