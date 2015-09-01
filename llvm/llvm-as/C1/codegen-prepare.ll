












%class.A = type { %struct.B }
%struct.B = type { %class.C, %class.D, %class.C, %class.D }
%class.C = type { float, float, float }
%class.D = type { [3 x %class.C] }

define linkonce_odr void @foo(%class.A* nocapture %this, i32 %BoolValue) nounwind uwtable {
entry:
  %cmp = icmp eq i32 %BoolValue, 0
  %address1 = getelementptr inbounds %class.A, %class.A* %this, i64 0, i32 0, i32 3
  %address2 = getelementptr inbounds %class.A, %class.A* %this, i64 0, i32 0, i32 1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                         
  %0 = getelementptr inbounds %class.D, %class.D* %address2, i64 0, i32 0, i64 0, i32 0
  %1 = load float, float* %0, align 4 
  %2 = getelementptr inbounds float, float* %0, i64 3
  %3 = load float, float* %2, align 4 
  %4 = getelementptr inbounds %class.D, %class.D* %address1, i64 0, i32 0, i64 0, i32 0
  store float %1, float* %4, align 4
  br label %if.end

if.else:                                          
  br label %if.end

if.end:                                           
  ret void
}





