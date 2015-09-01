



define <8 x i32*> @SHUFF0(<4 x i32*> %ptrv) nounwind {
entry:
  %G = shufflevector <4 x i32*> %ptrv, <4 x i32*> %ptrv, <8 x i32> <i32 2, i32 7, i32 1, i32 2, i32 4, i32 5, i32 1, i32 1>

  ret <8 x i32*> %G

}


define <4 x i32*> @SHUFF1(<4 x i32*> %ptrv) nounwind {
entry:
  %G = shufflevector <4 x i32*> %ptrv, <4 x i32*> %ptrv, <4 x i32> <i32 2, i32 7, i32 7, i32 2>

  ret <4 x i32*> %G

}


define <4 x i8*> @SHUFF3(<4 x i8*> %ptrv) nounwind {
entry:
  %G = shufflevector <4 x i8*> %ptrv, <4 x i8*> undef, <4 x i32> <i32 2, i32 7, i32 1, i32 2>

  ret <4 x i8*> %G

}


define <4 x i8*> @LOAD0(<4 x i8*>* %p) nounwind {
entry:
  %G = load <4 x i8*>, <4 x i8*>* %p

  ret <4 x i8*> %G

}


define <4 x i8*> @LOAD1(<4 x i8*>* %p) nounwind {
entry:
  %G = load <4 x i8*>, <4 x i8*>* %p



  %T = shufflevector <4 x i8*> %G, <4 x i8*> %G, <4 x i32> <i32 7, i32 1, i32 4, i32 3>
  store <4 x i8*> %T, <4 x i8*>* %p
  ret <4 x i8*> %G

}


define <4 x i8*> @LOAD2(<4 x i8*>* %p) nounwind {
entry:
  %I = alloca <4 x i8*>

  %G = load <4 x i8*>, <4 x i8*>* %p

  store <4 x i8*> %G, <4 x i8*>* %I

  %Z = load <4 x i8*>, <4 x i8*>* %I
  ret <4 x i8*> %Z


}


define <4 x i32> @INT2PTR0(<4 x i8*>* %p) nounwind {
entry:
  %G = load <4 x i8*>, <4 x i8*>* %p


  %K = ptrtoint <4 x i8*> %G to <4 x i32>

  ret <4 x i32> %K
}


define <4 x i32*> @INT2PTR1(<4 x i8>* %p) nounwind {
entry:
  %G = load <4 x i8>, <4 x i8>* %p


  %K = inttoptr <4 x i8> %G to <4 x i32*>

  ret <4 x i32*> %K
}


define <4 x i32*> @BITCAST0(<4 x i8*>* %p) nounwind {
entry:
  %G = load <4 x i8*>, <4 x i8*>* %p

  %T = bitcast <4 x i8*> %G to <4 x i32*>


  ret <4 x i32*> %T
}


define <2 x i32*> @BITCAST1(<2 x i8*>* %p) nounwind {
entry:
  %G = load <2 x i8*>, <2 x i8*>* %p


  %T = bitcast <2 x i8*> %G to <2 x i32*>

  ret <2 x i32*> %T
}


define <4 x i32> @ICMP0(<4 x i8*>* %p0, <4 x i8*>* %p1) nounwind {
entry:
  %g0 = load <4 x i8*>, <4 x i8*>* %p0
  %g1 = load <4 x i8*>, <4 x i8*>* %p1
  %k = icmp sgt <4 x i8*> %g0, %g1
  
  %j = select <4 x i1> %k, <4 x i32> <i32 0, i32 1, i32 2, i32 4>, <4 x i32> <i32 9, i32 8, i32 7, i32 6>
  ret <4 x i32> %j
  
}


define <4 x i32> @ICMP1(<4 x i8*>* %p0, <4 x i8*>* %p1) nounwind {
entry:
  %g0 = load <4 x i8*>, <4 x i8*>* %p0
  %g1 = load <4 x i8*>, <4 x i8*>* %p1
  %k = icmp eq <4 x i8*> %g0, %g1
  
  %j = select <4 x i1> %k, <4 x i32> <i32 0, i32 1, i32 2, i32 4>, <4 x i32> <i32 9, i32 8, i32 7, i32 6>
  ret <4 x i32> %j
  
}

