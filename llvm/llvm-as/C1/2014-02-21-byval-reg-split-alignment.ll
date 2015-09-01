

%struct4bytes = type { i32 }
%struct8bytes8align = type { i64 }
%struct12bytes = type { i32, i32, i32 }

declare void @useIntPtr(%struct4bytes*)
declare void @useLong(i64)
declare void @usePtr(%struct8bytes8align*)




define void @foo1(i32 %a, %struct12bytes* byval %b, i64 %c) {












  call void @useLong(i64 %c)
  ret void
}



define void @foo2(i32 %a, %struct8bytes8align* byval %b) {










  call void @usePtr(%struct8bytes8align* %b)
  ret void
}



define void @foo3(%struct8bytes8align* byval %a, %struct4bytes* byval %b) {










  call void @usePtr(%struct8bytes8align* %a)
  ret void
}



define void @foo4(%struct4bytes* byval %a, %struct8bytes8align* byval %b) {












  call void @usePtr(%struct8bytes8align* %b)
  ret void
}




define void @foo5(%struct8bytes8align* byval %a, %struct4bytes* byval %b, %struct4bytes* byval %c) {











  call void @usePtr(%struct8bytes8align* %a)
  ret void
}



define void @foo6(i32 %a, i32 %b, i32 %c, %struct8bytes8align* byval %d) {







  call void @usePtr(%struct8bytes8align* %d)
  ret void
}
