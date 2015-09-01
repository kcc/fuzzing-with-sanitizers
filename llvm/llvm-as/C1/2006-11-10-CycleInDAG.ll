

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
@ld = external global %struct.layer_data*               

define void @main() {
entry:
        br i1 false, label %bb169.i, label %cond_true11

bb169.i:                
        ret void

cond_true11:            
        %tmp.i32 = load %struct.layer_data*, %struct.layer_data** @ld                
        %tmp3.i35 = getelementptr %struct.layer_data, %struct.layer_data* %tmp.i32, i32 0, i32 1, i32 2048
        %tmp.i36 = getelementptr %struct.layer_data, %struct.layer_data* %tmp.i32, i32 0, i32 2          
        store i8* %tmp3.i35, i8** %tmp.i36
        store i8* %tmp3.i35, i8** null
        ret void
}
