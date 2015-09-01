



declare void @foo(float *)


define void @f1(float *%ptr, float %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store float %res, float *%ptr
  ret void
}


define void @f2(float *%ptr, float %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %alt, float %orig
  store float %res, float *%ptr
  ret void
}


define void @f3(float *%base, float %alt, i32 %limit) {







  %ptr = getelementptr float, float *%base, i64 1023
  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store float %res, float *%ptr
  ret void
}


define void @f4(float *%base, float %alt, i32 %limit) {







  %ptr = getelementptr float, float *%base, i64 1024
  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store float %res, float *%ptr
  ret void
}


define void @f5(float *%base, float %alt, i32 %limit) {







  %ptr = getelementptr float, float *%base, i64 131071
  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store float %res, float *%ptr
  ret void
}



define void @f6(float *%base, float %alt, i32 %limit) {








  %ptr = getelementptr float, float *%base, i64 131072
  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store float %res, float *%ptr
  ret void
}


define void @f7(float *%base, float %alt, i32 %limit) {







  %ptr = getelementptr float, float *%base, i64 -131072
  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store float %res, float *%ptr
  ret void
}



define void @f8(float *%base, float %alt, i32 %limit) {








  %ptr = getelementptr float, float *%base, i64 -131073
  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store float %res, float *%ptr
  ret void
}


define void @f9(i64 %base, i64 %index, float %alt, i32 %limit) {







  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to float *
  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store float %res, float *%ptr
  ret void
}


define void @f10(float *%ptr, float %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load volatile float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store float %res, float *%ptr
  ret void
}


define void @f11(float *%ptr, float %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store volatile float %res, float *%ptr
  ret void
}


define void @f12(float %alt, i32 %limit) {









  %ptr = alloca float
  call void @foo(float *%ptr)
  %cond = icmp ult i32 %limit, 420
  %orig = load float , float *%ptr
  %res = select i1 %cond, float %orig, float %alt
  store float %res, float *%ptr
  call void @foo(float *%ptr)
  ret void
}
