









define void @g64xh(i64 inreg %x) nounwind {
  %t = and i64 %x, 2048
  %s = icmp eq i64 %t, 0
  br i1 %s, label %yes, label %no

yes:
  call void @bar()
  ret void
no:
  ret void
}






define void @g64xl(i64 inreg %x) nounwind {
  %t = and i64 %x, 8
  %s = icmp eq i64 %t, 0
  br i1 %s, label %yes, label %no

yes:
  call void @bar()
  ret void
no:
  ret void
}






define void @g32xh(i32 inreg %x) nounwind {
  %t = and i32 %x, 2048
  %s = icmp eq i32 %t, 0
  br i1 %s, label %yes, label %no

yes:
  call void @bar()
  ret void
no:
  ret void
}






define void @g32xl(i32 inreg %x) nounwind {
  %t = and i32 %x, 8
  %s = icmp eq i32 %t, 0
  br i1 %s, label %yes, label %no

yes:
  call void @bar()
  ret void
no:
  ret void
}






define void @g16xh(i16 inreg %x) nounwind {
  %t = and i16 %x, 2048
  %s = icmp eq i16 %t, 0
  br i1 %s, label %yes, label %no

yes:
  call void @bar()
  ret void
no:
  ret void
}






define void @g16xl(i16 inreg %x) nounwind {
  %t = and i16 %x, 8
  %s = icmp eq i16 %t, 0
  br i1 %s, label %yes, label %no

yes:
  call void @bar()
  ret void
no:
  ret void
}






define void @g64x16(i64 inreg %x) nounwind {
  %t = and i64 %x, 32896
  %s = icmp eq i64 %t, 0
  br i1 %s, label %yes, label %no

yes:
  call void @bar()
  ret void
no:
  ret void
}






define void @g32x16(i32 inreg %x) nounwind {
  %t = and i32 %x, 32896
  %s = icmp eq i32 %t, 0
  br i1 %s, label %yes, label %no

yes:
  call void @bar()
  ret void
no:
  ret void
}






define void @g64x32(i64 inreg %x) nounwind {
  %t = and i64 %x, 268468352
  %s = icmp eq i64 %t, 0
  br i1 %s, label %yes, label %no

yes:
  call void @bar()
  ret void
no:
  ret void
}

declare void @bar()
