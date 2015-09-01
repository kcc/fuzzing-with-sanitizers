

define void @foosf() #0 {
entry:
  %in = alloca float, align 4
  %out = alloca float, align 4
  store volatile float 0xBFD59E1380000000, float* %in, align 4
  %in.0.in.0. = load volatile float, float* %in, align 4
  %rintf = tail call float @rintf(float %in.0.in.0.) #1
  store volatile float %rintf, float* %out, align 4
  ret void





}

declare float @rintf(float)

define float @foosf1(float* nocapture readonly %a) #0 {
entry:
  %0 = load float, float* %a, align 4
  %call = tail call float @roundf(float %0) #2
  ret float %call





}

declare float @roundf(float) #1

define float @foosf2(float* nocapture readonly %a) #0 {
entry:
  %0 = load float, float* %a, align 4
  %call = tail call float @truncf(float %0) #2
  ret float %call





}

declare float @truncf(float) #1

define float @foosf3(float* nocapture readonly %a) #0 {
entry:
  %0 = load float, float* %a, align 4
  %call = tail call float @floorf(float %0) #2
  ret float %call





}

declare float @floorf(float) #1

define float @foosf4(float* nocapture readonly %a) #0 {
entry:
  %0 = load float, float* %a, align 4
  %call = tail call float @nearbyintf(float %0) #2
  ret float %call





}

declare float @nearbyintf(float) #1

define float @foosf5(float* nocapture readonly %a) #0 {
entry:
  %0 = load float, float* %a, align 4
  %mul = fmul float %0, undef
  ret float %mul





}

define float @foosf6(float* nocapture readonly %a) #0 {
entry:
  %0 = load float, float* %a, align 4
  %sub = fsub float %0, undef
  ret float %sub





}

define float @foosf7(float* nocapture readonly %a) #0 {
entry:
  %0 = load float, float* %a, align 4
  %add = fadd float %0, undef
  ret float %add





}

define float @foosf8(float* nocapture readonly %a) #0 {
entry:
  %b = alloca float, align 4
  %b.0.b.0. = load volatile float, float* %b, align 4
  %0 = load float, float* %a, align 4
  %div = fdiv float %b.0.b.0., %0
  ret float %div





}

define float @foosf9() #0 {
entry:
  %b = alloca float, align 4
  %b.0.b.0. = load volatile float, float* %b, align 4
  %conv = fpext float %b.0.b.0. to double
  %b.0.b.0.3 = load volatile float, float* %b, align 4
  %conv1 = fpext float %b.0.b.0.3 to double
  %call = tail call double @pow(double %conv, double %conv1) #1
  %conv2 = fptrunc double %call to float
  ret float %conv2





}

declare double @pow(double, double) #0

define float @foosf10() #0 {
entry:
  %a = alloca float, align 4
  %a.0.a.0. = load volatile float, float* %a, align 4
  %conv = fpext float %a.0.a.0. to double
  %call = tail call double @sin(double %conv) #1
  %conv1 = fptrunc double %call to float
  ret float %conv1





}

declare double @sin(double) #0

define float @foosf11() #0 {
entry:
  %b = alloca float, align 4
  %b.0.b.0. = load volatile float, float* %b, align 4
  %call = tail call float @ceilf(float %b.0.b.0.) #2
  ret float %call





}

declare float @ceilf(float) #1

define float @foosf12() #0 {
entry:
  %b = alloca float, align 4
  %a = alloca float, align 4
  %b.0.b.0. = load volatile float, float* %b, align 4
  %a.0.a.0. = load volatile float, float* %a, align 4
  %call = tail call float @fmaxf(float %b.0.b.0., float %a.0.a.0.) #2
  ret float %call





}

declare float @fmaxf(float, float) #1

define float @foosf13() #0 {
entry:
  %b = alloca float, align 4
  %a = alloca float, align 4
  %b.0.b.0. = load volatile float, float* %b, align 4
  %a.0.a.0. = load volatile float, float* %a, align 4
  %call = tail call float @fminf(float %b.0.b.0., float %a.0.a.0.) #2
  ret float %call





}

declare float @fminf(float, float) #1


attributes #0 = { nounwind "use-soft-float"="true" }
attributes #1 = { nounwind readnone "use-soft-float"="true" }