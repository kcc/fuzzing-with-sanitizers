

%struct.OP = type { %struct.OP*, %struct.OP*, %struct.OP* ()*, i32, i16, i16, i8, i8 }
%struct.SV = type { i8*, i32, i32 }

declare void @Perl_mg_set(%struct.SV*) nounwind

define %struct.OP* @Perl_pp_complement() nounwind {
entry:
  %0 = load %struct.SV*, %struct.SV** null, align 4            
  br i1 undef, label %bb21, label %bb5

bb5:                                              
  br i1 undef, label %bb13, label %bb6

bb6:                                              
  br i1 undef, label %bb8, label %bb7

bb7:                                              
  %1 = getelementptr inbounds %struct.SV, %struct.SV* %0, i32 0, i32 0 
  %2 = load i8*, i8** %1, align 4                      
  %3 = getelementptr inbounds i8, i8* %2, i32 12      
  %4 = bitcast i8* %3 to i32*                     
  %5 = load i32, i32* %4, align 4                      
  %storemerge5 = xor i32 %5, -1                   
  call  void @Perl_sv_setiv(%struct.SV* undef, i32 %storemerge5) nounwind
  %6 = getelementptr inbounds %struct.SV, %struct.SV* undef, i32 0, i32 2 
  %7 = load i32, i32* %6, align 4                      
  %8 = and i32 %7, 16384                          
  %9 = icmp eq i32 %8, 0                          
  br i1 %9, label %bb12, label %bb11

bb8:                                              
  unreachable

bb11:                                             
  call  void @Perl_mg_set(%struct.SV* undef) nounwind
  br label %bb12

bb12:                                             
  store %struct.SV* undef, %struct.SV** null, align 4
  br label %bb44

bb13:                                             
  %10 = call  i32 @Perl_sv_2uv(%struct.SV* %0) nounwind 
  br i1 undef, label %bb.i, label %bb1.i

bb.i:                                             
  call  void @Perl_sv_setiv(%struct.SV* undef, i32 undef) nounwind
  br label %Perl_sv_setuv.exit

bb1.i:                                            
  br label %Perl_sv_setuv.exit

Perl_sv_setuv.exit:                               
  %11 = getelementptr inbounds %struct.SV, %struct.SV* undef, i32 0, i32 2 
  %12 = load i32, i32* %11, align 4                    
  %13 = and i32 %12, 16384                        
  %14 = icmp eq i32 %13, 0                        
  br i1 %14, label %bb20, label %bb19

bb19:                                             
  call  void @Perl_mg_set(%struct.SV* undef) nounwind
  br label %bb20

bb20:                                             
  store %struct.SV* undef, %struct.SV** null, align 4
  br label %bb44

bb21:                                             
  br i1 undef, label %bb23, label %bb22

bb22:                                             
  unreachable

bb23:                                             
  unreachable

bb44:                                             
  ret %struct.OP* undef
}

declare void @Perl_sv_setiv(%struct.SV*, i32) nounwind

declare i32 @Perl_sv_2uv(%struct.SV*) nounwind
