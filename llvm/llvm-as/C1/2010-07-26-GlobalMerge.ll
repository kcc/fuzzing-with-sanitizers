

target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32-n32"
target triple = "thumbv7-apple-darwin10.0.0"

%0 = type { i8*, i8* }
%struct.A = type { i32 }

@d = internal global i32 0, align 4               
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8* 
@_ZTS1A = internal constant [3 x i8] c"1A\00"     
@_ZTI1A = internal constant %0 { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1A, i32 0, i32 0) } 
@.str2 = private constant [18 x i8] c"c == %d, d == %d\0A\00" 
@.str3 = private constant [16 x i8] c"A(const A&) %d\0A\00" 
@.str4 = private constant [9 x i8] c"~A() %d\0A\00" 
@.str5 = private constant [8 x i8] c"A() %d\0A\00" 
@str = internal constant [14 x i8] c"Throwing 1...\00" 
@str1 = internal constant [8 x i8] c"Caught.\00"  

declare i32 @printf(i8* nocapture, ...) nounwind

declare i8* @__cxa_allocate_exception(i32)

declare i32 @__gxx_personality_sj0(...)

declare i32 @llvm.eh.typeid.for(i8*) nounwind

declare void @_Unwind_SjLj_Resume(i8*)

define internal void @_ZN1AD1Ev(%struct.A* nocapture %this) nounwind ssp align 2 {
entry:
  %tmp.i = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0 
  %tmp2.i = load i32, i32* %tmp.i                      
  %call.i = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str4, i32 0, i32 0), i32 %tmp2.i) nounwind 
  %tmp3.i = load i32, i32* @d                          
  %inc.i = add nsw i32 %tmp3.i, 1                 
  store i32 %inc.i, i32* @d
  ret void
}

declare void @__cxa_throw(i8*, i8*, i8*)

define i32 @main() ssp personality i8* bitcast (i32 (...)* @__gxx_personality_sj0 to i8*) {
entry:
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str, i32 0, i32 0)) 
  %exception.i = tail call i8* @__cxa_allocate_exception(i32 4) nounwind 
  %tmp2.i.i.i = bitcast i8* %exception.i to i32*  
  store i32 1, i32* %tmp2.i.i.i
  %call.i.i.i = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str5, i32 0, i32 0), i32 1) nounwind 
  invoke void @__cxa_throw(i8* %exception.i, i8* bitcast (%0* @_ZTI1A to i8*), i8* bitcast (void (%struct.A*)* @_ZN1AD1Ev to i8*)) noreturn
          to label %.noexc unwind label %lpad

.noexc:                                           
  unreachable

try.cont:                                         
  %0 = tail call i8* @__cxa_get_exception_ptr(i8* %exn) nounwind 
  %call.i.i = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str3, i32 0, i32 0), i32 2) nounwind 
  %1 = tail call i8* @__cxa_begin_catch(i8* %exn) nounwind 
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str1, i32 0, i32 0)) 
  %call.i.i3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str4, i32 0, i32 0), i32 2) nounwind 
  %tmp3.i.i = load i32, i32* @d                        
  %inc.i.i4 = add nsw i32 %tmp3.i.i, 1            
  store i32 %inc.i.i4, i32* @d
  tail call void @__cxa_end_catch()
  %tmp13 = load i32, i32* @d                           
  %call14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str2, i32 0, i32 0), i32 2, i32 %tmp13) 
  %tmp16 = load i32, i32* @d                           
  %cmp = icmp ne i32 %tmp16, 2                    
  %conv = zext i1 %cmp to i32                     
  ret i32 %conv

lpad:                                             
  %exn.ptr = landingpad { i8*, i32 }
           catch i8* bitcast (%0* @_ZTI1A to i8*)
           catch i8* null
  %exn = extractvalue { i8*, i32 } %exn.ptr, 0
  %eh.selector = extractvalue { i8*, i32 } %exn.ptr, 1
  %2 = tail call i32 @llvm.eh.typeid.for(i8* bitcast (%0* @_ZTI1A to i8*)) nounwind 
  %3 = icmp eq i32 %eh.selector, %2               
  br i1 %3, label %try.cont, label %eh.resume

eh.resume:                                        
  tail call void @_Unwind_SjLj_Resume(i8* %exn) noreturn
  unreachable
}

declare i8* @__cxa_get_exception_ptr(i8*)

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()

declare i32 @puts(i8* nocapture) nounwind
