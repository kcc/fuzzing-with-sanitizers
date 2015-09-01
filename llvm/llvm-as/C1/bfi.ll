

%struct.F = type { [3 x i8], i8 }

@X = common global %struct.F zeroinitializer, align 4 

define void @f1([1 x i32] %f.coerce0) nounwind {
entry:



  %0 = load i32, i32* bitcast (%struct.F* @X to i32*), align 4 
  %1 = and i32 %0, -62914561                      
  %2 = or i32 %1, 41943040                        
  store i32 %2, i32* bitcast (%struct.F* @X to i32*), align 4
  ret void
}

define i32 @f2(i32 %A, i32 %B) nounwind readnone optsize {
entry:



  %and = and i32 %A, -8388481                     
  %and2 = and i32 %B, 8388480                     
  %or = or i32 %and2, %and                        
  ret i32 %or
}

define i32 @f3(i32 %A, i32 %B) nounwind readnone optsize {
entry:



  %and = and i32 %A, 8388480                      
  %and2 = and i32 %B, -8388481                    
  %or = or i32 %and2, %and                        
  ret i32 %or
}


define i32 @f4(i32 %a) nounwind {



  %1 = shl i32 %a, 15
  %ins7 = and i32 %1, 1015808
  %ins12 = or i32 %ins7, 3137
  ret i32 %ins12
}


define i32 @f5(i32 %a, i32 %b) nounwind readnone {
entry:


%and = and i32 %a, 2
%b.masked = and i32 %b, -2
%and3 = or i32 %b.masked, %and
ret i32 %and3
}
