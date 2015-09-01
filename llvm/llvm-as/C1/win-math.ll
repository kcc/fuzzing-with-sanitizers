








declare double @acos(double %x)
define float @float_acos(float %x) nounwind readnone {



    %1 = fpext float %x to double
    %2 = call double @acos(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @asin(double %x)
define float @float_asin(float %x) nounwind readnone {



    %1 = fpext float %x to double
    %2 = call double @asin(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @atan(double %x)
define float @float_atan(float %x) nounwind readnone {



    %1 = fpext float %x to double
    %2 = call double @atan(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @atan2(double %x, double %y)
define float @float_atan2(float %x, float %y) nounwind readnone {



    %1 = fpext float %x to double
    %2 = fpext float %y to double
    %3 = call double @atan2(double %1, double %2)
    %4 = fptrunc double %3 to float
    ret float %4
}

declare double @ceil(double %x)
define float @float_ceil(float %x) nounwind readnone {












    %1 = fpext float %x to double
    %2 = call double @ceil(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @_copysign(double %x)
define float @float_copysign(float %x) nounwind readnone {




    %1 = fpext float %x to double
    %2 = call double @_copysign(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @cos(double %x)
define float @float_cos(float %x) nounwind readnone {



    %1 = fpext float %x to double
    %2 = call double @cos(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @cosh(double %x)
define float @float_cosh(float %x) nounwind readnone {



    %1 = fpext float %x to double
    %2 = call double @cosh(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @exp(double %x, double %y)
define float @float_exp(float %x, float %y) nounwind readnone {



    %1 = fpext float %x to double
    %2 = fpext float %y to double
    %3 = call double @exp(double %1, double %2)
    %4 = fptrunc double %3 to float
    ret float %4
}

declare double @fabs(double %x, double %y)
define float @float_fabs(float %x, float %y) nounwind readnone {






    %1 = fpext float %x to double
    %2 = fpext float %y to double
    %3 = call double @fabs(double %1, double %2)
    %4 = fptrunc double %3 to float
    ret float %4
}

declare double @floor(double %x)
define float @float_floor(float %x) nounwind readnone {












    %1 = fpext float %x to double
    %2 = call double @floor(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @fmod(double %x, double %y)
define float @float_fmod(float %x, float %y) nounwind readnone {



    %1 = fpext float %x to double
    %2 = fpext float %y to double
    %3 = call double @fmod(double %1, double %2)
    %4 = fptrunc double %3 to float
    ret float %4
}

declare double @log(double %x)
define float @float_log(float %x) nounwind readnone {



    %1 = fpext float %x to double
    %2 = call double @log(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @pow(double %x, double %y)
define float @float_pow(float %x, float %y) nounwind readnone {



    %1 = fpext float %x to double
    %2 = fpext float %y to double
    %3 = call double @pow(double %1, double %2)
    %4 = fptrunc double %3 to float
    ret float %4
}

declare double @sin(double %x)
define float @float_sin(float %x) nounwind readnone {



    %1 = fpext float %x to double
    %2 = call double @sin(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @sinh(double %x)
define float @float_sinh(float %x) nounwind readnone {



    %1 = fpext float %x to double
    %2 = call double @sinh(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @sqrt(double %x)
define float @float_sqrt(float %x) nounwind readnone {












    %1 = fpext float %x to double
    %2 = call double @sqrt(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @tan(double %x)
define float @float_tan(float %x) nounwind readnone {



    %1 = fpext float %x to double
    %2 = call double @tan(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare double @tanh(double %x)
define float @float_tanh(float %x) nounwind readnone {



    %1 = fpext float %x to double
    %2 = call double @tanh(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}


declare double @round(double %x)
define float @float_round(float %x) nounwind readnone {












    %1 = fpext float %x to double
    %2 = call double @round(double %1)
    %3 = fptrunc double %2 to float
    ret float %3
}

declare float @powf(float, float)

define float @float_powsqrt(float %x) nounwind readnone {














    %1 = call float @powf(float %x, float 0.5)
    ret float %1
}
