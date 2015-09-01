

	%struct.FILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, [4 x i8], i64 }
	%struct.PyBoolScalarObject = type { i64, %struct._typeobject*, i8 }
	%struct.PyBufferProcs = type { i64 (%struct.PyObject*, i64, i8**)*, i64 (%struct.PyObject*, i64, i8**)*, i64 (%struct.PyObject*, i64*)*, i64 (%struct.PyObject*, i64, i8**)* }
	%struct.PyGetSetDef = type { i8*, %struct.PyObject* (%struct.PyObject*, i8*)*, i32 (%struct.PyObject*, %struct.PyObject*, i8*)*, i8*, i8* }
	%struct.PyMappingMethods = type { i64 (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, i32 (%struct.PyObject*, %struct.PyObject*, %struct.PyObject*)* }
	%struct.PyMemberDef = type opaque
	%struct.PyMethodDef = type { i8*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, i32, i8* }
	%struct.PyNumberMethods = type { %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, i32 (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, i32 (%struct.PyObject**, %struct.PyObject**)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)* }
	%struct.PyObject = type { i64, %struct._typeobject* }
	%struct.PySequenceMethods = type { i64 (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, i64)*, %struct.PyObject* (%struct.PyObject*, i64)*, %struct.PyObject* (%struct.PyObject*, i64, i64)*, i32 (%struct.PyObject*, i64, %struct.PyObject*)*, i32 (%struct.PyObject*, i64, i64, %struct.PyObject*)*, i32 (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, i64)* }
	%struct.PyTupleObject = type { i64, %struct._typeobject*, i64, [1 x %struct.PyObject*] }
	%struct.__sFILEX = type opaque
	%struct.__sbuf = type { i8*, i32 }
	%struct._typeobject = type { i64, %struct._typeobject*, i64, i8*, i64, i64, void (%struct.PyObject*)*, i32 (%struct.PyObject*, %struct.FILE*, i32)*, %struct.PyObject* (%struct.PyObject*, i8*)*, i32 (%struct.PyObject*, i8*, %struct.PyObject*)*, i32 (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, i32 (%struct.PyObject*, %struct.PyObject*, %struct.PyObject*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct.PyObject*, i32 (%struct.PyObject*, i8*)*, i8*)*, i32 (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*, i32)*, i64, %struct.PyObject* (%struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct.PyObject*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*, %struct.PyObject*)*, i32 (%struct.PyObject*, %struct.PyObject*, %struct.PyObject*)*, i64, i32 (%struct.PyObject*, %struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct._typeobject*, i64)*, %struct.PyObject* (%struct._typeobject*, %struct.PyObject*, %struct.PyObject*)*, void (i8*)*, i32 (%struct.PyObject*)*, %struct.PyObject*, %struct.PyObject*, %struct.PyObject*, %struct.PyObject*, %struct.PyObject*, void (%struct.PyObject*)* }
@PyArray_API = external global i8**		
@PyUFunc_API = external global i8**		
@.str5 = external constant [14 x i8]		

define %struct.PyObject* @ubyte_divmod(%struct.PyObject* %a, %struct.PyObject* %b) {
entry:
	%arg1 = alloca i8, align 1		
	%arg2 = alloca i8, align 1		
	%first = alloca i32, align 4		
	%bufsize = alloca i32, align 4		
	%errmask = alloca i32, align 4		
	%errobj = alloca %struct.PyObject*, align 8		
	%tmp3.i = call fastcc i32 @_ubyte_convert_to_ctype( %struct.PyObject* %a, i8* %arg1 )		
	%tmp5.i = icmp slt i32 %tmp3.i, 0		
	br i1 %tmp5.i, label %_ubyte_convert2_to_ctypes.exit, label %cond_next.i

cond_next.i:		
	%tmp11.i = call fastcc i32 @_ubyte_convert_to_ctype( %struct.PyObject* %b, i8* %arg2 )		
	%tmp13.i = icmp slt i32 %tmp11.i, 0		
	%retval.i = select i1 %tmp13.i, i32 %tmp11.i, i32 0		
	switch i32 %retval.i, label %bb35 [
		 i32 -2, label %bb17
		 i32 -1, label %bb4
	]

_ubyte_convert2_to_ctypes.exit:		
	switch i32 %tmp3.i, label %bb35 [
		 i32 -2, label %bb17
		 i32 -1, label %bb4
	]

bb4:		
	%tmp5 = load i8**, i8*** @PyArray_API, align 8		
	%tmp6 = getelementptr i8*, i8** %tmp5, i64 2		
	%tmp7 = load i8*, i8** %tmp6		
	%tmp78 = bitcast i8* %tmp7 to %struct._typeobject*		
	%tmp9 = getelementptr %struct._typeobject, %struct._typeobject* %tmp78, i32 0, i32 12		
	%tmp10 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tmp9		
	%tmp11 = getelementptr %struct.PyNumberMethods, %struct.PyNumberMethods* %tmp10, i32 0, i32 5		
	%tmp12 = load %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)** %tmp11		
	%tmp15 = call %struct.PyObject* %tmp12( %struct.PyObject* %a, %struct.PyObject* %b )		
	ret %struct.PyObject* %tmp15

bb17:		
	%tmp18 = call %struct.PyObject* @PyErr_Occurred( )		
	%tmp19 = icmp eq %struct.PyObject* %tmp18, null		
	br i1 %tmp19, label %cond_next, label %UnifiedReturnBlock

cond_next:		
	%tmp22 = load i8**, i8*** @PyArray_API, align 8		
	%tmp23 = getelementptr i8*, i8** %tmp22, i64 10		
	%tmp24 = load i8*, i8** %tmp23		
	%tmp2425 = bitcast i8* %tmp24 to %struct._typeobject*		
	%tmp26 = getelementptr %struct._typeobject, %struct._typeobject* %tmp2425, i32 0, i32 12		
	%tmp27 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tmp26		
	%tmp28 = getelementptr %struct.PyNumberMethods, %struct.PyNumberMethods* %tmp27, i32 0, i32 5		
	%tmp29 = load %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)*, %struct.PyObject* (%struct.PyObject*, %struct.PyObject*)** %tmp28		
	%tmp32 = call %struct.PyObject* %tmp29( %struct.PyObject* %a, %struct.PyObject* %b )		
	ret %struct.PyObject* %tmp32

bb35:		
	%tmp36 = load i8**, i8*** @PyUFunc_API, align 8		
	%tmp37 = getelementptr i8*, i8** %tmp36, i64 27		
	%tmp38 = load i8*, i8** %tmp37		
	%tmp3839 = bitcast i8* %tmp38 to void ()*		
	call void %tmp3839( )
	%tmp40 = load i8, i8* %arg2, align 1		
	%tmp1.i = icmp eq i8 %tmp40, 0		
	br i1 %tmp1.i, label %cond_true.i, label %cond_false.i

cond_true.i:		
	%tmp3.i196 = call i32 @feraiseexcept( i32 4 )		
	%tmp46207 = load i8, i8* %arg2, align 1		
	%tmp48208 = load i8, i8* %arg1, align 1		
	%tmp1.i197210 = icmp eq i8 %tmp48208, 0		
	%tmp4.i212 = icmp eq i8 %tmp46207, 0		
	%tmp7.i198213 = or i1 %tmp1.i197210, %tmp4.i212		
	br i1 %tmp7.i198213, label %cond_true.i200, label %cond_next17.i

cond_false.i:		
	%tmp42 = load i8, i8* %arg1, align 1		
	%tmp7.i = udiv i8 %tmp42, %tmp40		
	%tmp1.i197 = icmp eq i8 %tmp42, 0		
	%tmp7.i198 = or i1 %tmp1.i197, %tmp1.i		
	br i1 %tmp7.i198, label %cond_true.i200, label %cond_next17.i

cond_true.i200:		
	%out.0 = phi i8 [ 0, %cond_true.i ], [ %tmp7.i, %cond_false.i ]		
	%tmp46202.0 = phi i8 [ %tmp46207, %cond_true.i ], [ %tmp40, %cond_false.i ]		
	%tmp11.i199 = icmp eq i8 %tmp46202.0, 0		
	br i1 %tmp11.i199, label %cond_true14.i, label %ubyte_ctype_remainder.exit

cond_true14.i:		
	%tmp15.i = call i32 @feraiseexcept( i32 4 )		
	br label %ubyte_ctype_remainder.exit

cond_next17.i:		
	%out.1 = phi i8 [ 0, %cond_true.i ], [ %tmp7.i, %cond_false.i ]		
	%tmp46202.1 = phi i8 [ %tmp46207, %cond_true.i ], [ %tmp40, %cond_false.i ]		
	%tmp48205.1 = phi i8 [ %tmp48208, %cond_true.i ], [ %tmp42, %cond_false.i ]		
	%tmp20.i = urem i8 %tmp48205.1, %tmp46202.1		
	br label %ubyte_ctype_remainder.exit

ubyte_ctype_remainder.exit:		
	%out2.0 = phi i8 [ %tmp20.i, %cond_next17.i ], [ 0, %cond_true14.i ], [ 0, %cond_true.i200 ]		
	%out.2 = phi i8 [ %out.1, %cond_next17.i ], [ %out.0, %cond_true14.i ], [ %out.0, %cond_true.i200 ]		
	%tmp52 = load i8**, i8*** @PyUFunc_API, align 8		
	%tmp53 = getelementptr i8*, i8** %tmp52, i64 28		
	%tmp54 = load i8*, i8** %tmp53		
	%tmp5455 = bitcast i8* %tmp54 to i32 ()*		
	%tmp56 = call i32 %tmp5455( )		
	%tmp58 = icmp eq i32 %tmp56, 0		
	br i1 %tmp58, label %cond_next89, label %cond_true61

cond_true61:		
	%tmp62 = load i8**, i8*** @PyUFunc_API, align 8		
	%tmp63 = getelementptr i8*, i8** %tmp62, i64 25		
	%tmp64 = load i8*, i8** %tmp63		
	%tmp6465 = bitcast i8* %tmp64 to i32 (i8*, i32*, i32*, %struct.PyObject**)*		
	%tmp67 = call i32 %tmp6465( i8* getelementptr ([14 x i8], [14 x i8]* @.str5, i32 0, i64 0), i32* %bufsize, i32* %errmask, %struct.PyObject** %errobj )		
	%tmp68 = icmp slt i32 %tmp67, 0		
	br i1 %tmp68, label %UnifiedReturnBlock, label %cond_next73

cond_next73:		
	store i32 1, i32* %first, align 4
	%tmp74 = load i8**, i8*** @PyUFunc_API, align 8		
	%tmp75 = getelementptr i8*, i8** %tmp74, i64 29		
	%tmp76 = load i8*, i8** %tmp75		
	%tmp7677 = bitcast i8* %tmp76 to i32 (i32, %struct.PyObject*, i32, i32*)*		
	%tmp79 = load %struct.PyObject*, %struct.PyObject** %errobj, align 8		
	%tmp80 = load i32, i32* %errmask, align 4		
	%tmp82 = call i32 %tmp7677( i32 %tmp80, %struct.PyObject* %tmp79, i32 %tmp56, i32* %first )		
	%tmp83 = icmp eq i32 %tmp82, 0		
	br i1 %tmp83, label %cond_next89, label %UnifiedReturnBlock

cond_next89:		
	%tmp90 = call %struct.PyObject* @PyTuple_New( i64 2 )		
	%tmp92 = icmp eq %struct.PyObject* %tmp90, null		
	br i1 %tmp92, label %UnifiedReturnBlock, label %cond_next97

cond_next97:		
	%tmp98 = load i8**, i8*** @PyArray_API, align 8		
	%tmp99 = getelementptr i8*, i8** %tmp98, i64 25		
	%tmp100 = load i8*, i8** %tmp99		
	%tmp100101 = bitcast i8* %tmp100 to %struct._typeobject*		
	%tmp102 = getelementptr %struct._typeobject, %struct._typeobject* %tmp100101, i32 0, i32 38		
	%tmp103 = load %struct.PyObject* (%struct._typeobject*, i64)*, %struct.PyObject* (%struct._typeobject*, i64)** %tmp102		
	%tmp108 = call %struct.PyObject* %tmp103( %struct._typeobject* %tmp100101, i64 0 )		
	%tmp110 = icmp eq %struct.PyObject* %tmp108, null		
	br i1 %tmp110, label %cond_true113, label %cond_next135

cond_true113:		
	%tmp115 = getelementptr %struct.PyObject, %struct.PyObject* %tmp90, i32 0, i32 0		
	%tmp116 = load i64, i64* %tmp115		
	%tmp117 = add i64 %tmp116, -1		
	store i64 %tmp117, i64* %tmp115
	%tmp123 = icmp eq i64 %tmp117, 0		
	br i1 %tmp123, label %cond_true126, label %UnifiedReturnBlock

cond_true126:		
	%tmp128 = getelementptr %struct.PyObject, %struct.PyObject* %tmp90, i32 0, i32 1		
	%tmp129 = load %struct._typeobject*, %struct._typeobject** %tmp128		
	%tmp130 = getelementptr %struct._typeobject, %struct._typeobject* %tmp129, i32 0, i32 6		
	%tmp131 = load void (%struct.PyObject*)*, void (%struct.PyObject*)** %tmp130		
	call void %tmp131( %struct.PyObject* %tmp90 )
	ret %struct.PyObject* null

cond_next135:		
	%tmp136137 = bitcast %struct.PyObject* %tmp108 to %struct.PyBoolScalarObject*		
	%tmp139 = getelementptr %struct.PyBoolScalarObject, %struct.PyBoolScalarObject* %tmp136137, i32 0, i32 2		
	store i8 %out.2, i8* %tmp139
	%tmp140141 = bitcast %struct.PyObject* %tmp90 to %struct.PyTupleObject*		
	%tmp143 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %tmp140141, i32 0, i32 3, i64 0		
	store %struct.PyObject* %tmp108, %struct.PyObject** %tmp143
	%tmp145 = load i8**, i8*** @PyArray_API, align 8		
	%tmp146 = getelementptr i8*, i8** %tmp145, i64 25		
	%tmp147 = load i8*, i8** %tmp146		
	%tmp147148 = bitcast i8* %tmp147 to %struct._typeobject*		
	%tmp149 = getelementptr %struct._typeobject, %struct._typeobject* %tmp147148, i32 0, i32 38		
	%tmp150 = load %struct.PyObject* (%struct._typeobject*, i64)*, %struct.PyObject* (%struct._typeobject*, i64)** %tmp149		
	%tmp155 = call %struct.PyObject* %tmp150( %struct._typeobject* %tmp147148, i64 0 )		
	%tmp157 = icmp eq %struct.PyObject* %tmp155, null		
	br i1 %tmp157, label %cond_true160, label %cond_next182

cond_true160:		
	%tmp162 = getelementptr %struct.PyObject, %struct.PyObject* %tmp90, i32 0, i32 0		
	%tmp163 = load i64, i64* %tmp162		
	%tmp164 = add i64 %tmp163, -1		
	store i64 %tmp164, i64* %tmp162
	%tmp170 = icmp eq i64 %tmp164, 0		
	br i1 %tmp170, label %cond_true173, label %UnifiedReturnBlock

cond_true173:		
	%tmp175 = getelementptr %struct.PyObject, %struct.PyObject* %tmp90, i32 0, i32 1		
	%tmp176 = load %struct._typeobject*, %struct._typeobject** %tmp175		
	%tmp177 = getelementptr %struct._typeobject, %struct._typeobject* %tmp176, i32 0, i32 6		
	%tmp178 = load void (%struct.PyObject*)*, void (%struct.PyObject*)** %tmp177		
	call void %tmp178( %struct.PyObject* %tmp90 )
	ret %struct.PyObject* null

cond_next182:		
	%tmp183184 = bitcast %struct.PyObject* %tmp155 to %struct.PyBoolScalarObject*		
	%tmp186 = getelementptr %struct.PyBoolScalarObject, %struct.PyBoolScalarObject* %tmp183184, i32 0, i32 2		
	store i8 %out2.0, i8* %tmp186
	%tmp190 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %tmp140141, i32 0, i32 3, i64 1		
	store %struct.PyObject* %tmp155, %struct.PyObject** %tmp190
	ret %struct.PyObject* %tmp90

UnifiedReturnBlock:		
	ret %struct.PyObject* null
}

declare i32 @feraiseexcept(i32)

declare fastcc i32 @_ubyte_convert_to_ctype(%struct.PyObject*, i8*)

declare %struct.PyObject* @PyErr_Occurred()

declare %struct.PyObject* @PyTuple_New(i64)
