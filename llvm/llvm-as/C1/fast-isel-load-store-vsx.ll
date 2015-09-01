










%SomeStruct = type { double }


define linkonce_odr void @SomeStructCtor(%SomeStruct* %this, double %V) unnamed_addr align 2 {
entry:
  %this.addr = alloca %SomeStruct*, align 8
  %V.addr = alloca double, align 8
  store %SomeStruct* %this, %SomeStruct** %this.addr, align 8

  store double %V, double* %V.addr, align 8
  %this1 = load %SomeStruct*, %SomeStruct** %this.addr
  %Val = getelementptr inbounds %SomeStruct, %SomeStruct* %this1, i32 0, i32 0

  %0 = load double, double* %V.addr, align 8
  store double %0, double* %Val, align 8
  ret void
 }
