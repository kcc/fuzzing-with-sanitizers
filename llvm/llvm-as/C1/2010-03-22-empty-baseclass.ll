

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin11.1"

%"struct.boost::compressed_pair<empty_t,int>" = type { %"struct.boost::details::compressed_pair_imp<empty_t,int,1>" }
%"struct.boost::details::compressed_pair_imp<empty_t,int,1>" = type { i32 }
%struct.empty_base_t = type <{ i8 }>
%struct.empty_t = type <{ i8 }>

@.str = private constant [25 x i8] c"x.second() was clobbered\00", align 1 

define i32 @main(i32 %argc, i8** %argv) ssp {
entry:
  %argc_addr = alloca i32, align 4                
  %argv_addr = alloca i8**, align 8               
  %retval = alloca i32                            
  %0 = alloca i32                                 
  %retval.1 = alloca i8                           
  %1 = alloca %struct.empty_base_t                
  %2 = alloca %struct.empty_base_t*               
  %x = alloca %"struct.boost::compressed_pair<empty_t,int>" 
  %"alloca point" = bitcast i32 0 to i32          
  store i32 %argc, i32* %argc_addr
  store i8** %argv, i8*** %argv_addr
  %3 = call i32* @_ZN5boost15compressed_pairI7empty_tiE6secondEv(%"struct.boost::compressed_pair<empty_t,int>"* %x) ssp 
  store i32 -3, i32* %3, align 4
  %4 = call %struct.empty_base_t* @_ZN5boost15compressed_pairI7empty_tiE5firstEv(%"struct.boost::compressed_pair<empty_t,int>"* %x) ssp 
  store %struct.empty_base_t* %4, %struct.empty_base_t** %2, align 8
  call void @_ZN7empty_tC1Ev(%struct.empty_base_t* %1) nounwind
  %5 = call i32* @_ZN5boost15compressed_pairI7empty_tiE6secondEv(%"struct.boost::compressed_pair<empty_t,int>"* %x) ssp 
  %6 = load i32, i32* %5, align 4                      
  %7 = icmp ne i32 %6, -3                         
  %8 = zext i1 %7 to i8                           
  store i8 %8, i8* %retval.1, align 1
  %9 = load i8, i8* %retval.1, align 1                
  %toBool = icmp ne i8 %9, 0                      
  br i1 %toBool, label %bb, label %bb1

bb:                                               
  %10 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)) 
  call void @abort() noreturn
  unreachable

bb1:                                              
  store i32 0, i32* %0, align 4
  %11 = load i32, i32* %0, align 4                     
  store i32 %11, i32* %retval, align 4
  br label %return



return:                                           
  %retval2 = load i32, i32* %retval                    
  ret i32 %retval2
}

define linkonce_odr void @_ZN12empty_base_tC2Ev(%struct.empty_base_t* %this) nounwind ssp align 2 {
entry:
  %this_addr = alloca %struct.empty_base_t*, align 8 
  %"alloca point" = bitcast i32 0 to i32          
  store %struct.empty_base_t* %this, %struct.empty_base_t** %this_addr
  br label %return

return:                                           
  ret void
}

define linkonce_odr void @_ZN7empty_tC1Ev(%struct.empty_base_t* %this) nounwind ssp align 2 {
entry:
  %this_addr = alloca %struct.empty_base_t*, align 8 
  %"alloca point" = bitcast i32 0 to i32          
  store %struct.empty_base_t* %this, %struct.empty_base_t** %this_addr
  %0 = load %struct.empty_base_t*, %struct.empty_base_t** %this_addr, align 8 
  call void @_ZN12empty_base_tC2Ev(%struct.empty_base_t* %0) nounwind
  br label %return

return:                                           
  ret void
}

define linkonce_odr i32* @_ZN5boost7details19compressed_pair_impI7empty_tiLi1EE6secondEv(%"struct.boost::details::compressed_pair_imp<empty_t,int,1>"* %this) nounwind ssp align 2 {
entry:
  %this_addr = alloca %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"*, align 8 
  %retval = alloca i32*                           
  %0 = alloca i32*                                
  %"alloca point" = bitcast i32 0 to i32          
  store %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"* %this, %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"** %this_addr
  %1 = load %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"*, %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"** %this_addr, align 8 
  %2 = getelementptr inbounds %"struct.boost::details::compressed_pair_imp<empty_t,int,1>", %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"* %1, i32 0, i32 0 
  store i32* %2, i32** %0, align 8
  %3 = load i32*, i32** %0, align 8                     
  store i32* %3, i32** %retval, align 8
  br label %return

return:                                           
  %retval1 = load i32*, i32** %retval                   
  ret i32* %retval1
}

define linkonce_odr i32* @_ZN5boost15compressed_pairI7empty_tiE6secondEv(%"struct.boost::compressed_pair<empty_t,int>"* %this) ssp align 2 {
entry:
  %this_addr = alloca %"struct.boost::compressed_pair<empty_t,int>"*, align 8 
  %retval = alloca i32*                           
  %0 = alloca i32*                                
  %"alloca point" = bitcast i32 0 to i32          
  store %"struct.boost::compressed_pair<empty_t,int>"* %this, %"struct.boost::compressed_pair<empty_t,int>"** %this_addr
  %1 = load %"struct.boost::compressed_pair<empty_t,int>"*, %"struct.boost::compressed_pair<empty_t,int>"** %this_addr, align 8 
  %2 = getelementptr inbounds %"struct.boost::compressed_pair<empty_t,int>", %"struct.boost::compressed_pair<empty_t,int>"* %1, i32 0, i32 0 
  %3 = call i32* @_ZN5boost7details19compressed_pair_impI7empty_tiLi1EE6secondEv(%"struct.boost::details::compressed_pair_imp<empty_t,int,1>"* %2) nounwind 
  store i32* %3, i32** %0, align 8
  %4 = load i32*, i32** %0, align 8                     
  store i32* %4, i32** %retval, align 8
  br label %return

return:                                           
  %retval1 = load i32*, i32** %retval                   
  ret i32* %retval1
}

define linkonce_odr %struct.empty_base_t* @_ZN5boost7details19compressed_pair_impI7empty_tiLi1EE5firstEv(%"struct.boost::details::compressed_pair_imp<empty_t,int,1>"* %this) nounwind ssp align 2 {
entry:
  %this_addr = alloca %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"*, align 8 
  %retval = alloca %struct.empty_base_t*          
  %0 = alloca %struct.empty_base_t*               
  %"alloca point" = bitcast i32 0 to i32          
  store %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"* %this, %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"** %this_addr
  %1 = load %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"*, %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"** %this_addr, align 8 
  %2 = bitcast %"struct.boost::details::compressed_pair_imp<empty_t,int,1>"* %1 to %struct.empty_base_t* 
  store %struct.empty_base_t* %2, %struct.empty_base_t** %0, align 8
  %3 = load %struct.empty_base_t*, %struct.empty_base_t** %0, align 8    
  store %struct.empty_base_t* %3, %struct.empty_base_t** %retval, align 8
  br label %return

return:                                           
  %retval1 = load %struct.empty_base_t*, %struct.empty_base_t** %retval  
  ret %struct.empty_base_t* %retval1
}

define linkonce_odr %struct.empty_base_t* @_ZN5boost15compressed_pairI7empty_tiE5firstEv(%"struct.boost::compressed_pair<empty_t,int>"* %this) ssp align 2 {
entry:
  %this_addr = alloca %"struct.boost::compressed_pair<empty_t,int>"*, align 8 
  %retval = alloca %struct.empty_base_t*          
  %0 = alloca %struct.empty_base_t*               
  %"alloca point" = bitcast i32 0 to i32          
  store %"struct.boost::compressed_pair<empty_t,int>"* %this, %"struct.boost::compressed_pair<empty_t,int>"** %this_addr
  %1 = load %"struct.boost::compressed_pair<empty_t,int>"*, %"struct.boost::compressed_pair<empty_t,int>"** %this_addr, align 8 
  %2 = getelementptr inbounds %"struct.boost::compressed_pair<empty_t,int>", %"struct.boost::compressed_pair<empty_t,int>"* %1, i32 0, i32 0 
  %3 = call %struct.empty_base_t* @_ZN5boost7details19compressed_pair_impI7empty_tiLi1EE5firstEv(%"struct.boost::details::compressed_pair_imp<empty_t,int,1>"* %2) nounwind 
  store %struct.empty_base_t* %3, %struct.empty_base_t** %0, align 8
  %4 = load %struct.empty_base_t*, %struct.empty_base_t** %0, align 8    
  store %struct.empty_base_t* %4, %struct.empty_base_t** %retval, align 8
  br label %return

return:                                           
  %retval1 = load %struct.empty_base_t*, %struct.empty_base_t** %retval  
  ret %struct.empty_base_t* %retval1
}

declare i32 @puts(i8*)

declare void @abort() noreturn
