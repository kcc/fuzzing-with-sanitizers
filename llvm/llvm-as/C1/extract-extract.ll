





        %cc = type { %crd }
        %cr = type { i32 }
        %crd = type { i64, %cr* }
        %pp = type { %cc }

define fastcc void @foo(%pp* nocapture byval %p_arg) {
entry:
        %tmp2 = getelementptr %pp, %pp* %p_arg, i64 0, i32 0         
        %tmp3 = load %cc, %cc* %tmp2         
        %tmp34 = extractvalue %cc %tmp3, 0              
        %tmp345 = extractvalue %crd %tmp34, 0           
        %.ptr.i = load %cr*, %cr** undef              
        %tmp15.i = shl i64 %tmp345, 3           
        store %cr* undef, %cr** undef
        ret void
}


