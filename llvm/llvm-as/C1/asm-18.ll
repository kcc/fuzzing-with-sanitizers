





define void @f1(i32 *%ptr1, i32 *%ptr2) {











  %ptr3 = getelementptr i32, i32 *%ptr1, i64 1024
  %ptr4 = getelementptr i32, i32 *%ptr2, i64 131071
  %old1 = load i32 , i32 *%ptr1
  %old2 = load i32 , i32 *%ptr2
  %old3 = load i32 , i32 *%ptr3
  %old4 = load i32 , i32 *%ptr4
  %res = call { i32, i32, i32, i32 } asm "blah $0, $1, $2, $3",
              "=h,=r,=h,=r,0,1,2,3"(i32 %old1, i32 %old2, i32 %old3, i32 %old4)
  %new1 = extractvalue { i32, i32, i32, i32 } %res, 0
  %new2 = extractvalue { i32, i32, i32, i32 } %res, 1
  %new3 = extractvalue { i32, i32, i32, i32 } %res, 2
  %new4 = extractvalue { i32, i32, i32, i32 } %res, 3
  store i32 %new1, i32 *%ptr1
  store i32 %new2, i32 *%ptr2
  store i32 %new3, i32 *%ptr3
  store i32 %new4, i32 *%ptr4
  ret void
}


define i32 @f2(i32 %old) {








  %tmp = call i32 asm "stepa $1, $2, $3",
                      "=h,0,{r2},{r3}"(i32 %old, i32 %old, i32 %old)
  %new = call i32 asm "stepb $1, $2", "=&h,0,h"(i32 %tmp, i32 %tmp)
  ret i32 %new
}


define void @f3(i8 *%ptr1, i8 *%ptr2) {







  %ptr3 = getelementptr i8, i8 *%ptr1, i64 4096
  %ptr4 = getelementptr i8, i8 *%ptr2, i64 524287
  %val1 = load i8 , i8 *%ptr1
  %val2 = load i8 , i8 *%ptr2
  %val3 = load i8 , i8 *%ptr3
  %val4 = load i8 , i8 *%ptr4
  %ext1 = sext i8 %val1 to i32
  %ext2 = sext i8 %val2 to i32
  %ext3 = sext i8 %val3 to i32
  %ext4 = sext i8 %val4 to i32
  call void asm sideeffect "blah $0, $1, $2, $3",
                           "h,r,h,r"(i32 %ext1, i32 %ext2, i32 %ext3, i32 %ext4)
  ret void
}


define void @f4(i16 *%ptr1, i16 *%ptr2) {







  %ptr3 = getelementptr i16, i16 *%ptr1, i64 2048
  %ptr4 = getelementptr i16, i16 *%ptr2, i64 262143
  %val1 = load i16 , i16 *%ptr1
  %val2 = load i16 , i16 *%ptr2
  %val3 = load i16 , i16 *%ptr3
  %val4 = load i16 , i16 *%ptr4
  %ext1 = sext i16 %val1 to i32
  %ext2 = sext i16 %val2 to i32
  %ext3 = sext i16 %val3 to i32
  %ext4 = sext i16 %val4 to i32
  call void asm sideeffect "blah $0, $1, $2, $3",
                           "h,r,h,r"(i32 %ext1, i32 %ext2, i32 %ext3, i32 %ext4)
  ret void
}


define void @f5(i8 *%ptr1, i8 *%ptr2) {







  %ptr3 = getelementptr i8, i8 *%ptr1, i64 4096
  %ptr4 = getelementptr i8, i8 *%ptr2, i64 524287
  %val1 = load i8 , i8 *%ptr1
  %val2 = load i8 , i8 *%ptr2
  %val3 = load i8 , i8 *%ptr3
  %val4 = load i8 , i8 *%ptr4
  %ext1 = zext i8 %val1 to i32
  %ext2 = zext i8 %val2 to i32
  %ext3 = zext i8 %val3 to i32
  %ext4 = zext i8 %val4 to i32
  call void asm sideeffect "blah $0, $1, $2, $3",
                           "h,r,h,r"(i32 %ext1, i32 %ext2, i32 %ext3, i32 %ext4)
  ret void
}


define void @f6(i16 *%ptr1, i16 *%ptr2) {







  %ptr3 = getelementptr i16, i16 *%ptr1, i64 2048
  %ptr4 = getelementptr i16, i16 *%ptr2, i64 262143
  %val1 = load i16 , i16 *%ptr1
  %val2 = load i16 , i16 *%ptr2
  %val3 = load i16 , i16 *%ptr3
  %val4 = load i16 , i16 *%ptr4
  %ext1 = zext i16 %val1 to i32
  %ext2 = zext i16 %val2 to i32
  %ext3 = zext i16 %val3 to i32
  %ext4 = zext i16 %val4 to i32
  call void asm sideeffect "blah $0, $1, $2, $3",
                           "h,r,h,r"(i32 %ext1, i32 %ext2, i32 %ext3, i32 %ext4)
  ret void
}


define void @f7(i8 *%ptr1, i8 *%ptr2) {







  %res = call { i32, i32 } asm "blah $0, $1", "=h,=r"()
  %res1 = extractvalue { i32, i32 } %res, 0
  %res2 = extractvalue { i32, i32 } %res, 1
  %trunc1 = trunc i32 %res1 to i8
  %trunc2 = trunc i32 %res2 to i8
  %ptr3 = getelementptr i8, i8 *%ptr1, i64 4096
  %ptr4 = getelementptr i8, i8 *%ptr2, i64 524287
  store i8 %trunc1, i8 *%ptr1
  store i8 %trunc2, i8 *%ptr2
  store i8 %trunc1, i8 *%ptr3
  store i8 %trunc2, i8 *%ptr4
  ret void
}


define void @f8(i16 *%ptr1, i16 *%ptr2) {







  %res = call { i32, i32 } asm "blah $0, $1", "=h,=r"()
  %res1 = extractvalue { i32, i32 } %res, 0
  %res2 = extractvalue { i32, i32 } %res, 1
  %trunc1 = trunc i32 %res1 to i16
  %trunc2 = trunc i32 %res2 to i16
  %ptr3 = getelementptr i16, i16 *%ptr1, i64 2048
  %ptr4 = getelementptr i16, i16 *%ptr2, i64 262143
  store i16 %trunc1, i16 *%ptr1
  store i16 %trunc2, i16 *%ptr2
  store i16 %trunc1, i16 *%ptr3
  store i16 %trunc2, i16 *%ptr4
  ret void
}


define i32 @f9(i8 %val1, i8 %val2) {








  %ext1 = zext i8 %val1 to i32
  %ext2 = zext i8 %val2 to i32
  %val3 = call i8 asm sideeffect "stepa $0, $1", "=h,0,r"(i32 %ext1, i32 %ext2)
  %ext3 = zext i8 %val3 to i32
  %val4 = call i8 asm sideeffect "stepb $0", "=h,0"(i32 %ext3)
  %ext4 = zext i8 %val4 to i32
  ret i32 %ext4
}


define i32 @f10(i16 %val1, i16 %val2) {








  %ext1 = zext i16 %val1 to i32
  %ext2 = zext i16 %val2 to i32
  %val3 = call i16 asm sideeffect "stepa $0, $1", "=h,0,r"(i32 %ext1, i32 %ext2)
  %ext3 = zext i16 %val3 to i32
  %val4 = call i16 asm sideeffect "stepb $0", "=h,0"(i32 %ext3)
  %ext4 = zext i16 %val4 to i32
  ret i32 %ext4
}


define void @f11() {







  call void asm sideeffect "blah $0, $1, $2, $3",
                           "h,r,h,r"(i32 -32767, i32 -32768,
                                     i32 32766, i32 32767)
  ret void
}





define void @f12() {






















  call void asm sideeffect "stepa $0, $1, $2, $3",
                           "h,h,h,h"(i32 32768, i32 65535,
                                     i32 65536, i32 -65536)
  call void asm sideeffect "stepb $0, $1, $2, $3",
                           "r,r,r,r"(i32 32769, i32 65534,
                                     i32 131072, i32 -131072)
  call void asm sideeffect "stepc $0, $1, $2, $3",
                           "h,r,h,r"(i32 32770, i32 65533,
                                     i32 262144, i32 524288)
  call void asm sideeffect "stepd $0, $1, $2, $3",
                           "h,r,h,r"(i32 -1000000000, i32 -400000,
                                     i32 1000000000, i32 400000)
  ret void
}


define void @f13(i32 %x, i32 %y) {






  %cmp = icmp eq i32 %x, 0
  %val = select i1 %cmp, i32 0, i32 2102030405
  call void asm sideeffect "blah $0", "h"(i32 %val)
  ret void
}


define void @f14(i32 %x, i32 %y) {






  %cmp = icmp eq i32 %x, 0
  %val = select i1 %cmp, i32 0, i32 2102030405
  call void asm sideeffect "blah $0", "r"(i32 %val)
  ret void
}


define void @f15() {







  %res1 = call i32 asm "stepa $0", "=h"()
  %and1 = and i32 %res1, 65535
  %or1 = or i32 %and1, 305397760
  %res2 = call i32 asm "stepb $0, $1", "=h,h"(i32 %or1)
  %and2 = and i32 %res2, -65536
  %or2 = or i32 %and2, 34661
  call void asm sideeffect "stepc $0", "h"(i32 %or2)
  ret void
}


define void @f16() {







  %res1 = call i32 asm "stepa $0", "=r"()
  %and1 = and i32 %res1, 65535
  %or1 = or i32 %and1, 305397760
  %res2 = call i32 asm "stepb $0, $1", "=r,r"(i32 %or1)
  %and2 = and i32 %res2, -65536
  %or2 = or i32 %and2, 34661
  call void asm sideeffect "stepc $0", "r"(i32 %or2)
  ret void
}


define void @f17() {









  %res1 = call i32 asm "stepa $0", "=h"()
  %or1 = or i32 %res1, 305397760
  %res2 = call i32 asm "stepb $0, $1", "=h,h"(i32 %or1)
  %or2 = or i32 %res2, 34661
  %res3 = call i32 asm "stepc $0, $1", "=h,h"(i32 %or2)
  %or3 = or i32 %res3, 12345678
  call void asm sideeffect "stepd $0", "h"(i32 %or3)
  ret void
}


define void @f18() {









  %res1 = call i32 asm "stepa $0", "=r"()
  %or1 = or i32 %res1, 305397760
  %res2 = call i32 asm "stepb $0, $1", "=r,r"(i32 %or1)
  %or2 = or i32 %res2, 34661
  %res3 = call i32 asm "stepc $0, $1", "=r,r"(i32 %or2)
  %or3 = or i32 %res3, 12345678
  call void asm sideeffect "stepd $0", "r"(i32 %or3)
  ret void
}


define void @f19() {









  %res1 = call i32 asm "stepa $0", "=h"()
  %xor1 = xor i32 %res1, 305397760
  %res2 = call i32 asm "stepb $0, $1", "=h,h"(i32 %xor1)
  %xor2 = xor i32 %res2, 34661
  %res3 = call i32 asm "stepc $0, $1", "=h,h"(i32 %xor2)
  %xor3 = xor i32 %res3, 12345678
  call void asm sideeffect "stepd $0", "h"(i32 %xor3)
  ret void
}


define void @f20() {









  %res1 = call i32 asm "stepa $0", "=r"()
  %xor1 = xor i32 %res1, 305397760
  %res2 = call i32 asm "stepb $0, $1", "=r,r"(i32 %xor1)
  %xor2 = xor i32 %res2, 34661
  %res3 = call i32 asm "stepc $0, $1", "=r,r"(i32 %xor2)
  %xor3 = xor i32 %res3, 12345678
  call void asm sideeffect "stepd $0", "r"(i32 %xor3)
  ret void
}


define void @f21() {









  %res1 = call i32 asm "stepa $0", "=h"()
  %and1 = and i32 %res1, 268500991
  %res2 = call i32 asm "stepb $0, $1", "=h,h"(i32 %and1)
  %and2 = and i32 %res2, -8000
  %res3 = call i32 asm "stepc $0, $1", "=h,h"(i32 %and2)
  %and3 = and i32 %res3, 12345678
  call void asm sideeffect "stepd $0", "h"(i32 %and3)
  ret void
}


define void @f22() {









  %res1 = call i32 asm "stepa $0", "=r"()
  %and1 = and i32 %res1, 268500991
  %res2 = call i32 asm "stepb $0, $1", "=r,r"(i32 %and1)
  %and2 = and i32 %res2, -8000
  %res3 = call i32 asm "stepc $0, $1", "=r,r"(i32 %and2)
  %and3 = and i32 %res3, 12345678
  call void asm sideeffect "stepd $0", "r"(i32 %and3)
  ret void
}


define i32 @f23(i32 %old) {








  %and1 = and i32 %old, 14
  %and2 = and i32 %old, 254
  %res1 = call i32 asm "stepa $1, $2, $3",
                       "=h,r,r,0"(i32 %old, i32 %and1, i32 %and2)
  %and3 = and i32 %res1, 127
  %and4 = and i32 %res1, 128
  %res2 = call i32 asm "stepb $1, $2, $3",
                       "=r,h,h,0"(i32 %res1, i32 %and3, i32 %and4)
  ret i32 %res2
}


define i32 @f24(i32 %old) {








  %shift1 = shl i32 %old, 1
  %and1 = and i32 %shift1, 14
  %shift2 = lshr i32 %old, 3
  %and2 = and i32 %shift2, 254
  %res1 = call i32 asm "stepa $1, $2, $3",
                       "=h,r,r,0"(i32 %old, i32 %and1, i32 %and2)
  %shift3 = lshr i32 %res1, 2
  %and3 = and i32 %shift3, 127
  %shift4 = shl i32 %res1, 5
  %and4 = and i32 %shift4, 128
  %res2 = call i32 asm "stepb $1, $2, $3",
                       "=r,h,h,0"(i32 %res1, i32 %and3, i32 %and4)
  ret i32 %res2
}


define i32 @f25(i32 %old) {








  %and1 = and i32 %old, 1
  %and2 = and i32 %old, 65536
  %cmp1 = icmp eq i32 %and1, 0
  %cmp2 = icmp eq i32 %and2, 0
  %sel1 = select i1 %cmp1, i32 100, i32 200
  %sel2 = select i1 %cmp2, i32 100, i32 200
  %res1 = call i32 asm "stepa $0, $1, $2",
                       "=h,r,r"(i32 %sel1, i32 %sel2)
  %and3 = and i32 %res1, 1
  %and4 = and i32 %res1, 65536
  %cmp3 = icmp eq i32 %and3, 0
  %cmp4 = icmp eq i32 %and4, 0
  %sel3 = select i1 %cmp3, i32 100, i32 200
  %sel4 = select i1 %cmp4, i32 100, i32 200
  %res2 = call i32 asm "stepb $0, $1, $2",
                       "=r,h,h"(i32 %sel3, i32 %sel4)
  ret i32 %res2
}


define void @f26() {









  %res1 = call i32 asm "stepa $0", "=h"()
  %add1 = add i32 %res1, -32768
  %res2 = call i32 asm "stepb $0, $1", "=h,h"(i32 %add1)
  %add2 = add i32 %res2, 1
  %res3 = call i32 asm "stepc $0, $1", "=h,h"(i32 %add2)
  %add3 = add i32 %res3, 32767
  call void asm sideeffect "stepd $0", "h"(i32 %add3)
  ret void
}


define void @f27() {









  %res1 = call i32 asm "stepa $0", "=r"()
  %add1 = add i32 %res1, -32768
  %res2 = call i32 asm "stepb $0, $1", "=r,r"(i32 %add1)
  %add2 = add i32 %res2, 1
  %res3 = call i32 asm "stepc $0, $1", "=r,r"(i32 %add2)
  %add3 = add i32 %res3, 32767
  call void asm sideeffect "stepd $0", "r"(i32 %add3)
  ret void
}



define i32 @f28(i32 %old) {













  %add1 = add i32 %old, 14
  %res1 = call i32 asm "stepa $1, $2",
                       "=r,r,0"(i32 %old, i32 %add1)
  %add2 = add i32 %res1, 254
  %res2 = call i32 asm "stepb $1, $2",
                       "=h,r,0"(i32 %res1, i32 %add2)
  %add3 = add i32 %res2, 127
  %res3 = call i32 asm "stepc $1, $2",
                       "=h,h,0"(i32 %res2, i32 %add3)
  %add4 = add i32 %res3, 128
  %res4 = call i32 asm "stepd $1, $2",
                       "=r,h,0"(i32 %res3, i32 %add4)
  ret i32 %res4
}


define void @f29() {









  %res1 = call i32 asm "stepa $0", "=h"()
  %add1 = add i32 %res1, -32769
  %res2 = call i32 asm "stepb $0, $1", "=h,h"(i32 %add1)
  %add2 = add i32 %res2, 32768
  %res3 = call i32 asm "stepc $0, $1", "=h,h"(i32 %add2)
  %add3 = add i32 %res3, 1000000000
  call void asm sideeffect "stepd $0", "h"(i32 %add3)
  ret void
}


define void @f30() {









  %res1 = call i32 asm "stepa $0", "=r"()
  %add1 = add i32 %res1, -32769
  %res2 = call i32 asm "stepb $0, $1", "=r,r"(i32 %add1)
  %add2 = add i32 %res2, 32768
  %res3 = call i32 asm "stepc $0, $1", "=r,r"(i32 %add2)
  %add3 = add i32 %res3, 1000000000
  call void asm sideeffect "stepd $0", "r"(i32 %add3)
  ret void
}


define i32 @f31() {






  %res1 = call i32 asm "stepa $0", "=h"()
  %cmp1 = icmp sle i32 %res1, 1000000000
  %sel1 = select i1 %cmp1, i32 0, i32 1
  %res2 = call i32 asm "stepb $0, $1", "=h,r"(i32 %sel1)
  %cmp2 = icmp ule i32 %res2, 1000000000
  %sel2 = select i1 %cmp2, i32 0, i32 1
  ret i32 %sel2
}


define i32 @f32() {






  %res1 = call i32 asm "stepa $0", "=r"()
  %cmp1 = icmp sle i32 %res1, 1000000000
  %sel1 = select i1 %cmp1, i32 0, i32 1
  %res2 = call i32 asm "stepb $0, $1", "=r,r"(i32 %sel1)
  %cmp2 = icmp ule i32 %res2, 1000000000
  %sel2 = select i1 %cmp2, i32 0, i32 1
  ret i32 %sel2
}


define void @f33(i32 *%ptr1, i32 *%ptr2) {






  %res1 = call i32 asm "stepa $0", "=h"()
  %load1 = load i32 , i32 *%ptr1
  %cmp1 = icmp sle i32 %res1, %load1
  %sel1 = select i1 %cmp1, i32 0, i32 1
  %res2 = call i32 asm "stepb $0, $1", "=h,r"(i32 %sel1)
  %load2 = load i32 , i32 *%ptr2
  %cmp2 = icmp ule i32 %res2, %load2
  %sel2 = select i1 %cmp2, i32 0, i32 1
  store i32 %sel2, i32 *%ptr1
  ret void
}


define void @f34(i32 *%ptr1, i32 *%ptr2) {






  %res1 = call i32 asm "stepa $0", "=r"()
  %load1 = load i32 , i32 *%ptr1
  %cmp1 = icmp sle i32 %res1, %load1
  %sel1 = select i1 %cmp1, i32 0, i32 1
  %res2 = call i32 asm "stepb $0, $1", "=r,r"(i32 %sel1)
  %load2 = load i32 , i32 *%ptr2
  %cmp2 = icmp ule i32 %res2, %load2
  %sel2 = select i1 %cmp2, i32 0, i32 1
  store i32 %sel2, i32 *%ptr1
  ret void
}
