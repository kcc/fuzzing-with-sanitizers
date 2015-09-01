





define void @neonop(i64* nocapture readonly %a, i64* nocapture %b) #0 {
  %1 = bitcast i64* %a to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %1, align 8
  
  
  %add = add <2 x i64> %wide.load, %wide.load
  
  
  %2 = bitcast i64* %b to <2 x i64>*
  store <2 x i64> %add, <2 x i64>* %2, align 8
  
  
  ret void
}


define double @fpmult(double %a, double %b) {
  %res = fmul double %a, %b
  
  
  
  
  
  
  ret double %res
}

