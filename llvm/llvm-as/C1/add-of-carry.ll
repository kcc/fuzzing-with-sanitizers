


define i32 @test1(i32 %sum, i32 %x) nounwind readnone ssp {
entry:





  %add4 = add i32 %x, %sum
  %cmp = icmp ult i32 %add4, %x
  %inc = zext i1 %cmp to i32
  %z.0 = add i32 %add4, %inc
  ret i32 %z.0
}


define i32 @test2(i32 %x, i32 %y, i32 %res) nounwind uwtable readnone ssp {
entry:
  %cmp = icmp ugt i32 %x, %y
  %dec = sext i1 %cmp to i32
  %dec.res = add nsw i32 %dec, %res
  ret i32 %dec.res




}
