









define zeroext i1 @ret1(i1 signext %a) nounwind uwtable ssp {
entry:



  ret i1 %a
}

define signext i8 @ret2(i8 signext %a) nounwind uwtable ssp {
entry:



  ret i8 %a
}

define zeroext i8 @ret3(i8 signext %a) nounwind uwtable ssp {
entry:



  ret i8 %a
}

define signext i16 @ret4(i16 signext %a) nounwind uwtable ssp {
entry:



  ret i16 %a
}

define zeroext i16 @ret5(i16 signext %a) nounwind uwtable ssp {
entry:



  ret i16 %a
}

define i16 @ret6(i16 %a) nounwind uwtable ssp {
entry:




  ret i16 %a
}
