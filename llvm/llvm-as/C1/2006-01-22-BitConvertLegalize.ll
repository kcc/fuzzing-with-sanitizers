

define void @execute_list() {
        %tmp.33.i = fdiv float 0.000000e+00, 0.000000e+00               
        %tmp.37.i = fmul float 0.000000e+00, %tmp.33.i           
        %tmp.42.i = fadd float %tmp.37.i, 0.000000e+00           
        call void @gl_EvalCoord1f( float %tmp.42.i )
        ret void
}

declare void @gl_EvalCoord1f(float)

