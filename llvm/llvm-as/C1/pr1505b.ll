


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "i686-apple-darwin8"
	%"struct.std::basic_ios<char,std::char_traits<char> >" = type { %"struct.std::ios_base", %"struct.std::basic_ostream<char,std::char_traits<char> >"*, i8, i8, %"struct.std::basic_streambuf<char,std::char_traits<char> >"*, %"struct.std::ctype<char>"*, %"struct.std::num_get<char,std::istreambuf_iterator<char, std::char_traits<char> > >"*, %"struct.std::num_get<char,std::istreambuf_iterator<char, std::char_traits<char> > >"* }
	%"struct.std::basic_ostream<char,std::char_traits<char> >" = type { i32 (...)**, %"struct.std::basic_ios<char,std::char_traits<char> >" }
	%"struct.std::basic_streambuf<char,std::char_traits<char> >" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"struct.std::locale" }
	%"struct.std::ctype<char>" = type { %"struct.std::locale::facet", i32*, i8, i32*, i32*, i32*, i8, [256 x i8], [256 x i8], i8 }
	%"struct.std::ctype_base" = type <{ i8 }>
	%"struct.std::ios_base" = type { i32 (...)**, i32, i32, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"struct.std::locale" }
	%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"struct.std::ios_base"*, i32)*, i32, i32 }
	%"struct.std::ios_base::_Words" = type { i8*, i32 }
	%"struct.std::locale" = type { %"struct.std::locale::_Impl"* }
	%"struct.std::locale::_Impl" = type { i32, %"struct.std::locale::facet"**, i32, %"struct.std::locale::facet"**, i8** }
	%"struct.std::locale::facet" = type { i32 (...)**, i32 }
	%"struct.std::num_get<char,std::istreambuf_iterator<char, std::char_traits<char> > >" = type { %"struct.std::locale::facet" }
@a = global float 0x3FD3333340000000		
@b = global double 6.000000e-01, align 8		
@_ZSt8__ioinit = internal global %"struct.std::ctype_base" zeroinitializer		
@__dso_handle = external global i8*		
@_ZSt4cout = external global %"struct.std::basic_ostream<char,std::char_traits<char> >"		
@.str = internal constant [12 x i8] c"tan float: \00"		
@.str1 = internal constant [13 x i8] c"tan double: \00"		

declare void @_ZNSt8ios_base4InitD1Ev(%"struct.std::ctype_base"*)

declare void @_ZNSt8ios_base4InitC1Ev(%"struct.std::ctype_base"*)

declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*)


define i32 @main() {
entry:

	%tmp6 = load volatile float, float* @a		


	%tmp9 = tail call float @tanf( float %tmp6 )		




	%tmp12 = load volatile double, double* @b		


	%tmp13 = tail call double @tan( double %tmp12 )		


	%tmp1314 = fptrunc double %tmp13 to float		
	%tmp16 = tail call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc( %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cout, i8* getelementptr ([12 x i8], [12 x i8]* @.str, i32 0, i32 0) )		
	%tmp1920 = fpext float %tmp9 to double		




	%tmp22 = tail call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEd( %"struct.std::basic_ostream<char,std::char_traits<char> >"* %tmp16, double %tmp1920 )		
	%tmp30 = tail call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_( %"struct.std::basic_ostream<char,std::char_traits<char> >"* %tmp22 )		


	%tmp34 = tail call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc( %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cout, i8* getelementptr ([13 x i8], [13 x i8]* @.str1, i32 0, i32 0) )		
	%tmp3940 = fpext float %tmp1314 to double		



	%tmp42 = tail call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEd( %"struct.std::basic_ostream<char,std::char_traits<char> >"* %tmp34, double %tmp3940 )		
	%tmp51 = tail call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_( %"struct.std::basic_ostream<char,std::char_traits<char> >"* %tmp42 )		
	ret i32 0
}

declare float @tanf(float)

declare double @tan(double)

declare %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"*, i8*)

declare %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEd(%"struct.std::basic_ostream<char,std::char_traits<char> >"*, double)

declare %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"struct.std::basic_ostream<char,std::char_traits<char> >"*)
