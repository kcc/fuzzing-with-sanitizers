



define x86_64_win64cc x86_fp80 @a(i64 %x) nounwind readnone {
entry:
        %conv = sitofp i64 %x to x86_fp80               
        ret x86_fp80 %conv
}
