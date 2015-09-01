


declare float @sinf(float)
declare double @sin(double)
define double @test_sin(float %F) {
        %G = call float @sinf( float %F )               
        %H = fpext float %G to double           
        %I = call double @sin( double %H )              
        ret double %I
}
