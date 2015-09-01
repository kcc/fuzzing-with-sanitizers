


declare void @foo1()

declare void @foo2()

define void @test1(i32 %V) {
        %C1 = icmp eq i32 %V, 4         
        %C2 = icmp eq i32 %V, 17                
        %CN = or i1 %C1, %C2            
        br i1 %CN, label %T, label %F
T:              
        call void @foo1( )
        ret void
F:              
        call void @foo2( )
        ret void





}

define void @test1_ptr(i32* %V) {
        %C1 = icmp eq i32* %V, inttoptr (i32 4 to i32*)
        %C2 = icmp eq i32* %V, inttoptr (i32 17 to i32*)
        %CN = or i1 %C1, %C2            
        br i1 %CN, label %T, label %F
T:              
        call void @foo1( )
        ret void
F:              
        call void @foo2( )
        ret void






}

define void @test1_ptr_as1(i32 addrspace(1)* %V) {
        %C1 = icmp eq i32 addrspace(1)* %V, inttoptr (i32 4 to i32 addrspace(1)*)
        %C2 = icmp eq i32 addrspace(1)* %V, inttoptr (i32 17 to i32 addrspace(1)*)
        %CN = or i1 %C1, %C2            
        br i1 %CN, label %T, label %F
T:              
        call void @foo1( )
        ret void
F:              
        call void @foo2( )
        ret void






}

define void @test2(i32 %V) {
        %C1 = icmp ne i32 %V, 4         
        %C2 = icmp ne i32 %V, 17                
        %CN = and i1 %C1, %C2           
        br i1 %CN, label %T, label %F
T:              
        call void @foo1( )
        ret void
F:              
        call void @foo2( )
        ret void





}

define void @test3(i32 %V) {
        %C1 = icmp eq i32 %V, 4         
        br i1 %C1, label %T, label %N
N:              
        %C2 = icmp eq i32 %V, 17                
        br i1 %C2, label %T, label %F
T:              
        call void @foo1( )
        ret void
F:              
        call void @foo2( )
        ret void






}



define i32 @test4(i8 zeroext %c) nounwind ssp noredzone {
entry:
  %cmp = icmp eq i8 %c, 62
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    
  %cmp4 = icmp eq i8 %c, 34
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          
  %cmp8 = icmp eq i8 %c, 92
  br label %lor.end

lor.end:                                          
  %0 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp8, %lor.rhs ]
  %lor.ext = zext i1 %0 to i32
  ret i32 %lor.ext







}

define i32 @test5(i8 zeroext %c) nounwind ssp noredzone {
entry:
  switch i8 %c, label %lor.rhs [
    i8 62, label %lor.end
    i8 34, label %lor.end
    i8 92, label %lor.end
  ]

lor.rhs:                                          
  %V = icmp eq i8 %c, 92
  br label %lor.end

lor.end:                                          
  %0 = phi i1 [ true, %entry ], [ %V, %lor.rhs ], [ true, %entry ], [ true, %entry ]
  %lor.ext = zext i1 %0 to i32
  ret i32 %lor.ext






}


define i1 @test6({ i32, i32 }* %I) {
entry:
        %tmp.1.i = getelementptr { i32, i32 }, { i32, i32 }* %I, i64 0, i32 1         
        %tmp.2.i = load i32, i32* %tmp.1.i           
        %tmp.2 = icmp eq i32 %tmp.2.i, 14               
        br i1 %tmp.2, label %shortcirc_done.4, label %shortcirc_next.0
shortcirc_next.0:               
        %tmp.6 = icmp eq i32 %tmp.2.i, 15               
        br i1 %tmp.6, label %shortcirc_done.4, label %shortcirc_next.1
shortcirc_next.1:               
        %tmp.11 = icmp eq i32 %tmp.2.i, 16              
        br i1 %tmp.11, label %shortcirc_done.4, label %shortcirc_next.2
shortcirc_next.2:               
        %tmp.16 = icmp eq i32 %tmp.2.i, 17              
        br i1 %tmp.16, label %shortcirc_done.4, label %shortcirc_next.3
shortcirc_next.3:               
        %tmp.21 = icmp eq i32 %tmp.2.i, 18              
        br i1 %tmp.21, label %shortcirc_done.4, label %shortcirc_next.4
shortcirc_next.4:               
        %tmp.26 = icmp eq i32 %tmp.2.i, 19              
        br label %UnifiedReturnBlock
shortcirc_done.4:               
        br label %UnifiedReturnBlock
UnifiedReturnBlock:             
        %UnifiedRetVal = phi i1 [ %tmp.26, %shortcirc_next.4 ], [ true, %shortcirc_done.4 ]             
        ret i1 %UnifiedRetVal




}

define void @test7(i8 zeroext %c, i32 %x) nounwind ssp noredzone {
entry:
  %cmp = icmp ult i32 %x, 32
  %cmp4 = icmp eq i8 %c, 97
  %or.cond = or i1 %cmp, %cmp4
  %cmp9 = icmp eq i8 %c, 99
  %or.cond11 = or i1 %or.cond, %cmp9
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          
  tail call void @foo1() nounwind noredzone
  ret void

if.end:                                           
  ret void









}

define i32 @test8(i8 zeroext %c, i32 %x, i1 %C) nounwind ssp noredzone {
entry:
  br i1 %C, label %N, label %if.then
N:
  %cmp = icmp ult i32 %x, 32
  %cmp4 = icmp eq i8 %c, 97
  %or.cond = or i1 %cmp, %cmp4
  %cmp9 = icmp eq i8 %c, 99
  %or.cond11 = or i1 %or.cond, %cmp9
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          
  %A = phi i32 [0, %entry], [42, %N]
  tail call void @foo1() nounwind noredzone
  ret i32 %A

if.end:                                           
  ret i32 0








}


define i32 @test9(i8 zeroext %c) nounwind ssp noredzone {
entry:
  %cmp = icmp ult i8 %c, 33
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    
  %cmp4 = icmp eq i8 %c, 46
  br i1 %cmp4, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   
  %cmp9 = icmp eq i8 %c, 44
  br i1 %cmp9, label %lor.end, label %lor.lhs.false11

lor.lhs.false11:                                  
  %cmp14 = icmp eq i8 %c, 58
  br i1 %cmp14, label %lor.end, label %lor.lhs.false16

lor.lhs.false16:                                  
  %cmp19 = icmp eq i8 %c, 59
  br i1 %cmp19, label %lor.end, label %lor.lhs.false21

lor.lhs.false21:                                  
  %cmp24 = icmp eq i8 %c, 60
  br i1 %cmp24, label %lor.end, label %lor.lhs.false26

lor.lhs.false26:                                  
  %cmp29 = icmp eq i8 %c, 62
  br i1 %cmp29, label %lor.end, label %lor.lhs.false31

lor.lhs.false31:                                  
  %cmp34 = icmp eq i8 %c, 34
  br i1 %cmp34, label %lor.end, label %lor.lhs.false36

lor.lhs.false36:                                  
  %cmp39 = icmp eq i8 %c, 92
  br i1 %cmp39, label %lor.end, label %lor.rhs

lor.rhs:                                          
  %cmp43 = icmp eq i8 %c, 39
  br label %lor.end

lor.end:                                          
  %0 = phi i1 [ true, %lor.lhs.false36 ], [ true, %lor.lhs.false31 ], [ true, %lor.lhs.false26 ], [ true, %lor.lhs.false21 ], [ true, %lor.lhs.false16 ], [ true, %lor.lhs.false11 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp43, %lor.rhs ]
  %conv46 = zext i1 %0 to i32
  ret i32 %conv46

















}

define i32 @test10(i32 %mode, i1 %Cond) {
  %A = icmp ne i32 %mode, 0
  %B = icmp ne i32 %mode, 51
  %C = and i1 %A, %B
  %D = and i1 %C, %Cond
  br i1 %D, label %T, label %F
T:
  ret i32 123
F:
  ret i32 324








}


define i32 @test11(i32 %bar) nounwind {
entry:
  %cmp = icmp eq i32 %bar, 4
  %cmp2 = icmp eq i32 %bar, 35
  %or.cond = or i1 %cmp, %cmp2
  %cmp5 = icmp eq i32 %bar, 53
  %or.cond1 = or i1 %or.cond, %cmp5
  %cmp8 = icmp eq i32 %bar, 24
  %or.cond2 = or i1 %or.cond1, %cmp8
  %cmp11 = icmp eq i32 %bar, 23
  %or.cond3 = or i1 %or.cond2, %cmp11
  %cmp14 = icmp eq i32 %bar, 55
  %or.cond4 = or i1 %or.cond3, %cmp14
  %cmp17 = icmp eq i32 %bar, 12
  %or.cond5 = or i1 %or.cond4, %cmp17
  %cmp20 = icmp eq i32 %bar, 35
  %or.cond6 = or i1 %or.cond5, %cmp20
  br i1 %or.cond6, label %if.then, label %if.end

if.then:                                          
  br label %return

if.end:                                           
  br label %return

return:                                           
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0











}

define void @test12() nounwind {
entry:
  br label %bb49.us.us

bb49.us.us:
  %A = icmp eq i32 undef, undef
  br i1 %A, label %bb55.us.us, label %malformed

bb48.us.us:
  %B = icmp ugt i32 undef, undef
  br i1 %B, label %bb55.us.us, label %bb49.us.us

bb55.us.us:
  br label %bb48.us.us

malformed:
  ret void


}


define void @test13(i32 %x) nounwind ssp noredzone {
entry:
  %cmp = icmp ult i32 %x, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   
  %cmp5 = icmp eq i32 %x, 3
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   
  %cmp8 = icmp eq i32 %x, 4
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   
  %cmp11 = icmp eq i32 %x, 6
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          
  call void @foo1() noredzone
  br label %if.end

if.end:                                           
  ret void








}


define void @test14(i32 %x) nounwind ssp noredzone {
entry:
  %cmp = icmp ugt i32 %x, 2
  br i1 %cmp, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   
  %cmp5 = icmp ne i32 %x, 3
  br i1 %cmp5, label %lor.lhs.false6, label %if.then

lor.lhs.false6:                                   
  %cmp8 = icmp ne i32 %x, 4
  br i1 %cmp8, label %lor.lhs.false9, label %if.then

lor.lhs.false9:                                   
  %cmp11 = icmp ne i32 %x, 6
  br i1 %cmp11, label %if.end, label %if.then

if.then:                                          
  call void @foo1() noredzone
  br label %if.end

if.end:                                           
  ret void








}


define void @test15(i128 %x) nounwind {
  %cmp = icmp ugt i128 %x, 2
  br i1 %cmp, label %if.end, label %lor.false

lor.false:
  %cmp2 = icmp ne i128 %x, 100000000000000000000
  br i1 %cmp2, label %if.end, label %if.then

if.then:
  call void @foo1() noredzone
  br label %if.end

if.end:
  ret void




}



define zeroext i1 @test16(i32 %x) nounwind {
entry:



  %cmp.i = icmp eq i32 %x, 1
  br i1 %cmp.i, label %lor.end, label %lor.lhs.false

lor.lhs.false:
  %cmp.i2 = icmp eq i32 %x, 2
  br i1 %cmp.i2, label %lor.end, label %lor.rhs

lor.rhs:
  %cmp.i1 = icmp eq i32 %x, 3
  br label %lor.end

lor.end:
  %0 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp.i1, %lor.rhs ]
  ret i1 %0
}


define void @test17(i32 %x, i32 %y) {
  %cmp = icmp ult i32 %x, 3
  %switch = icmp ult i32 %y, 2
  %or.cond775 = or i1 %cmp, %switch
  br i1 %or.cond775, label %lor.lhs.false8, label %return

lor.lhs.false8:
  tail call void @foo1()
  ret void

return:
  ret void





}

define void @test18(i32 %arg) {
bb:
  %tmp = and i32 %arg, -2
  %tmp1 = icmp eq i32 %tmp, 8
  %tmp2 = icmp eq i32 %arg, 10
  %tmp3 = or i1 %tmp1, %tmp2
  %tmp4 = icmp eq i32 %arg, 11
  %tmp5 = or i1 %tmp3, %tmp4
  %tmp6 = icmp eq i32 %arg, 12
  %tmp7 = or i1 %tmp5, %tmp6
  br i1 %tmp7, label %bb19, label %bb8

bb8:                                              
  %tmp9 = add i32 %arg, -13
  %tmp10 = icmp ult i32 %tmp9, 2
  %tmp11 = icmp eq i32 %arg, 16
  %tmp12 = or i1 %tmp10, %tmp11
  %tmp13 = icmp eq i32 %arg, 17
  %tmp14 = or i1 %tmp12, %tmp13
  %tmp15 = icmp eq i32 %arg, 18
  %tmp16 = or i1 %tmp14, %tmp15
  %tmp17 = icmp eq i32 %arg, 15
  %tmp18 = or i1 %tmp16, %tmp17
  br i1 %tmp18, label %bb19, label %bb20

bb19:                                             
  tail call void @foo1()
  br label %bb20

bb20:                                             
  ret void




}
