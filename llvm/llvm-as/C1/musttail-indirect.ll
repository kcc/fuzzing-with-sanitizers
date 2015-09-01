























%struct.B = type { i32 (...)** }
%struct.A = type { i32 }




define x86_thiscallcc i32 @f_thunk(%struct.B* %this, i32) {
entry:
  %1 = bitcast %struct.B* %this to i32 (%struct.B*, i32)***
  %vtable = load i32 (%struct.B*, i32)**, i32 (%struct.B*, i32)*** %1
  %2 = load i32 (%struct.B*, i32)*, i32 (%struct.B*, i32)** %vtable
  %3 = musttail call x86_thiscallcc i32 %2(%struct.B* %this, i32 %0)
  ret i32 %3
}






define x86_thiscallcc i32 @g_thunk(%struct.B* %this, <{ %struct.A, i32, %struct.A }>* inalloca) {
entry:
  %1 = bitcast %struct.B* %this to i32 (%struct.B*, <{ %struct.A, i32, %struct.A }>*)***
  %vtable = load i32 (%struct.B*, <{ %struct.A, i32, %struct.A }>*)**, i32 (%struct.B*, <{ %struct.A, i32, %struct.A }>*)*** %1
  %vfn = getelementptr inbounds i32 (%struct.B*, <{ %struct.A, i32, %struct.A }>*)*, i32 (%struct.B*, <{ %struct.A, i32, %struct.A }>*)** %vtable, i32 1
  %2 = load i32 (%struct.B*, <{ %struct.A, i32, %struct.A }>*)*, i32 (%struct.B*, <{ %struct.A, i32, %struct.A }>*)** %vfn
  %3 = musttail call x86_thiscallcc i32 %2(%struct.B* %this, <{ %struct.A, i32, %struct.A }>* inalloca %0)
  ret i32 %3
}





define x86_thiscallcc void @h_thunk(%struct.B* %this, <{ %struct.A, i32, %struct.A }>* inalloca) {
entry:
  %1 = bitcast %struct.B* %this to void (%struct.B*, <{ %struct.A, i32, %struct.A }>*)***
  %vtable = load void (%struct.B*, <{ %struct.A, i32, %struct.A }>*)**, void (%struct.B*, <{ %struct.A, i32, %struct.A }>*)*** %1
  %vfn = getelementptr inbounds void (%struct.B*, <{ %struct.A, i32, %struct.A }>*)*, void (%struct.B*, <{ %struct.A, i32, %struct.A }>*)** %vtable, i32 2
  %2 = load void (%struct.B*, <{ %struct.A, i32, %struct.A }>*)*, void (%struct.B*, <{ %struct.A, i32, %struct.A }>*)** %vfn
  musttail call x86_thiscallcc void %2(%struct.B* %this, <{ %struct.A, i32, %struct.A }>* inalloca %0)
  ret void
}





define x86_thiscallcc %struct.A* @i_thunk(%struct.B* %this, <{ %struct.A*, %struct.A, i32, %struct.A }>* inalloca) {
entry:
  %1 = bitcast %struct.B* %this to %struct.A* (%struct.B*, <{ %struct.A*, %struct.A, i32, %struct.A }>*)***
  %vtable = load %struct.A* (%struct.B*, <{ %struct.A*, %struct.A, i32, %struct.A }>*)**, %struct.A* (%struct.B*, <{ %struct.A*, %struct.A, i32, %struct.A }>*)*** %1
  %vfn = getelementptr inbounds %struct.A* (%struct.B*, <{ %struct.A*, %struct.A, i32, %struct.A }>*)*, %struct.A* (%struct.B*, <{ %struct.A*, %struct.A, i32, %struct.A }>*)** %vtable, i32 3
  %2 = load %struct.A* (%struct.B*, <{ %struct.A*, %struct.A, i32, %struct.A }>*)*, %struct.A* (%struct.B*, <{ %struct.A*, %struct.A, i32, %struct.A }>*)** %vfn
  %3 = musttail call x86_thiscallcc %struct.A* %2(%struct.B* %this, <{ %struct.A*, %struct.A, i32, %struct.A }>* inalloca %0)
  ret %struct.A* %3
}




define x86_thiscallcc void @j_thunk(%struct.A* noalias sret %agg.result, %struct.B* %this, i32) {
entry:
  %1 = bitcast %struct.B* %this to void (%struct.A*, %struct.B*, i32)***
  %vtable = load void (%struct.A*, %struct.B*, i32)**, void (%struct.A*, %struct.B*, i32)*** %1
  %vfn = getelementptr inbounds void (%struct.A*, %struct.B*, i32)*, void (%struct.A*, %struct.B*, i32)** %vtable, i32 4
  %2 = load void (%struct.A*, %struct.B*, i32)*, void (%struct.A*, %struct.B*, i32)** %vfn
  musttail call x86_thiscallcc void %2(%struct.A* sret %agg.result, %struct.B* %this, i32 %0)
  ret void
}





define x86_stdcallcc i32 @stdcall_thunk(<{ %struct.B*, %struct.A }>* inalloca) {
entry:
  %this_ptr = getelementptr inbounds <{ %struct.B*, %struct.A }>, <{ %struct.B*, %struct.A }>* %0, i32 0, i32 0
  %this = load %struct.B*, %struct.B** %this_ptr
  %1 = bitcast %struct.B* %this to i32 (<{ %struct.B*, %struct.A }>*)***
  %vtable = load i32 (<{ %struct.B*, %struct.A }>*)**, i32 (<{ %struct.B*, %struct.A }>*)*** %1
  %vfn = getelementptr inbounds i32 (<{ %struct.B*, %struct.A }>*)*, i32 (<{ %struct.B*, %struct.A }>*)** %vtable, i32 1
  %2 = load i32 (<{ %struct.B*, %struct.A }>*)*, i32 (<{ %struct.B*, %struct.A }>*)** %vfn
  %3 = musttail call x86_stdcallcc i32 %2(<{ %struct.B*, %struct.A }>* inalloca %0)
  ret i32 %3
}





define x86_fastcallcc i32 @fastcall_thunk(%struct.B* inreg %this, <{ %struct.A }>* inalloca) {
entry:
  %1 = bitcast %struct.B* %this to i32 (%struct.B*, <{ %struct.A }>*)***
  %vtable = load i32 (%struct.B*, <{ %struct.A }>*)**, i32 (%struct.B*, <{ %struct.A }>*)*** %1
  %vfn = getelementptr inbounds i32 (%struct.B*, <{ %struct.A }>*)*, i32 (%struct.B*, <{ %struct.A }>*)** %vtable, i32 1
  %2 = load i32 (%struct.B*, <{ %struct.A }>*)*, i32 (%struct.B*, <{ %struct.A }>*)** %vfn
  %3 = musttail call x86_fastcallcc i32 %2(%struct.B* inreg %this, <{ %struct.A }>* inalloca %0)
  ret i32 %3
}
