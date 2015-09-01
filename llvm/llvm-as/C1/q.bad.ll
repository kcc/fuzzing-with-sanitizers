
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7--linux-gnueabi"



define void @test_zext_sext_amounts255(i8* %mem) {
  %sext.1 = sext i8 255 to i16
  %sext.zext.1 = zext i16 %sext.1 to i64
  %sext.2 = sext i8 255 to i32
  %sext.zext.2 = zext i32 %sext.2 to i64
  %a = getelementptr inbounds i8, i8* %mem, i64 %sext.zext.1
  %b = getelementptr inbounds i8, i8* %mem, i64 %sext.zext.2
  ret void
}





define void @test_zext_sext_amounts(i8* %mem, i8 %num) {
  %sext.1 = sext i8 %num to i16
  %sext.zext.1 = zext i16 %sext.1 to i64
  %sext.2 = sext i8 %num to i32
  %sext.zext.2 = zext i32 %sext.2 to i64
  %a = getelementptr inbounds i8, i8* %mem, i64 %sext.zext.1
  %b = getelementptr inbounds i8, i8* %mem, i64 %sext.zext.2
  ret void
}




define void @based_on_pr18068(i32 %loaded, i8* %mem) {
  %loaded.64 = zext i32 %loaded to i64
  %add1 = add i32 %loaded, -1 
  %add1.64 = zext i32 %add1 to i64 
  %sub1 = sub i32 %loaded, 1 
  %sub1.64 = zext i32 %sub1 to i64 
  %a = getelementptr inbounds i8, i8* %mem, i64 %loaded.64
  %b = getelementptr inbounds i8, i8* %mem, i64 %add1.64
  %c = getelementptr inbounds i8, i8* %mem, i64 %sub1.64
  ret void
}





define void @test_path_dependence(i32 %p, i8* %mem) {
  %p.minus1 = add i32 %p, -1 
  %p.minus1.64 = zext i32 %p.minus1 to i64
  %p.64.again = add i64 %p.minus1.64, 1 

  %p.nsw.nuw.minus1 = sub nsw nuw i32 %p, 1 
  %p.nsw.nuw.minus1.64 = zext i32 %p.nsw.nuw.minus1 to i64
  %p.nsw.nuw.64.again = add nsw nuw i64 %p.nsw.nuw.minus1.64, 1 

  %p.nsw.minus1 = sub nsw i32 %p, 1 
  %p.nsw.minus1.64 = zext i32 %p.nsw.minus1 to i64 
  %p.nsw.64.again = add nsw i64 %p.nsw.minus1.64, 1 

  %p.64 = zext i32 %p to i64
  %a = getelementptr inbounds i8, i8* %mem, i64 %p.64
  %b = getelementptr inbounds i8, i8* %mem, i64 %p.64.again
  %c = getelementptr inbounds i8, i8* %mem, i64 %p.nsw.nuw.64.again
  %d = getelementptr inbounds i8, i8* %mem, i64 %p.nsw.64.again
  ret void
}



define void @test_zext_sext_255(i8* %mem) {
  %zext.255 = zext i8 255 to i16 
  %sext.255 = sext i8 255 to i16 
  %zext.sext.255 = zext i16 %sext.255 to i32 
  %sext.zext.255 = sext i16 %zext.255 to i32 
  %zext.zext.sext.255 = zext i32 %zext.sext.255 to i64
  %zext.sext.zext.255 = zext i32 %sext.zext.255 to i64
  %a = getelementptr inbounds i8, i8* %mem, i64 %zext.zext.sext.255
  %b = getelementptr inbounds i8, i8* %mem, i64 %zext.sext.zext.255
  ret void
}




define void @test_zext_sext_num(i8* %mem, i8 %num) {
  %zext.num = zext i8 %num to i16
  %sext.num = sext i8 %num to i16
  %zext.sext.num = zext i16 %sext.num to i32
  %sext.zext.num = sext i16 %zext.num to i32
  %zext.zext.sext.num = zext i32 %zext.sext.num to i64
  %zext.sext.zext.num = zext i32 %sext.zext.num to i64
  %a = getelementptr inbounds i8, i8* %mem, i64 %zext.zext.sext.num
  %b = getelementptr inbounds i8, i8* %mem, i64 %zext.sext.zext.num
  ret void
}




define void @uncompressStream(i8* %mem) {
  %zext.255 = zext i8 255 to i32
  %sext.255 = sext i8 255 to i32
  %a = getelementptr inbounds i8, i8* %mem, i32 255
  %b = getelementptr inbounds i8, i8* %mem, i32 %zext.255
  %c = getelementptr inbounds i8, i8* %mem, i32 %sext.255
  ret void
}





define void @constantOffsetHeuristic_i3_i32(i32* %mem, i3 %val) {
  %zext.plus.7 = add nsw i3 %val, 7
  %zext.plus.4 = add nsw i3 %val, 4
  %zext.val = zext i3 %val to i32
  %zext.4 = zext i3 %zext.plus.4 to i32
  %zext.7 = zext i3 %zext.plus.7 to i32
  %a = getelementptr inbounds i32, i32* %mem, i32 %zext.4
  %b = getelementptr inbounds i32, i32* %mem, i32 %zext.7
  %c = getelementptr inbounds i32, i32* %mem, i32 %zext.val
  ret void
}





define void @constantOffsetHeuristic_i8_i32(i32* %mem, i8 %val) {
  %zext.plus.7 = add nsw i8 %val, 7
  %zext.plus.4 = add nsw i8 %val, 4
  %zext.val = zext i8 %val to i32
  %zext.4 = zext i8 %zext.plus.4 to i32
  %zext.7 = zext i8 %zext.plus.7 to i32
  %a = getelementptr inbounds i32, i32* %mem, i32 %zext.4
  %b = getelementptr inbounds i32, i32* %mem, i32 %zext.7
  %c = getelementptr inbounds i32, i32* %mem, i32 %zext.val
  ret void
}





define void @constantOffsetHeuristic_i3_i8(i8* %mem, i3 %val) {
  %zext.plus.7 = add nsw i3 %val, 7
  %zext.plus.4 = add nsw i3 %val, 4
  %zext.val = zext i3 %val to i32
  %zext.4 = zext i3 %zext.plus.4 to i32
  %zext.7 = zext i3 %zext.plus.7 to i32
  %a.8 = getelementptr inbounds i8, i8* %mem, i32 %zext.4
  %b.8 = getelementptr inbounds i8, i8* %mem, i32 %zext.7
  %c.8 = getelementptr inbounds i8, i8* %mem, i32 %zext.val
  %a = bitcast i8* %a.8 to i32*
  %b = bitcast i8* %b.8 to i32*
  %c = bitcast i8* %c.8 to i32*
  ret void
}





define void @constantOffsetHeuristic_i8_i8(i8* %mem, i8 %val) {
  %zext.plus.7 = add nsw i8 %val, 7
  %zext.plus.4 = add nsw i8 %val, 4
  %zext.val = zext i8 %val to i32
  %zext.4 = zext i8 %zext.plus.4 to i32
  %zext.7 = zext i8 %zext.plus.7 to i32
  %a.8 = getelementptr inbounds i8, i8* %mem, i32 %zext.4
  %b.8 = getelementptr inbounds i8, i8* %mem, i32 %zext.7
  %c.8 = getelementptr inbounds i8, i8* %mem, i32 %zext.val
  %a = bitcast i8* %a.8 to i32*
  %b = bitcast i8* %b.8 to i32*
  %c = bitcast i8* %c.8 to i32*
  ret void
}
