

	%"struct.std::ctype<char>" = type { %"struct.std::locale::facet", i32*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
	%"struct.std::locale::facet" = type { i32 (...)**, i32 }

declare i32* @_ZNSt6locale5facet15_S_get_c_localeEv()

declare i32** @__ctype_toupper_loc() readnone 

declare i32** @__ctype_tolower_loc() readnone 

define void @_ZNSt5ctypeIcEC2EPiPKtbm(%"struct.std::ctype<char>"* %this, i32* %unnamed_arg, i16* %__table, i8 zeroext  %__del, i64 %__refs) personality i32 (...)* @__gxx_personality_v0 {
entry:
	%tmp8 = invoke i32* @_ZNSt6locale5facet15_S_get_c_localeEv( )
			to label %invcont unwind label %lpad		

invcont:		
	%tmp32 = invoke i32** @__ctype_toupper_loc( ) readnone 
			to label %invcont31 unwind label %lpad		

invcont31:		
	%tmp38 = invoke i32** @__ctype_tolower_loc( ) readnone 
			to label %invcont37 unwind label %lpad		

invcont37:		
	%tmp39 = load i32*, i32** %tmp38, align 8		
	%tmp41 = getelementptr %"struct.std::ctype<char>", %"struct.std::ctype<char>"* %this, i32 0, i32 4		
	store i32* %tmp39, i32** %tmp41, align 8
	ret void

lpad:		
        %exn = landingpad {i8*, i32}
                 cleanup
	unreachable
}

declare i32 @__gxx_personality_v0(...)
