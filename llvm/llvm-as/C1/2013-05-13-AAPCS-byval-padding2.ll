


%struct4bytes = type { i32 }
%struct20bytes = type { i32, i32, i32, i32, i32 }

define void @foo(%struct4bytes* byval %p0, 
                 %struct20bytes* byval %p1 
) {









  %1 = ptrtoint %struct20bytes* %p1 to i32
  tail call void @useInt(i32 %1)
  ret void
}

declare void @useInt(i32)

