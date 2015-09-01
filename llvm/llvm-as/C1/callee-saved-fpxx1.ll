








define void @fpu_clobber() nounwind {
entry:
    call void asm "# Clobber", "~{$f21}"()
    ret void
}










