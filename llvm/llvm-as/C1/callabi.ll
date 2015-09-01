






declare void @xb(i8)

define void @cxb() {
  

  

  
  

  
  call void @xb(i8 10)
  ret void
}

declare void @xh(i16)

define void @cxh() {
  

  

  
  

  
  call void @xh(i16 10)
  ret void
}

declare void @xi(i32)

define void @cxi() {
  

  
  
  
  call void @xi(i32 10)
  ret void
}

declare void @xbb(i8, i8)

define void @cxbb() {
  

  
  

  
  
  
  

  
  
  call void @xbb(i8 76, i8 101)
  ret void
}

declare void @xhh(i16, i16)

define void @cxhh() {
  

  
  

  
  
  
  

  
  
  call void @xhh(i16 76, i16 101)
  ret void
}

declare void @xii(i32, i32)

define void @cxii() {
  

  
  
  
  
  call void @xii(i32 746, i32 892)
  ret void
}

declare void @xccc(i8, i8, i8)

define void @cxccc() {
  

  
  
  

  
  
  
  
  
  

  
  
  
  call void @xccc(i8 88, i8 44, i8 11)
  ret void
}

declare void @xhhh(i16, i16, i16)

define void @cxhhh() {
  

  
  
  

  
  
  
  
  
  

  
  
  
  call void @xhhh(i16 88, i16 44, i16 11)
  ret void
}

declare void @xiii(i32, i32, i32)

define void @cxiii() {
  

  
  
  
  
  
  call void @xiii(i32 88, i32 44, i32 11)
  ret void
}

declare void @xcccc(i8, i8, i8, i8)

define void @cxcccc() {
  

  
  
  
  

  

  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  
  call void @xcccc(i8 88, i8 44, i8 11, i8 33)
  ret void
}

declare void @xhhhh(i16, i16, i16, i16)

define void @cxhhhh() {
  

  
  
  
  

  

  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  
  call void @xhhhh(i16 88, i16 44, i16 11, i16 33)
  ret void
}

declare void @xiiii(i32, i32, i32, i32)

define void @cxiiii() {
  

  
  
  
  
  
  
  call void @xiiii(i32 167, i32 320, i32 97, i32 14)
  ret void
}

@c1 = global i8 -45, align 1
@uc1 = global i8 27, align 1
@s1 = global i16 -1789, align 2
@us1 = global i16 1256, align 2

define void @cxiiiiconv() {
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  %1 = load i8, i8* @c1, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8, i8* @uc1, align 1
  %conv1 = zext i8 %2 to i32
  %3 = load i16, i16* @s1, align 2
  %conv2 = sext i16 %3 to i32
  %4 = load i16, i16* @us1, align 2
  %conv3 = zext i16 %4 to i32
  call void @xiiii(i32 %conv, i32 %conv1, i32 %conv2, i32 %conv3)
  ret void
}

declare void @xf(float)

define void @cxf() {
  

  
  
  
  
  
  
  call void @xf(float 0x40BBC85560000000)
  ret void
}

declare void @xff(float, float)

define void @cxff() {
  

  
  
  
  
  
  
  
  
  
  call void @xff(float 0x3FF74A6CA0000000, float 0x401A2C0840000000)
  ret void
}

declare void @xfi(float, i32)

define void @cxfi() {
  

  
  
  
  
  
  
  
  call void @xfi(float 0x4013906240000000, i32 102)
  ret void
}

declare void @xfii(float, i32, i32)

define void @cxfii() {
  

  
  
  
  
  
  
  
  
  call void @xfii(float 0x405EC7EE00000000, i32 9993, i32 10922)
  ret void
}

declare void @xfiii(float, i32, i32, i32)

define void @cxfiii() {
  

  
  
  
  
  
  
  
  
  
  
  
  call void @xfiii(float 0x405C072B20000000, i32 3948, i32 89011, i32 111222)
  ret void
}

declare void @xd(double)

define void @cxd() {
  

  
  
  
  
  
  
  
  
  
  
  call void @xd(double 5.994560e+02)
  ret void
}

declare void @xdd(double, double)

define void @cxdd() {
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  call void @xdd(double 1.234980e+03, double 0x40F5B331F7CED917)
  ret void
}

declare void @xif(i32, float)

define void @cxif() {
  

  
  
  
  
  
  
  
  
  call void @xif(i32 345, float 0x407BCE5A20000000)
  ret void
}

declare void @xiff(i32, float, float)

define void @cxiff() {
  

  
  
  
  
  
  
  
  
  
  
  
  
  call void @xiff(i32 12239, float 0x408EDB3340000000, float 0x4013FFE5C0000000)
  ret void
}

declare void @xifi(i32, float, i32)

define void @cxifi() {
  

  
  
  
  
  
  
  
  
  
  call void @xifi(i32 887, float 0x402277CEE0000000, i32 888)
  ret void
}

declare void @xifif(i32, float, i32, float)

define void @cxifif() {
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  call void @xifif(i32 67774, float 0x408EE0FBE0000000,
                   i32 9991, float 0x40B15C8CC0000000)
  ret void
}

declare void @xiffi(i32, float, float, i32)

define void @cxiffi() {
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  call void @xiffi(i32 45, float 0x3FF6666660000000,
                   float 0x408F333340000000, i32 234)
  ret void
}

declare void @xifii(i32, float, i32, i32)

define void @cxifii() {
  

  
  
  
  
  
  
  
  
  
  
  
  call void @xifii(i32 12239, float 0x408EDB3340000000, i32 998877, i32 1234)
  ret void
}
