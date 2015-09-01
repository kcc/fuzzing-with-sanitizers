


define zeroext i8 @t1(float %x, float %y) nounwind {
       %a = fcmp ueq float %x, %y             
       %b = fcmp uno float %x, %y               
       %c = or i1 %a, %b


       %retval = zext i1 %c to i8
       ret i8 %retval
}


define zeroext i8 @t2(float %x, float %y) nounwind {
       %a = fcmp olt float %x, %y             
       %b = fcmp oeq float %x, %y               



       %c = or i1 %a, %b
       %retval = zext i1 %c to i8
       ret i8 %retval
}


define zeroext i8 @t3(float %x, float %y) nounwind {
       %a = fcmp ult float %x, %y             
       %b = fcmp uge float %x, %y               
       %c = or i1 %a, %b
       %retval = zext i1 %c to i8

       ret i8 %retval
}


define zeroext i8 @t4(float %x, float %y) nounwind {
       %a = fcmp ult float %x, %y             
       %b = fcmp ugt float %x, %y               
       %c = or i1 %a, %b



       %retval = zext i1 %c to i8
       ret i8 %retval
}


define zeroext i8 @t5(float %x, float %y) nounwind {
       %a = fcmp olt float %x, %y             
       %b = fcmp oge float %x, %y               
       %c = or i1 %a, %b



       %retval = zext i1 %c to i8
       ret i8 %retval
}
