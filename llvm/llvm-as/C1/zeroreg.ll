







@g1 = external global i32

define i32 @sel_icmp_nez_i32_z0(i32 signext %s) nounwind readonly {
entry:














  %tobool = icmp ne i32 %s, 0
  %0 = load i32, i32* @g1, align 4
  %cond = select i1 %tobool, i32 0, i32 %0
  ret i32 %cond
}

define i32 @sel_icmp_nez_i32_z1(i32 signext %s) nounwind readonly {
entry:














  %tobool = icmp ne i32 %s, 0
  %0 = load i32, i32* @g1, align 4
  %cond = select i1 %tobool, i32 %0, i32 0
  ret i32 %cond
}

@g2 = external global i64

define i64 @sel_icmp_nez_i64_z0(i64 %s) nounwind readonly {
entry:



















  %tobool = icmp ne i64 %s, 0
  %0 = load i64, i64* @g2, align 4
  %cond = select i1 %tobool, i64 0, i64 %0
  ret i64 %cond
}

define i64 @sel_icmp_nez_i64_z1(i64 %s) nounwind readonly {
entry:



















  %tobool = icmp ne i64 %s, 0
  %0 = load i64, i64* @g2, align 4
  %cond = select i1 %tobool, i64 %0, i64 0
  ret i64 %cond
}
