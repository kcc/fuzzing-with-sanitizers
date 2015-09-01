





declare void @sink(<2 x double>)

define void @test1(i1 %cmp) align 2 {
  %1 = alloca  <2 x double>, align 16
  %2 = alloca  <2 x double>, align 8

  %val = load <2 x double>, <2 x double>* %1, align 16
  %val2 = load <2 x double>, <2 x double>* %2, align 8
  %val3 = select i1 %cmp, <2 x double> %val, <2 x double> %val2
  call void @sink(<2 x double> %val3)
  ret void
  
  
  
}

define void @test2(i1 %cmp) align 2 {
  %1 = alloca  <2 x double>, align 16
  %2 = alloca  <2 x double>, align 8

  %val = load <2 x double>, <2 x double>* %1, align 16
  %val2 = load <2 x double>, <2 x double>* %2, align 16
  %val3 = select i1 %cmp, <2 x double> %val, <2 x double> %val2
  call void @sink(<2 x double> %val3)
  ret void
  
  
  
}
