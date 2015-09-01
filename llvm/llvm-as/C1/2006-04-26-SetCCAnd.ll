

@G = external global i16		

define void @OmNewObjHdr() {
entry:
	br i1 false, label %endif.4, label %then.0

then.0:		
	ret void

endif.4:		
	br i1 false, label %else.3, label %shortcirc_next.3

shortcirc_next.3:		
	ret void

else.3:		
	switch i32 0, label %endif.10 [
		 i32 5001, label %then.10
		 i32 -5008, label %then.10
	]

then.10:		
	%tmp.112 = load i16, i16* null		
	%tmp.113 = load i16, i16* @G		
	%tmp.114 = icmp ugt i16 %tmp.112, %tmp.113		
	%tmp.120 = icmp ult i16 %tmp.112, %tmp.113		
	%bothcond = and i1 %tmp.114, %tmp.120		
	br i1 %bothcond, label %else.4, label %then.11

then.11:		
	ret void

else.4:		
	ret void

endif.10:		
	ret void
}
