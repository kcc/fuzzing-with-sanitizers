


define void @convert(<2 x double>* %dst.addr, <3 x double> %src)  {
entry:



  %val = shufflevector <3 x double> %src, <3 x double> undef, <2 x i32> < i32 0, i32 1>
  store <2 x double> %val, <2 x double>* %dst.addr
  ret void
}
