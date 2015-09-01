








%class.A = type { i32 (...)** }

define i32 @test1() #0 {
  
entry:
  %call = tail call %class.A* @_Z3facv()
  %0 = bitcast %class.A* %call to void (%class.A*)***
  %vtable = load void (%class.A*)**, void (%class.A*)*** %0, align 8
  %1 = load void (%class.A*)*, void (%class.A*)** %vtable, align 8
  
  
  
  
  
  
  
  
  
  
  tail call void %1(%class.A* %call)
  ret i32 0
}

declare %class.A* @_Z3facv() #1


@p = external global void (i32)**

define i32 @test2() #0 {
  
entry:
  %0 = load void (i32)**, void (i32)*** @p, align 8
  %1 = load void (i32)*, void (i32)** %0, align 8
  
  
  
  
  
  
  
  
  
  
  tail call void %1(i32 2)
  ret i32 0
}
