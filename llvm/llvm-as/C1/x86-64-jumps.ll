
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-apple-darwin10.0"

define i8 @test1() nounwind ssp {
entry:
  %0 = select i1 undef, i8* blockaddress(@test1, %bb), i8* blockaddress(@test1, %bb6) 
  indirectbr i8* %0, [label %bb, label %bb6]

bb:                                               
  ret i8 1

bb6:                                              
  ret i8 2
}



@test.array = internal constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (i8* blockaddress(@test2, %foo) to i64), i64 ptrtoint (i8* blockaddress(@test2, %foo) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (i8* blockaddress(@test2, %bar) to i64), i64 ptrtoint (i8* blockaddress(@test2, %foo) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (i8* blockaddress(@test2, %hack) to i64), i64 ptrtoint (i8* blockaddress(@test2, %foo) to i64)) to i32)] 

define void @test2(i32 %i) nounwind ssp {
entry:
  %i.addr = alloca i32                            
  store i32 %i, i32* %i.addr
  %tmp = load i32, i32* %i.addr                        
  %idxprom = sext i32 %tmp to i64                 
  %arrayidx = getelementptr inbounds i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @test.array, i32 0, i32 0), i64 %idxprom 
  %tmp1 = load i32, i32* %arrayidx                     
  %idx.ext = sext i32 %tmp1 to i64                
  %add.ptr = getelementptr i8, i8* blockaddress(@test2, %foo), i64 %idx.ext 
  br label %indirectgoto

foo:                                              
  br label %bar

bar:                                              
  br label %hack

hack:                                             
  ret void

indirectgoto:                                     
  %indirect.goto.dest = phi i8* [ %add.ptr, %entry ] 
  indirectbr i8* %indirect.goto.dest, [label %foo, label %foo, label %bar, label %foo, label %hack, label %foo, label %foo]
}
