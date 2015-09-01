

define i32 @foo(i32* %var, i1 %cond) {

  br i1 %cond, label %atomic_ver, label %simple_ver
simple_ver:
  %oldval = load i32, i32* %var
  %newval = add nsw i32 %oldval, -1
  store i32 %newval, i32* %var
  br label %somewhere
atomic_ver:
  fence seq_cst
  %val = atomicrmw add i32* %var, i32 -1 monotonic
  fence seq_cst
  br label %somewhere



  
  
  

somewhere:
  %combined = phi i32 [ %val, %atomic_ver ], [ %newval, %simple_ver]
  ret i32 %combined
}
