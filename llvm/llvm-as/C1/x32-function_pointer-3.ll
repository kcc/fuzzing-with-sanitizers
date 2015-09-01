




















define void @bar(i64 %h.coerce) nounwind {
entry:
  %h.sroa.0.0.extract.trunc = trunc i64 %h.coerce to i32
  %0 = inttoptr i32 %h.sroa.0.0.extract.trunc to void ()*

  tail call void %0() nounwind

  ret void
}
