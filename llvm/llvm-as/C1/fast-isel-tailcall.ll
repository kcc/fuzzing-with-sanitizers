






define i32 @stub(i8* %t0) nounwind {
entry:
        %t1 = load i32, i32* inttoptr (i32 139708680 to i32*)         
        %t2 = bitcast i8* %t0 to i32 (i32)*               
        %t3 = call fastcc i32 %t2(i32 %t1)         
        ret i32 %t3
}
