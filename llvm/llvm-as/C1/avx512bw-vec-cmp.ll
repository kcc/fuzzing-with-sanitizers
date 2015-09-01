





define <64 x i8> @test1(<64 x i8> %x, <64 x i8> %y) nounwind {
  %mask = icmp eq <64 x i8> %x, %y
  %max = select <64 x i1> %mask, <64 x i8> %x, <64 x i8> %y
  ret <64 x i8> %max
}





define <64 x i8> @test2(<64 x i8> %x, <64 x i8> %y, <64 x i8> %x1) nounwind {
  %mask = icmp sgt <64 x i8> %x, %y
  %max = select <64 x i1> %mask, <64 x i8> %x1, <64 x i8> %y
  ret <64 x i8> %max
}





define <32 x i16> @test3(<32 x i16> %x, <32 x i16> %y, <32 x i16> %x1) nounwind {
  %mask = icmp sge <32 x i16> %x, %y
  %max = select <32 x i1> %mask, <32 x i16> %x1, <32 x i16> %y
  ret <32 x i16> %max
}





define <64 x i8> @test4(<64 x i8> %x, <64 x i8> %y, <64 x i8> %x1) nounwind {
  %mask = icmp ugt <64 x i8> %x, %y
  %max = select <64 x i1> %mask, <64 x i8> %x1, <64 x i8> %y
  ret <64 x i8> %max
}





define <32 x i16> @test5(<32 x i16> %x, <32 x i16> %x1, <32 x i16>* %yp) nounwind {
  %y = load <32 x i16>, <32 x i16>* %yp, align 4
  %mask = icmp eq <32 x i16> %x, %y
  %max = select <32 x i1> %mask, <32 x i16> %x, <32 x i16> %x1
  ret <32 x i16> %max
}





define <32 x i16> @test6(<32 x i16> %x, <32 x i16> %x1, <32 x i16>* %y.ptr) nounwind {
  %y = load <32 x i16>, <32 x i16>* %y.ptr, align 4
  %mask = icmp sgt <32 x i16> %x, %y
  %max = select <32 x i1> %mask, <32 x i16> %x, <32 x i16> %x1
  ret <32 x i16> %max
}





define <32 x i16> @test7(<32 x i16> %x, <32 x i16> %x1, <32 x i16>* %y.ptr) nounwind {
  %y = load <32 x i16>, <32 x i16>* %y.ptr, align 4
  %mask = icmp sle <32 x i16> %x, %y
  %max = select <32 x i1> %mask, <32 x i16> %x, <32 x i16> %x1
  ret <32 x i16> %max
}





define <32 x i16> @test8(<32 x i16> %x, <32 x i16> %x1, <32 x i16>* %y.ptr) nounwind {
  %y = load <32 x i16>, <32 x i16>* %y.ptr, align 4
  %mask = icmp ule <32 x i16> %x, %y
  %max = select <32 x i1> %mask, <32 x i16> %x, <32 x i16> %x1
  ret <32 x i16> %max
}





define <32 x i16> @test9(<32 x i16> %x, <32 x i16> %y, <32 x i16> %x1, <32 x i16> %y1) nounwind {
  %mask1 = icmp eq <32 x i16> %x1, %y1
  %mask0 = icmp eq <32 x i16> %x, %y
  %mask = select <32 x i1> %mask0, <32 x i1> %mask1, <32 x i1> zeroinitializer
  %max = select <32 x i1> %mask, <32 x i16> %x, <32 x i16> %y
  ret <32 x i16> %max
}





define <64 x i8> @test10(<64 x i8> %x, <64 x i8> %y, <64 x i8> %x1, <64 x i8> %y1) nounwind {
  %mask1 = icmp sge <64 x i8> %x1, %y1
  %mask0 = icmp sle <64 x i8> %x, %y
  %mask = select <64 x i1> %mask0, <64 x i1> %mask1, <64 x i1> zeroinitializer
  %max = select <64 x i1> %mask, <64 x i8> %x, <64 x i8> %x1
  ret <64 x i8> %max
}





define <64 x i8> @test11(<64 x i8> %x, <64 x i8>* %y.ptr, <64 x i8> %x1, <64 x i8> %y1) nounwind {
  %mask1 = icmp sgt <64 x i8> %x1, %y1
  %y = load <64 x i8>, <64 x i8>* %y.ptr, align 4
  %mask0 = icmp sgt <64 x i8> %x, %y
  %mask = select <64 x i1> %mask0, <64 x i1> %mask1, <64 x i1> zeroinitializer
  %max = select <64 x i1> %mask, <64 x i8> %x, <64 x i8> %x1
  ret <64 x i8> %max
}





define <32 x i16> @test12(<32 x i16> %x, <32 x i16>* %y.ptr, <32 x i16> %x1, <32 x i16> %y1) nounwind {
  %mask1 = icmp sge <32 x i16> %x1, %y1
  %y = load <32 x i16>, <32 x i16>* %y.ptr, align 4
  %mask0 = icmp ule <32 x i16> %x, %y
  %mask = select <32 x i1> %mask0, <32 x i1> %mask1, <32 x i1> zeroinitializer
  %max = select <32 x i1> %mask, <32 x i16> %x, <32 x i16> %x1
  ret <32 x i16> %max
}
