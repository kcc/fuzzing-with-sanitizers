
target datalayout = "e-p:32:32"
	%struct..CppObjTypeDesc = type { i32, i16, i16 }
	%struct..TypeToken = type { i32, i16, i16 }

define i32 @C_ReFaxToDb() {
entry:
	br i1 false, label %endif.0, label %then.0

then.0:		
	ret i32 0

endif.0:		
	br i1 false, label %then.11, label %then.4

then.4:		
	ret i32 0

then.11:		
	br i1 false, label %loopentry.0, label %else.2

loopentry.0:		
	br i1 false, label %endif.14, label %loopexit.0

endif.14:		
	br i1 false, label %loopentry.1, label %loopentry.0

loopentry.1:		
	%SubArrays.10 = phi i32* [ %SubArrays.8, %then.53 ], [ null, %endif.14 ]		
	br i1 false, label %no_exit.1, label %loopentry.0

no_exit.1:		
	switch i32 0, label %label.17 [
		 i32 2, label %label.11
		 i32 19, label %label.10
	]

label.10:		
	br i1 false, label %then.43, label %endif.43

then.43:		
	br i1 false, label %then.44, label %endif.44

then.44:		
	br i1 false, label %shortcirc_next.4, label %endif.45

shortcirc_next.4:		
	br i1 false, label %no_exit.2, label %loopexit.2

no_exit.2:		
	%tmp.897 = getelementptr i32, i32* %SubArrays.10, i64 0		
	%tmp.899 = load i32, i32* %tmp.897		
	store i32 %tmp.899, i32* null
	ret i32 0

loopexit.2:		
	ret i32 0

endif.45:		
	ret i32 0

endif.44:		
	ret i32 0

endif.43:		
	ret i32 0

label.11:		
	ret i32 0

label.17:		
	br i1 false, label %then.53, label %shortcirc_next.7

shortcirc_next.7:		
	br i1 false, label %then.53, label %shortcirc_next.8

shortcirc_next.8:		
	ret i32 0

then.53:		
	%SubArrays.8 = phi i32* [ %SubArrays.10, %shortcirc_next.7 ], [ %SubArrays.10, %label.17 ]		
	%tmp.1023 = load i32, i32* null		
	switch i32 %tmp.1023, label %loopentry.1 [
	]

loopexit.0:		
	ret i32 0

else.2:		
	ret i32 0
}
