






%struct.uint8x16x4_t = type { [4 x <16 x i8>] }


define %struct.uint8x16x4_t @test1() {






















entry:
  ret %struct.uint8x16x4_t { [4 x <16 x i8>] [<16 x i8> <i8 -40, i8 -93, i8 -118, i8 -99, i8 -75, i8 -105, i8 74, i8 -110, i8 62, i8 -115, i8 -119, i8 -120, i8 34, i8 -124, i8 0, i8 -128>, <16 x i8> <i8 32, i8 124, i8 121, i8 120, i8 8, i8 117, i8 -56, i8 113, i8 -76, i8 110, i8 -53, i8 107, i8 7, i8 105, i8 103, i8 102>, <16 x i8> <i8 -24, i8 99, i8 -121, i8 97, i8 66, i8 95, i8 24, i8 93, i8 6, i8 91, i8 12, i8 89, i8 39, i8 87, i8 86, i8 85>, <16 x i8> <i8 -104, i8 83, i8 -20, i8 81, i8 81, i8 80, i8 -59, i8 78, i8 73, i8 77, i8 -37, i8 75, i8 122, i8 74, i8 37, i8 73>] }
}


define <16 x i8> @test2(<16 x i8> %arg) {
entry:



















  %add.i = add <16 x i8> %arg, <i8 -40, i8 -93, i8 -118, i8 -99, i8 -75, i8 -105, i8 74, i8 -110, i8 62, i8 -115, i8 -119, i8 -120, i8 34, i8 -124, i8 0, i8 -128>
  %mul.i = mul <16 x i8> %add.i, <i8 -40, i8 -93, i8 -118, i8 -99, i8 -75, i8 -105, i8 74, i8 -110, i8 62, i8 -115, i8 -119, i8 -120, i8 34, i8 -124, i8 0, i8 -128>
  %add.i9 = add <16 x i8> %add.i, %mul.i
  ret <16 x i8> %add.i9
}



define <16 x i8> @test3(<16 x i8> %arg, i32 %path) {














entry:
  %add.i = add <16 x i8> %arg, <i8 -40, i8 -93, i8 -118, i8 -99, i8 -75, i8 -105, i8 74, i8 -110, i8 62, i8 -115, i8 -119, i8 -120, i8 34, i8 -124, i8 0, i8 -128>
  %tobool = icmp eq i32 %path, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          
  %mul.i13 = mul <16 x i8> %add.i, <i8 -40, i8 -93, i8 -118, i8 -99, i8 -75, i8 -105, i8 74, i8 -110, i8 62, i8 -115, i8 -119, i8 -120, i8 34, i8 -124, i8 0, i8 -128>
  br label %if.end

if.else:                                          
  %mul.i = mul <16 x i8> %add.i, <i8 -24, i8 99, i8 -121, i8 97, i8 66, i8 95, i8 24, i8 93, i8 6, i8 91, i8 12, i8 89, i8 39, i8 87, i8 86, i8 85>
  br label %if.end

if.end:                                           
  %ret2.0 = phi <16 x i8> [ %mul.i13, %if.then ], [ %mul.i, %if.else ]
  %add.i12 = add <16 x i8> %add.i, %ret2.0
  ret <16 x i8> %add.i12
}



define <16 x i8> @test4(<16 x i8> %arg, i32 %path) {












entry:
  %add.i = add <16 x i8> %arg, <i8 -40, i8 -93, i8 -118, i8 -99, i8 -75, i8 -105, i8 74, i8 -110, i8 62, i8 -115, i8 -119, i8 -120, i8 34, i8 -124, i8 0, i8 -128>
  %tobool = icmp eq i32 %path, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  %mul.i = mul <16 x i8> %add.i, <i8 -40, i8 -93, i8 -118, i8 -99, i8 -75, i8 -105, i8 74, i8 -110, i8 62, i8 -115, i8 -119, i8 -120, i8 34, i8 -124, i8 0, i8 -128>
  br label %if.end

if.end:                                           
  %ret.0 = phi <16 x i8> [ %mul.i, %if.then ], [ %add.i, %entry ]
  ret <16 x i8> %ret.0
}



define <16 x i8> @test5(<16 x i8> %arg, i32 %path) {











entry:
  %tobool = icmp eq i32 %path, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  %add.i = add <16 x i8> %arg, <i8 -40, i8 -93, i8 -118, i8 -99, i8 -75, i8 -105, i8 74, i8 -110, i8 62, i8 -115, i8 -119, i8 -120, i8 34, i8 -124, i8 0, i8 -128>
  %mul.i26 = mul <16 x i8> %add.i, <i8 -40, i8 -93, i8 -118, i8 -99, i8 -75, i8 -105, i8 74, i8 -110, i8 62, i8 -115, i8 -119, i8 -120, i8 34, i8 -124, i8 0, i8 -128>
  br label %if.end

if.end:                                           
  %ret.0 = phi <16 x i8> [ %mul.i26, %if.then ], [ <i8 -40, i8 -93, i8 -118, i8 -99, i8 -75, i8 -105, i8 74, i8 -110, i8 62, i8 -115, i8 -119, i8 -120, i8 34, i8 -124, i8 0, i8 -128>, %entry ]
  %mul.i25 = mul <16 x i8> %ret.0, %ret.0
  %mul.i24 = mul <16 x i8> %mul.i25, %mul.i25
  %mul.i23 = mul <16 x i8> %mul.i24, %mul.i24
  %mul.i = mul <16 x i8> %mul.i23, %mul.i23
  ret <16 x i8> %mul.i
}

define void @accessBig(i64* %storage) {



  %addr = bitcast i64* %storage to <1 x i80>*
  store <1 x i80> <i80 483673642326615442599424>, <1 x i80>* %addr
  ret void
}

define void @asmStatement() {



  call void asm sideeffect "bfxil w0, w0, $0, $1", "i,i"(i32 28, i32 4)
  ret void
}

