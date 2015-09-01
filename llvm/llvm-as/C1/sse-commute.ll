







define <2 x double> @a(<2 x double>, <2 x double>) nounwind readnone {
entry:
  %tmp6 = bitcast <2 x double> %0 to <4 x i32>    
  %tmp4 = bitcast <2 x double> %1 to <4 x i32>    
  %cmp = icmp eq <4 x i32> %tmp6, %tmp4           
  %sext = sext <4 x i1> %cmp to <4 x i32>         
  %and = and <4 x i32> %tmp6, %sext               
  %tmp8 = bitcast <4 x i32> %and to <2 x double>  
  ret <2 x double> %tmp8
}


