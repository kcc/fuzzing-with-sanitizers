


define void @inf_loop_irreducible_cfg() nounwind {
entry:
  br label %block

block:
  br label %block
}
