


	%struct.__class_type_info_pseudo = type { %struct.__type_info_pseudo }
	%struct.__type_info_pseudo = type { i8*, i8* }
@_ZTI2e1 = external constant %struct.__class_type_info_pseudo		

define void @_Z7ex_testv() personality i32 (...)* @__gxx_personality_v0 {
entry:
	invoke void @__cxa_throw( i8* null, i8* bitcast (%struct.__class_type_info_pseudo* @_ZTI2e1 to i8*), void (i8*)* null ) noreturn 
			to label %UnifiedUnreachableBlock unwind label %lpad

bb14:		
	unreachable

lpad:		
        %lpad1 = landingpad { i8*, i32 }
                  catch i8* null
	invoke void @__cxa_end_catch( )
			to label %bb14 unwind label %lpad17

lpad17:		
        %lpad2 = landingpad { i8*, i32 }
                  catch i8* null
	unreachable

UnifiedUnreachableBlock:		
	unreachable
}

declare void @__cxa_throw(i8*, i8*, void (i8*)*) noreturn 

declare void @__cxa_end_catch()

declare i32 @__gxx_personality_v0(...)
