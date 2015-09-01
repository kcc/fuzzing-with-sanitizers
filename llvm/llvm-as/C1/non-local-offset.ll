

target datalayout = "e-p:64:64:64"









define void @yes(i1 %c, i32* %p, i32* %q) nounwind {
entry:
  store i32 0, i32* %p
  %p1 = getelementptr inbounds i32, i32* %p, i64 1
  store i32 1, i32* %p1
  br i1 %c, label %if.else, label %if.then

if.then:
  %t = load i32, i32* %p
  store i32 %t, i32* %q
  ret void

if.else:
  ret void
}













define void @watch_out_for_size_change(i1 %c, i32* %p, i32* %q) nounwind {
entry:
  store i32 0, i32* %p
  %p1 = getelementptr inbounds i32, i32* %p, i64 1
  store i32 1, i32* %p1
  br i1 %c, label %if.else, label %if.then

if.then:
  %t = load i32, i32* %p
  store i32 %t, i32* %q
  ret void

if.else:
  %pc = bitcast i32* %p to i64*
  %qc = bitcast i32* %q to i64*
  %t64 = load i64, i64* %pc
  store i64 %t64, i64* %qc
  ret void
}
