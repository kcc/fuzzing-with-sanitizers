
define i1 @cmp_with_range(i8*, i8*) {
  %v1 = load i8, i8* %0, !range !0
  %v2 = load i8, i8* %1, !range !0
  %out = icmp eq i8 %v1, %v2
  ret i1 %out
}

define i1 @cmp_no_range(i8*, i8*) {





  %v1 = load i8, i8* %0
  %v2 = load i8, i8* %1
  %out = icmp eq i8 %v1, %v2
  ret i1 %out
}

define i1 @cmp_different_range(i8*, i8*) {





  %v1 = load i8, i8* %0, !range !1
  %v2 = load i8, i8* %1, !range !1
  %out = icmp eq i8 %v1, %v2
  ret i1 %out
}

define i1 @cmp_with_same_range(i8*, i8*) {


  %v1 = load i8, i8* %0, !range !0
  %v2 = load i8, i8* %1, !range !0
  %out = icmp eq i8 %v1, %v2
  ret i1 %out
}

!0 = !{i8 0, i8 2}
!1 = !{i8 5, i8 7}
