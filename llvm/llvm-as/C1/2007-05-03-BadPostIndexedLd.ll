

	%struct.Connection = type { i32, [10 x i8], i32 }
	%struct.IntChunk = type { %struct.cppobjtype, i32, i32*, i32 }
	%struct.Point = type { i8*, %struct.cppobjtype, i16 (%struct.Point*)  *, i16 (%struct.Point*)  *, double (%struct.Point*)*, double (%struct.Point*)* }
	%struct.RefPoint = type { %struct.Point*, %struct.cppobjtype }
	%struct.ShortArray = type { %struct.cppobjtype, i32, i16* }
	%struct.TestObj = type { i8*, %struct.cppobjtype, i8, [32 x i8], i8*, i8**, i16, i16, i32, i32, i32, i32, float, double, %struct.cppobjtype, i32, i16*, i16**, i8**, i32, %struct.XyPoint, [3 x %struct.Connection], %struct.Point*, %struct.XyPoint*, i32, i8*, i8*, i16*, %struct.ShortArray, %struct.IntChunk, %struct.cppobjtype, %struct.cppobjtype, %struct.RefPoint, i32, %struct.cppobjtype, %struct.cppobjtype }
	%struct.XyPoint = type { i16, i16 }
	%struct.cppobjtype = type { i32, i16, i16 }
@Msg = external global [256 x i8]		
@.str53615 = external constant [48 x i8]		
@FirstTime.4637.b = external global i1		

define fastcc void @Draw7(i32 %Option, i32* %Status) {
entry:
	%tmp115.b = load i1, i1* @FirstTime.4637.b		
	br i1 %tmp115.b, label %cond_next239, label %cond_next.i

cond_next.i:		
	ret void

cond_next239:		
	%tmp242 = icmp eq i32 0, 0		
	br i1 %tmp242, label %cond_next253, label %cond_next296

cond_next253:		
	switch i32 %Option, label %bb1326 [
		 i32 3, label %cond_true258
		 i32 4, label %cond_true268
		 i32 2, label %cond_true279
		 i32 1, label %cond_next315
	]

cond_true258:		
	ret void

cond_true268:		
	ret void

cond_true279:		
	ret void

cond_next296:		
	ret void

cond_next315:		
	%tmp1140 = icmp eq i32 0, 0		
	br i1 %tmp1140, label %cond_true1143, label %bb1326

cond_true1143:		
	%tmp1148 = icmp eq i32 0, 0		
	br i1 %tmp1148, label %cond_next1153, label %cond_true1151

cond_true1151:		
	ret void

cond_next1153:		
	%tmp8.i.i185 = icmp eq i32 0, 0		
	br i1 %tmp8.i.i185, label %TestObj_new1.exit, label %cond_true.i.i187

cond_true.i.i187:		
	ret void

TestObj_new1.exit:		
	%tmp1167 = icmp eq i16 0, 0		
	%tmp1178 = icmp eq i32 0, 0		
	%bothcond = and i1 %tmp1167, %tmp1178		
	br i1 %bothcond, label %bb1199, label %bb1181

bb1181:		
	ret void

bb1199:		
	br i1 %tmp1148, label %cond_next1235, label %Object_Dump.exit302

Object_Dump.exit302:		
	ret void

cond_next1235:		
	%bothcond10485 = or i1 false, %tmp1148		
	br i1 %bothcond10485, label %cond_next1267, label %cond_true1248

cond_true1248:		
	ret void

cond_next1267:		
	br i1 %tmp1148, label %cond_next1275, label %cond_true1272

cond_true1272:		
	%tmp1273 = load %struct.TestObj*, %struct.TestObj** null		
	%tmp2930.i = ptrtoint %struct.TestObj* %tmp1273 to i32		
	%tmp42.i348 = sub i32 0, %tmp2930.i		
	%tmp45.i = getelementptr %struct.TestObj, %struct.TestObj* %tmp1273, i32 0, i32 0		
	%tmp48.i = load i8*, i8** %tmp45.i		
	%tmp50.i350 = call i32 (i8*, i8*, ...) @sprintf( i8* getelementptr ([256 x i8], [256 x i8]* @Msg, i32 0, i32 0), i8* getelementptr ([48 x i8], [48 x i8]* @.str53615, i32 0, i32 0), i8* null, i8** %tmp45.i, i8* %tmp48.i )		
	br i1 false, label %cond_true.i632.i, label %Ut_TraceMsg.exit648.i

cond_true.i632.i:		
	ret void

Ut_TraceMsg.exit648.i:		
	%tmp57.i = getelementptr i8, i8* null, i32 %tmp42.i348		
	ret void

cond_next1275:		
	ret void

bb1326:		
	ret void
}

declare i32 @sprintf(i8*, i8*, ...)
