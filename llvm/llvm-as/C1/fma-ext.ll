


define double @test_FMADD_EXT1(float %A, float %B, double %C) {
    %D = fmul float %A, %B          
    %E = fpext float %D to double   
    %F = fadd double %E, %C         
    ret double %F



                                



}

define double @test_FMADD_EXT2(float %A, float %B, double %C) {
    %D = fmul float %A, %B          
    %E = fpext float %D to double   
    %F = fadd double %C, %E         
    ret double %F



                                



}

define double @test_FMSUB_EXT1(float %A, float %B, double %C) {
    %D = fmul float %A, %B          
    %E = fpext float %D to double   
    %F = fsub double %E, %C         
    ret double %F



                                



}

define double @test_FMSUB_EXT2(float %A, float %B, double %C) {
    %D = fmul float %A, %B          
    %E = fpext float %D to double   
    %F = fsub double %C, %E         
    ret double %F



                                




}

define double @test_FMSUB_EXT3(float %A, float %B, double %C) {
    %D = fmul float %A, %B          
    %E = fsub float -0.000000e+00, %D 
    %F = fpext float %E to double   
    %G = fsub double %F, %C         
    ret double %G




                                




}
    
define double @test_FMSUB_EXT4(float %A, float %B, double %C) {
    %D = fmul float %A, %B          
    %E = fpext float %D to double   
    %F = fsub double -0.000000e+00, %E 
    %G = fsub double %F, %C         
    ret double %G




                                




}  
