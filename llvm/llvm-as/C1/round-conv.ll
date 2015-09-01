










define i32 @testmsws(float %a) {
entry:
  %call = call float @floorf(float %a) nounwind readnone
  %conv = fptosi float %call to i32
  ret i32 %conv
}








define i64 @testmsxs(float %a) {
entry:
  %call = call float @floorf(float %a) nounwind readnone
  %conv = fptosi float %call to i64
  ret i64 %conv
}








define i32 @testmswd(double %a) {
entry:
  %call = call double @floor(double %a) nounwind readnone
  %conv = fptosi double %call to i32
  ret i32 %conv
}








define i64 @testmsxd(double %a) {
entry:
  %call = call double @floor(double %a) nounwind readnone
  %conv = fptosi double %call to i64
  ret i64 %conv
}








define i32 @testmuws(float %a) {
entry:
  %call = call float @floorf(float %a) nounwind readnone
  %conv = fptoui float %call to i32
  ret i32 %conv
}








define i64 @testmuxs(float %a) {
entry:
  %call = call float @floorf(float %a) nounwind readnone
  %conv = fptoui float %call to i64
  ret i64 %conv
}








define i32 @testmuwd(double %a) {
entry:
  %call = call double @floor(double %a) nounwind readnone
  %conv = fptoui double %call to i32
  ret i32 %conv
}








define i64 @testmuxd(double %a) {
entry:
  %call = call double @floor(double %a) nounwind readnone
  %conv = fptoui double %call to i64
  ret i64 %conv
}








define i32 @testpsws(float %a) {
entry:
  %call = call float @ceilf(float %a) nounwind readnone
  %conv = fptosi float %call to i32
  ret i32 %conv
}








define i64 @testpsxs(float %a) {
entry:
  %call = call float @ceilf(float %a) nounwind readnone
  %conv = fptosi float %call to i64
  ret i64 %conv
}








define i32 @testpswd(double %a) {
entry:
  %call = call double @ceil(double %a) nounwind readnone
  %conv = fptosi double %call to i32
  ret i32 %conv
}








define i64 @testpsxd(double %a) {
entry:
  %call = call double @ceil(double %a) nounwind readnone
  %conv = fptosi double %call to i64
  ret i64 %conv
}








define i32 @testpuws(float %a) {
entry:
  %call = call float @ceilf(float %a) nounwind readnone
  %conv = fptoui float %call to i32
  ret i32 %conv
}








define i64 @testpuxs(float %a) {
entry:
  %call = call float @ceilf(float %a) nounwind readnone
  %conv = fptoui float %call to i64
  ret i64 %conv
}








define i32 @testpuwd(double %a) {
entry:
  %call = call double @ceil(double %a) nounwind readnone
  %conv = fptoui double %call to i32
  ret i32 %conv
}








define i64 @testpuxd(double %a) {
entry:
  %call = call double @ceil(double %a) nounwind readnone
  %conv = fptoui double %call to i64
  ret i64 %conv
}








define i32 @testzsws(float %a) {
entry:
  %call = call float @truncf(float %a) nounwind readnone
  %conv = fptosi float %call to i32
  ret i32 %conv
}








define i64 @testzsxs(float %a) {
entry:
  %call = call float @truncf(float %a) nounwind readnone
  %conv = fptosi float %call to i64
  ret i64 %conv
}








define i32 @testzswd(double %a) {
entry:
  %call = call double @trunc(double %a) nounwind readnone
  %conv = fptosi double %call to i32
  ret i32 %conv
}








define i64 @testzsxd(double %a) {
entry:
  %call = call double @trunc(double %a) nounwind readnone
  %conv = fptosi double %call to i64
  ret i64 %conv
}








define i32 @testzuws(float %a) {
entry:
  %call = call float @truncf(float %a) nounwind readnone
  %conv = fptoui float %call to i32
  ret i32 %conv
}








define i64 @testzuxs(float %a) {
entry:
  %call = call float @truncf(float %a) nounwind readnone
  %conv = fptoui float %call to i64
  ret i64 %conv
}








define i32 @testzuwd(double %a) {
entry:
  %call = call double @trunc(double %a) nounwind readnone
  %conv = fptoui double %call to i32
  ret i32 %conv
}








define i64 @testzuxd(double %a) {
entry:
  %call = call double @trunc(double %a) nounwind readnone
  %conv = fptoui double %call to i64
  ret i64 %conv
}








define i32 @testasws(float %a) {
entry:
  %call = call float @roundf(float %a) nounwind readnone
  %conv = fptosi float %call to i32
  ret i32 %conv
}








define i64 @testasxs(float %a) {
entry:
  %call = call float @roundf(float %a) nounwind readnone
  %conv = fptosi float %call to i64
  ret i64 %conv
}








define i32 @testaswd(double %a) {
entry:
  %call = call double @round(double %a) nounwind readnone
  %conv = fptosi double %call to i32
  ret i32 %conv
}








define i64 @testasxd(double %a) {
entry:
  %call = call double @round(double %a) nounwind readnone
  %conv = fptosi double %call to i64
  ret i64 %conv
}








define i32 @testauws(float %a) {
entry:
  %call = call float @roundf(float %a) nounwind readnone
  %conv = fptoui float %call to i32
  ret i32 %conv
}








define i64 @testauxs(float %a) {
entry:
  %call = call float @roundf(float %a) nounwind readnone
  %conv = fptoui float %call to i64
  ret i64 %conv
}








define i32 @testauwd(double %a) {
entry:
  %call = call double @round(double %a) nounwind readnone
  %conv = fptoui double %call to i32
  ret i32 %conv
}








define i64 @testauxd(double %a) {
entry:
  %call = call double @round(double %a) nounwind readnone
  %conv = fptoui double %call to i64
  ret i64 %conv
}


declare float @floorf(float) nounwind readnone
declare double @floor(double) nounwind readnone
declare float @ceilf(float) nounwind readnone
declare double @ceil(double) nounwind readnone
declare float @truncf(float) nounwind readnone
declare double @trunc(double) nounwind readnone
declare float @roundf(float) nounwind readnone
declare double @round(double) nounwind readnone
