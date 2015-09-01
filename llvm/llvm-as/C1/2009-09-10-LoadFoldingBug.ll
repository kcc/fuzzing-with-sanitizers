








%struct.ComplexType = type { i32 }

define i32 @t(i32 %clientPort, i32 %pluginID, i32 %requestID, i32 %objectID, i64 %serverIdentifier, i64 %argumentsData, i32 %argumentsLength) ssp personality i32 (...)* @__gxx_personality_v0 {
entry:


  %0 = zext i32 %argumentsLength to i64           
  %1 = zext i32 %clientPort to i64                
  %2 = inttoptr i64 %1 to %struct.ComplexType*    
  %3 = invoke i8* @pluginInstance(i8* undef, i32 %pluginID)
          to label %invcont unwind label %lpad    

invcont:                                          
  %4 = add i32 %requestID, %pluginID              
  %5 = invoke zeroext i8 @invoke(i8* %3, i32 %objectID, i8* undef, i64 %argumentsData, i32 %argumentsLength, i64* undef, i32* undef)
          to label %invcont1 unwind label %lpad   

invcont1:                                         
  %6 = getelementptr inbounds %struct.ComplexType, %struct.ComplexType* %2, i64 0, i32 0 
  %7 = load i32, i32* %6, align 4                      
  invoke void @booleanAndDataReply(i32 %7, i32 undef, i32 %requestID, i32 undef, i64 undef, i32 undef)
          to label %invcont2 unwind label %lpad

invcont2:                                         
  ret i32 0

lpad:                                             
  %exn = landingpad {i8*, i32}
            cleanup
  %8 = call i32 @vm_deallocate(i32 undef, i64 0, i64 %0) 
  unreachable
}

declare i32 @vm_deallocate(i32, i64, i64)

declare i8* @pluginInstance(i8*, i32)

declare zeroext i8 @invoke(i8*, i32, i8*, i64, i32, i64*, i32*)

declare void @booleanAndDataReply(i32, i32, i32, i32, i64, i32)

declare i32 @__gxx_personality_v0(...)
