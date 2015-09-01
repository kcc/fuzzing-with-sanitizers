










%class = type { [8 x i8] }
%vt = type { i32 (...)** }

define %vt* @_ZN4llvm9UnsetInit20convertInitializerToEPNS_5RecTyE(%class*
%this, %vt* %Ty) align 2 {
entry:
  %0 = bitcast %vt* %Ty to %vt* (%vt*, %class*)***
  %vtable = load %vt* (%vt*, %class*)**, %vt* (%vt*, %class*)*** %0, align 8
  %vfn = getelementptr inbounds %vt* (%vt*, %class*)*, %vt* (%vt*, %class*)** %vtable, i64 4
  %1 = load %vt* (%vt*, %class*)*, %vt* (%vt*, %class*)** %vfn, align 8
  %call = tail call %vt* %1(%vt* %Ty, %class* %this)
  ret %vt* %call
}
