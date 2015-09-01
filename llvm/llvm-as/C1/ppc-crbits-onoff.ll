
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define signext i32 @crbitsoff(i32 signext %v1, i32 signext %v2) #0 {
entry:
  %tobool = icmp ne i32 %v1, 0
  %lnot = icmp eq i32 %v2, 0
  %and3 = and i1 %tobool, %lnot
  %and = zext i1 %and3 to i32
  ret i32 %and








}

define signext i32 @crbitson(i32 signext %v1, i32 signext %v2) #1 {
entry:
  %tobool = icmp ne i32 %v1, 0
  %lnot = icmp eq i32 %v2, 0
  %and3 = and i1 %tobool, %lnot
  %and = zext i1 %and3 to i32
  ret i32 %and








}


attributes #0 = { nounwind readnone "target-features"="-crbits" }
attributes #1 = { nounwind readnone }

