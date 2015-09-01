




define fastcc void @test(i32 %level, i64 %a, i64 %b, i64 %c, i64 %d, i32* %p) nounwind {
if.end523:                                        
  %conv7981749 = zext i32 %level to i64           
  %and799 = shl i64 %conv7981749, 16              
  %shl800 = and i64 %and799, 16711680             
  %or801 = or i64 %shl800, %a                     
  %or806 = or i64 %or801, %b                      
  %or811 = or i64 %or806, %c                      
  %or819 = or i64 %or811, %d                      
  %conv820 = trunc i64 %or819 to i32              
  store i32 %conv820, i32* %p
  ret void
}



declare void @bar(i64)

define fastcc void @foo(i32 %t) {
bb:
  %tmp = add i32 %t, -1                           
  br label %bb1

bb1:                                              
  %tmp2 = zext i32 %tmp to i64                    
  %tmp3 = add i64 %tmp2, 1                        
  %tmp4 = xor i64 %tmp2, 536870911                
  %tmp5 = and i64 %tmp3, %tmp4                    
  %tmp6 = shl i64 %tmp5, 3                        
  %tmp7 = sub i64 64, %tmp6                       
  %tmp8 = and i64 %tmp7, 4294967288               
  %tmp9 = lshr i64 -1, %tmp8                      
  call void @bar(i64 %tmp9)
  ret void
}
