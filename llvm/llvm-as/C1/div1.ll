




@sj = global i32 200000, align 4
@sk = global i32 -47, align 4
@uj = global i32 200000, align 4
@uk = global i32 43, align 4
@si = common global i32 0, align 4
@ui = common global i32 0, align 4

define void @divs() {
  

  
  
  
  
  
  
  
  
  
  
  
  
  %1 = load i32, i32* @sj, align 4
  %2 = load i32, i32* @sk, align 4
  %div = sdiv i32 %1, %2
  store i32 %div, i32* @si, align 4
  ret void
}

define void @divu() {
  

  
  
  
  
  
  
  
  
  
  
  
  
  %1 = load i32, i32* @uj, align 4
  %2 = load i32, i32* @uk, align 4
  %div = udiv i32 %1, %2
  store i32 %div, i32* @ui, align 4
  ret void
}
