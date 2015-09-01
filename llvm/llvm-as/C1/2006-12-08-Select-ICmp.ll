



target datalayout = "e-p:32:32"
target triple = "i686-pc-linux-gnu"
        %struct.point = type { i32, i32 }

define i32 @visible(i32 %direction, i64 %p1.0, i64 %p2.0, i64 %p3.0) {
entry:
        %p1_addr = alloca %struct.point         
        %p2_addr = alloca %struct.point         
        %p3_addr = alloca %struct.point         
        %tmp = bitcast %struct.point* %p1_addr to { i64 }*              
        %tmp.upgrd.1 = getelementptr { i64 }, { i64 }* %tmp, i32 0, i32 0                
        store i64 %p1.0, i64* %tmp.upgrd.1
        %tmp1 = bitcast %struct.point* %p2_addr to { i64 }*             
        %tmp2 = getelementptr { i64 }, { i64 }* %tmp1, i32 0, i32 0              
        store i64 %p2.0, i64* %tmp2
        %tmp3 = bitcast %struct.point* %p3_addr to { i64 }*             
        %tmp4 = getelementptr { i64 }, { i64 }* %tmp3, i32 0, i32 0              
        store i64 %p3.0, i64* %tmp4
        %tmp.upgrd.2 = icmp eq i32 %direction, 0                
        %tmp5 = bitcast %struct.point* %p1_addr to { i64 }*             
        %tmp6 = getelementptr { i64 }, { i64 }* %tmp5, i32 0, i32 0              
        %tmp.upgrd.3 = load i64, i64* %tmp6          
        %tmp7 = bitcast %struct.point* %p2_addr to { i64 }*             
        %tmp8 = getelementptr { i64 }, { i64 }* %tmp7, i32 0, i32 0              
        %tmp9 = load i64, i64* %tmp8         
        %tmp10 = bitcast %struct.point* %p3_addr to { i64 }*            
        %tmp11 = getelementptr { i64 }, { i64 }* %tmp10, i32 0, i32 0            
        %tmp12 = load i64, i64* %tmp11               
        %tmp13 = call i32 @determinant( i64 %tmp.upgrd.3, i64 %tmp9, i64 %tmp12 )         
        %tmp14 = icmp slt i32 %tmp13, 0         
        %tmp26 = icmp sgt i32 %tmp13, 0         
        %retval.0.in = select i1 %tmp.upgrd.2, i1 %tmp14, i1 %tmp26             
        %retval.0 = zext i1 %retval.0.in to i32         
        ret i32 %retval.0
}

declare i32 @determinant(i64, i64, i64)

