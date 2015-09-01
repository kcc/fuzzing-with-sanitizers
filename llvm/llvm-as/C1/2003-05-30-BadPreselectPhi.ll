










        %struct..packet = type { %struct..packet*, i32, i32, i32, [4 x i8] }
        %struct..task = type { %struct..task*, i32, i32, %struct..packet*, i32, %struct..task* (%struct..packet*)*, i32, i32 }
@v1 = external global i32               
@v2 = external global i32               

define %struct..task* @handlerfn(%struct..packet* %pkt.2) {
entry:
        %tmp.1 = icmp ne %struct..packet* %pkt.2, null          
        br i1 %tmp.1, label %cond_false, label %cond_continue

cond_false:             
        br label %cond_continue

cond_continue:          
        %mem_tmp.0 = phi i32* [ @v2, %cond_false ], [ @v1, %entry ]             
        %tmp.12 = bitcast i32* %mem_tmp.0 to %struct..packet*           
        call void @append( %struct..packet* %pkt.2, %struct..packet* %tmp.12 )
        ret %struct..task* null
}

declare void @append(%struct..packet*, %struct..packet*)

