


%struct.s1 = type { double, float }

define void @g1() nounwind {
entry:
  %tmp = alloca %struct.s1, align 4
  call void @f(%struct.s1* inreg sret %tmp, i32 inreg 41, i32 inreg 42, i32 43)
  ret void
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  
  
  
}

declare void @f(%struct.s1* inreg sret, i32 inreg, i32 inreg, i32)

%struct.s2 = type {}

define void @g2(%struct.s2* inreg sret %agg.result) nounwind {
entry:
  ret void
  
  
  

  
  
  
}
