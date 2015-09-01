

define float @f(float %z, double %a, float %b) {

        %tmp = call float @g(float %b)
        ret float %tmp
}

declare float @g(float)
