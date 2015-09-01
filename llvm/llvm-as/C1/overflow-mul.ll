


define i32 @pr4917_1(i32 %x, i32 %y) nounwind {

entry:
  %l = zext i32 %x to i64
  %r = zext i32 %y to i64

  %mul64 = mul i64 %l, %r

  %overflow = icmp ugt i64 %mul64, 4294967295

  %retval = zext i1 %overflow to i32
  ret i32 %retval
}


define i32 @pr4917_1a(i32 %x, i32 %y) nounwind {

entry:
  %l = zext i32 %x to i64
  %r = zext i32 %y to i64

  %mul64 = mul i64 %l, %r

  %overflow = icmp uge i64 %mul64, 4294967296

  %retval = zext i1 %overflow to i32
  ret i32 %retval
}



define i32 @pr4917_2(i32 %x, i32 %y) nounwind {

entry:
  %l = zext i32 %x to i64
  %r = zext i32 %y to i64

  %mul64 = mul i64 %l, %r

  %overflow = icmp ugt i64 %mul64, 4294967295

  %mul32 = trunc i64 %mul64 to i32

  %retval = select i1 %overflow, i32 %mul32, i32 111

  ret i32 %retval
}



define i64 @pr4917_3(i32 %x, i32 %y) nounwind {

entry:
  %l = zext i32 %x to i64
  %r = zext i32 %y to i64
  %mul64 = mul i64 %l, %r

  %overflow = icmp ugt i64 %mul64, 4294967295
  %retval = select i1 %overflow, i64 %mul64, i64 111
  ret i64 %retval
}


define i32 @pr4917_4(i32 %x, i32 %y) nounwind {

entry:
  %l = zext i32 %x to i64
  %r = zext i32 %y to i64

  %mul64 = mul i64 %l, %r

  %overflow = icmp ule i64 %mul64, 4294967295


  %retval = zext i1 %overflow to i32
  ret i32 %retval
}


define i32 @pr4917_4a(i32 %x, i32 %y) nounwind {

entry:
  %l = zext i32 %x to i64
  %r = zext i32 %y to i64

  %mul64 = mul i64 %l, %r

  %overflow = icmp ult i64 %mul64, 4294967296


  %retval = zext i1 %overflow to i32
  ret i32 %retval
}


define i32 @pr4917_5(i32 %x, i8 %y) nounwind {

entry:
  %l = zext i32 %x to i64
  %r = zext i8 %y to i64

  %mul64 = mul i64 %l, %r
  %overflow = icmp ugt i64 %mul64, 4294967295
  %mul32 = trunc i64 %mul64 to i32



  %retval = select i1 %overflow, i32 %mul32, i32 111

  ret i32 %retval
}


define i32 @pr4918_1(i32 %x, i32 %y) nounwind {

entry:
  %l = zext i32 %x to i64
  %r = zext i32 %y to i64
  %mul64 = mul i64 %l, %r

  %part32 = trunc i64 %mul64 to i32
  %part64 = zext i32 %part32 to i64
  %overflow = icmp ne i64 %mul64, %part64

  %retval = zext i1 %overflow to i32
  ret i32 %retval
}


define i32 @pr4918_2(i32 %x, i32 %y) nounwind {

entry:
  %l = zext i32 %x to i64
  %r = zext i32 %y to i64
  %mul64 = mul i64 %l, %r

  %part32 = trunc i64 %mul64 to i32
  %part64 = zext i32 %part32 to i64
  %overflow = icmp eq i64 %mul64, %part64

  %retval = zext i1 %overflow to i32

  ret i32 %retval
}


define i32 @pr4918_3(i32 %x, i32 %y) nounwind {

entry:
  %l = zext i32 %x to i64
  %r = zext i32 %y to i64
  %mul64 = mul i64 %l, %r

  %part32 = trunc i64 %mul64 to i32
  %part64 = zext i32 %part32 to i64
  %overflow = icmp ne i64 %part64, %mul64

  %retval = zext i1 %overflow to i32
  ret i32 %retval
}

define <4 x i32> @pr20113(<4 x i16> %a, <4 x i16> %b) {



  %vmovl.i.i726 = zext <4 x i16> %a to <4 x i32>
  %vmovl.i.i712 = zext <4 x i16> %b to <4 x i32>
  %mul.i703 = mul <4 x i32> %vmovl.i.i712, %vmovl.i.i726
  %tmp = icmp sge <4 x i32> %mul.i703, zeroinitializer
  %vcgez.i = sext <4 x i1> %tmp to <4 x i32>
  ret <4 x i32> %vcgez.i
}



target datalayout = "i32:8:8"








@pr21445_data = external global i32
define i1 @pr21445(i8 %a) {




  %ext = zext i8 %a to i32
  %mul = mul i32 %ext, zext (i8 ptrtoint (i32* @pr21445_data to i8) to i32)
  %and = and i32 %mul, 255
  %cmp = icmp ne i32 %mul, %and
  ret i1 %cmp
}
