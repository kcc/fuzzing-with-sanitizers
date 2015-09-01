


%struct.a_t = type { i8*, i64*, i8*, i32, i32, i64*, i64*, i64* }
%struct.b_t = type { i32, i32, i32, i32, i64, i64, i64, i64 }

define void @t(i32 %cNum, i64 %max) nounwind optsize ssp noimplicitfloat {
entry:
  %0 = load %struct.b_t*, %struct.b_t** null, align 4 
  %1 = getelementptr inbounds %struct.b_t, %struct.b_t* %0, i32 %cNum, i32 5 
  %2 = load i64, i64* %1, align 4                      
  %3 = icmp ult i64 %2, %max            
  %4 = getelementptr inbounds %struct.a_t, %struct.a_t* null, i32 0, i32 7 
  %5 = load i64*, i64** %4, align 4                     
  %6 = load i64, i64* null, align 4                    
  br i1 %3, label %bb2, label %bb

bb:                                               
  br label %bb3

bb2:                                              
  %7 = or i64 %6, undef                           
  br label %bb3

bb3:                                              
  %misc_enables.0 = phi i64 [ undef, %bb ], [ %7, %bb2 ] 
  ret void
}
