






define double @foo(double %a) nounwind readonly ssp {
entry:





  %0 = tail call double @sin(double %a) nounwind readonly
  ret double %0
}

define float @bar(float %a) nounwind readonly ssp {





entry:
  %0 = tail call float @sinf(float %a) nounwind readonly
  ret float %0
}






declare float @sinf(float) nounwind readonly

declare double @sin(double) nounwind readonly


%0 = type opaque

@"\01L_OBJC_SELECTOR_REFERENCES_2" = external hidden global i8*, section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip"

define hidden { double, double } @foo2(%0* %self, i8* nocapture %_cmd) uwtable optsize ssp {




  %1 = load i8*, i8** @"\01L_OBJC_SELECTOR_REFERENCES_2", align 8, !invariant.load !0
  %2 = bitcast %0* %self to i8*
  %3 = tail call { double, double } bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to { double, double } (i8*, i8*)*)(i8* %2, i8* %1) optsize
  %4 = extractvalue { double, double } %3, 0
  %5 = extractvalue { double, double } %3, 1
  %6 = tail call double @floor(double %4) optsize
  %7 = tail call double @floor(double %5) optsize
  %insert.i.i = insertvalue { double, double } undef, double %6, 0
  %insert5.i.i = insertvalue { double, double } %insert.i.i, double %7, 1
  ret { double, double } %insert5.i.i
}

declare i8* @objc_msgSend(i8*, i8*, ...)

declare double @floor(double) optsize

!0 = !{}
