






	
        %node_t = type { double*, %node_t*, %node_t**, double**, double*, i32, i32 }

define void @localize_local(%node_t* %nodelist) {
bb0:
        %nodelist.upgrd.1 = alloca %node_t*             
        store %node_t* %nodelist, %node_t** %nodelist.upgrd.1
        br label %bb1

bb1:            
        %reg107 = load %node_t*, %node_t** %nodelist.upgrd.1              
        %cond211 = icmp eq %node_t* %reg107, null               
        br i1 %cond211, label %bb3, label %bb2

bb2:            
        %reg109 = phi %node_t* [ %reg110, %bb2 ], [ %reg107, %bb1 ]             
        %reg212 = getelementptr %node_t, %node_t* %reg109, i64 0, i32 1          
        %reg110 = load %node_t*, %node_t** %reg212                
        %cond213 = icmp ne %node_t* %reg110, null               
        br i1 %cond213, label %bb2, label %bb3

bb3:            
        ret void
}

