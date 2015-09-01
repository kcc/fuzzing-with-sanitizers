

%struct.X = type { i8, i8, [2 x i8] }
%struct.Y = type { i32, i8 }
%struct.Z = type { i8, i8, [2 x i8], i16 }
%struct.A = type { i64, i8 }

define void @foo(%struct.X* nocapture %x, %struct.Y* nocapture %y) nounwind optsize ssp {





  %tmp = bitcast %struct.X* %x to i32*
  %tmp1 = load i32, i32* %tmp, align 4
  %b = getelementptr inbounds %struct.Y, %struct.Y* %y, i64 0, i32 1
  %bf.clear = lshr i32 %tmp1, 3
  %bf.clear.lobit = and i32 %bf.clear, 1
  %frombool = trunc i32 %bf.clear.lobit to i8
  store i8 %frombool, i8* %b, align 1
  ret void
}

define i32 @baz(i64 %cav1.coerce) nounwind {


  %tmp = trunc i64 %cav1.coerce to i32
  %tmp1 = shl i32 %tmp, 28
  %bf.val.sext = ashr exact i32 %tmp1, 28
  ret i32 %bf.val.sext
}

define i32 @bar(i64 %cav1.coerce) nounwind {


  %tmp = trunc i64 %cav1.coerce to i32
  %cav1.sroa.0.1.insert = shl i32 %tmp, 22
  %tmp1 = ashr i32 %cav1.sroa.0.1.insert, 26
  ret i32 %tmp1
}

define void @fct1(%struct.Z* nocapture %x, %struct.A* nocapture %y) nounwind optsize ssp {





  %tmp = bitcast %struct.Z* %x to i64*
  %tmp1 = load i64, i64* %tmp, align 4
  %b = getelementptr inbounds %struct.A, %struct.A* %y, i64 0, i32 0
  %bf.clear = lshr i64 %tmp1, 3
  %bf.clear.lobit = and i64 %bf.clear, 1
  store i64 %bf.clear.lobit, i64* %b, align 8
  ret void
}

define i64 @fct2(i64 %cav1.coerce) nounwind {


  %tmp = shl i64 %cav1.coerce, 28
  %bf.val.sext = ashr exact i64 %tmp, 28
  ret i64 %bf.val.sext
}

define i64 @fct3(i64 %cav1.coerce) nounwind {


  %cav1.sroa.0.1.insert = shl i64 %cav1.coerce, 22
  %tmp1 = ashr i64 %cav1.sroa.0.1.insert, 26
  ret i64 %tmp1
}

define void @fct4(i64* nocapture %y, i64 %x) nounwind optsize inlinehint ssp {
entry:





  %0 = load i64, i64* %y, align 8
  %and = and i64 %0, -16777216
  %shr = lshr i64 %x, 16
  %and1 = and i64 %shr, 16777215
  %or = or i64 %and, %and1
  store i64 %or, i64* %y, align 8
  ret void
}

define void @fct5(i32* nocapture %y, i32 %x) nounwind optsize inlinehint ssp {
entry:





  %0 = load i32, i32* %y, align 8
  %and = and i32 %0, -8
  %shr = lshr i32 %x, 16
  %and1 = and i32 %shr, 7
  %or = or i32 %and, %and1
  store i32 %or, i32* %y, align 8
  ret void
}


define void @fct6(i32* nocapture %y, i32 %x) nounwind optsize inlinehint ssp {
entry:







  %0 = load i32, i32* %y, align 8
  %and = and i32 %0, -8
  %shr = lshr i32 %x, 16
  %and1 = and i32 %shr, 7
  %or = or i32 %and, %and1
  %shr1 = lshr i32 %or, 2
  store i32 %shr1, i32* %y, align 8
  ret void
}



define void @fct7(i32* nocapture %y, i32 %x) nounwind optsize inlinehint ssp {
entry:







  %0 = load i32, i32* %y, align 8
  %and = and i32 %0, -8
  %shr = lshr i32 %x, 16
  %and1 = and i32 %shr, 7
  %or = or i32 %and, %and1
  %shl = shl i32 %or, 2
  store i32 %shl, i32* %y, align 8
  ret void
}




define void @fct8(i64* nocapture %y, i64 %x) nounwind optsize inlinehint ssp {
entry:







  %0 = load i64, i64* %y, align 8
  %and = and i64 %0, -8
  %shr = lshr i64 %x, 16
  %and1 = and i64 %shr, 7
  %or = or i64 %and, %and1
  %shr1 = lshr i64 %or, 2
  store i64 %shr1, i64* %y, align 8
  ret void
}




define void @fct9(i64* nocapture %y, i64 %x) nounwind optsize inlinehint ssp {
entry:







  %0 = load i64, i64* %y, align 8
  %and = and i64 %0, -8
  %shr = lshr i64 %x, 16
  %and1 = and i64 %shr, 7
  %or = or i64 %and, %and1
  %shl = shl i64 %or, 2
  store i64 %shl, i64* %y, align 8
  ret void
}



define void @fct10(i32* nocapture %y, i32 %x) nounwind optsize inlinehint ssp {
entry:







  %0 = load i32, i32* %y, align 8
  %and = and i32 %0, -8
  %and1 = and i32 %x, 7
  %or = or i32 %and, %and1
  %shl = shl i32 %or, 2
  store i32 %shl, i32* %y, align 8
  ret void
}



define void @fct11(i64* nocapture %y, i64 %x) nounwind optsize inlinehint ssp {
entry:







  %0 = load i64, i64* %y, align 8
  %and = and i64 %0, -8
  %and1 = and i64 %x, 7
  %or = or i64 %and, %and1
  %shl = shl i64 %or, 2
  store i64 %shl, i64* %y, align 8
  ret void
}

define zeroext i1 @fct12bis(i32 %tmp2) unnamed_addr nounwind ssp align 2 {



  %and.i.i = and i32 %tmp2, 2048
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  ret i1 %tobool.i.i
}



define void @fct12(i32* nocapture %y, i32 %x) nounwind optsize inlinehint ssp {
entry:







  %0 = load i32, i32* %y, align 8
  %and = and i32 %0, -8
  %shr = lshr i32 %x, 16
  %and1 = and i32 %shr, 7
  %or = or i32 %and, %and1
  %shl = shl i32 %or, 2
  %shr2 = lshr i32 %shl, 4
  store i32 %shr2, i32* %y, align 8
  ret void
}




define void @fct13(i64* nocapture %y, i64 %x) nounwind optsize inlinehint ssp {
entry:







  %0 = load i64, i64* %y, align 8
  %and = and i64 %0, -8
  %shr = lshr i64 %x, 16
  %and1 = and i64 %shr, 7
  %or = or i64 %and, %and1
  %shl = shl i64 %or, 2
  %shr2 = lshr i64 %shl, 4
  store i64 %shr2, i64* %y, align 8
  ret void
}




define void @fct14(i32* nocapture %y, i32 %x, i32 %x1) nounwind optsize inlinehint ssp {
entry:










  %0 = load i32, i32* %y, align 8
  %and = and i32 %0, -256
  %shr = lshr i32 %x, 16
  %and1 = and i32 %shr, 255
  %or = or i32 %and, %and1
  %shl = lshr i32 %or, 4
  %and2 = and i32 %shl, -8
  %shr1 = lshr i32 %x1, 5
  %and3 = and i32 %shr1, 7
  %or1 = or i32 %and2, %and3
  %shl1 = shl i32 %or1, 2
  store i32 %shl1, i32* %y, align 8
  ret void
}




define void @fct15(i64* nocapture %y, i64 %x, i64 %x1) nounwind optsize inlinehint ssp {
entry:










  %0 = load i64, i64* %y, align 8
  %and = and i64 %0, -256
  %shr = lshr i64 %x, 16
  %and1 = and i64 %shr, 255
  %or = or i64 %and, %and1
  %shl = lshr i64 %or, 4
  %and2 = and i64 %shl, -8
  %shr1 = lshr i64 %x1, 5
  %and3 = and i64 %shr1, 7
  %or1 = or i64 %and2, %and3
  %shl1 = shl i64 %or1, 2
  store i64 %shl1, i64* %y, align 8
  ret void
}



define void @fct16(i32* nocapture %y, i32 %x) nounwind optsize inlinehint ssp {
entry:












  %0 = load i32, i32* %y, align 8
  %and = and i32 %0, 1737056
  %shr = lshr i32 %x, 16
  %and1 = and i32 %shr, 7
  %or = or i32 %and, %and1
  %shl = shl i32 %or, 2
  %shr2 = lshr i32 %shl, 4
  store i32 %shr2, i32* %y, align 8
  ret void
}





define void @fct17(i64* nocapture %y, i64 %x) nounwind optsize inlinehint ssp {
entry:












  %0 = load i64, i64* %y, align 8
  %and = and i64 %0, 1737056
  %shr = lshr i64 %x, 16
  %and1 = and i64 %shr, 7
  %or = or i64 %and, %and1
  %shl = shl i64 %or, 2
  %shr2 = lshr i64 %shl, 4
  store i64 %shr2, i64* %y, align 8
  ret void
}

define i64 @fct18(i32 %xor72) nounwind ssp {


  %shr81 = lshr i32 %xor72, 9
  %conv82 = zext i32 %shr81 to i64
  %result = and i64 %conv82, 255
  ret i64 %result
}


@first_ones = external global [65536 x i8]


define i32 @fct19(i64 %arg1) nounwind readonly ssp  {

entry:
  %x.sroa.1.0.extract.shift = lshr i64 %arg1, 16
  %x.sroa.1.0.extract.trunc = trunc i64 %x.sroa.1.0.extract.shift to i16
  %x.sroa.3.0.extract.shift = lshr i64 %arg1, 32
  %x.sroa.5.0.extract.shift = lshr i64 %arg1, 48
  %tobool = icmp eq i64 %x.sroa.5.0.extract.shift, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  %arrayidx3 = getelementptr inbounds [65536 x i8], [65536 x i8]* @first_ones, i64 0, i64 %x.sroa.5.0.extract.shift
  %0 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %0 to i32
  br label %return


if.end:                                           


  %x.sroa.3.0.extract.trunc = trunc i64 %x.sroa.3.0.extract.shift to i16
  %tobool6 = icmp eq i16 %x.sroa.3.0.extract.trunc, 0

  br i1 %tobool6, label %if.end13, label %if.then7


if.then7:                                         





  %idxprom10 = and i64 %x.sroa.3.0.extract.shift, 65535
  %arrayidx11 = getelementptr inbounds [65536 x i8], [65536 x i8]* @first_ones, i64 0, i64 %idxprom10
  %1 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %1 to i32
  %add = add nsw i32 %conv12, 16
  br label %return


if.end13:                                         



  %tobool16 = icmp eq i16 %x.sroa.1.0.extract.trunc, 0

  br i1 %tobool16, label %return, label %if.then17


if.then17:                                        





  %idxprom20 = and i64 %x.sroa.1.0.extract.shift, 65535
  %arrayidx21 = getelementptr inbounds [65536 x i8], [65536 x i8]* @first_ones, i64 0, i64 %idxprom20
  %2 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %2 to i32
  %add23 = add nsw i32 %conv22, 32
  br label %return

return:                                           

  %retval.0 = phi i32 [ %conv, %if.then ], [ %add, %if.then7 ], [ %add23, %if.then17 ], [ 64, %if.end13 ]
  ret i32 %retval.0
}









define i80 @fct20(i128 %a, i128 %b) {
entry:
  %shr = lshr i128 %a, 18
  %conv = trunc i128 %shr to i80
  %tobool = icmp eq i128 %b, 0
  br i1 %tobool, label %then, label %end
then:                     
  %and = and i128 %shr, 483673642326615442599424
  %conv2 = trunc i128 %and to i80
  br label %end
end:
  %conv3 = phi i80 [%conv, %entry], [%conv2, %then] 
  ret i80 %conv3
}




@arr = external global [8 x [64 x i64]]
define i64 @fct21(i64 %x) {
entry:
  %shr = lshr i64 %x, 4
  %and = and i64 %shr, 15
  %arrayidx = getelementptr inbounds [8 x [64 x i64]], [8 x [64 x i64]]* @arr, i64 0, i64 0, i64 %and
  %0 = load i64, i64* %arrayidx, align 8
  ret i64 %0
}

define i16 @test_ignored_rightbits(i32 %dst, i32 %in) {


  %positioned_field = shl i32 %in, 3
  %positioned_masked_field = and i32 %positioned_field, 120
  %masked_dst = and i32 %dst, 7
  %insertion = or i32 %masked_dst, %positioned_masked_field


  %shl16 = shl i32 %insertion, 8
  %or18 = or i32 %shl16, %insertion
  %conv19 = trunc i32 %or18 to i16


  ret i16 %conv19
}
