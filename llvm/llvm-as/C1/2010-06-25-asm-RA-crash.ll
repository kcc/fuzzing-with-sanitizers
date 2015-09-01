

%struct.__SEH2Frame = type {}

define void @_SEH2FrameHandler() nounwind {
entry:
  %target.addr.i = alloca i8*, align 4            
  %frame = alloca %struct.__SEH2Frame*, align 4   
  %tmp = load %struct.__SEH2Frame*, %struct.__SEH2Frame** %frame        
  %conv = bitcast %struct.__SEH2Frame* %tmp to i8* 
  store i8* %conv, i8** %target.addr.i
  %tmp.i = load i8*, i8** %target.addr.i               
  call void asm sideeffect "push %ebp\0Apush $$0\0Apush $$0\0Apush $$Return${:uid}\0Apush $0\0Acall ${1:c}\0AReturn${:uid}: pop %ebp\0A", "imr,imr,~{ax},~{bx},~{cx},~{dx},~{si},~{di},~{flags},~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %tmp.i, void (...)* @RtlUnwind) nounwind, !srcloc !0
  ret void
}

declare x86_stdcallcc void @RtlUnwind(...)

!0 = !{i32 215}
