




define void @f() nounwind ssp {
  %1 = call { <2 x i64>, <2 x i64>, <2 x i64>, <2 x i64> } asm "vldm $4, { ${0:q}, ${1:q}, ${2:q}, ${3:q} }", "=r,=r,=r,=r,r"(i64* undef) nounwind, !srcloc !0
  ret void
}

!0 = !{i32 318437}
