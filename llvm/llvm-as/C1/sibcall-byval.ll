


%struct.p = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define i32 @f(%struct.p* byval align 4 %q) nounwind ssp {
entry:





  %call = tail call i32 @g(%struct.p* byval align 4 %q) nounwind
  ret i32 %call
}

declare i32 @g(%struct.p* byval align 4)

define i32 @h(%struct.p* byval align 4 %q, i32 %r) nounwind ssp {
entry:






  %call = tail call i32 @i(%struct.p* byval align 4 %q, i32 %r) nounwind
  ret i32 %call
}

declare i32 @i(%struct.p* byval align 4, i32)
