



define x86_fastcallcc void @func(i64 inreg %X, i64 %Y, float %G, double %Z) nounwind {
        ret void

}

define x86_thiscallcc void @func2(i32 inreg %X, i64 %Y, float %G, double %Z) nounwind {
        ret void

}
