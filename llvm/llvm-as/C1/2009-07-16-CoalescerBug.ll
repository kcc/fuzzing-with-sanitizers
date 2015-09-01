


	%struct.brinfo = type <{ %struct.brinfo*, %struct.brinfo*, i8*, i32, i32, i32, i8, i8, i8, i8 }>
	%struct.cadata = type <{ i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.cmatcher*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8, i8, i8, i8 }>
	%struct.cline = type <{ %struct.cline*, i32, i8, i8, i8, i8, i8*, i32, i8, i8, i8, i8, i8*, i32, i8, i8, i8, i8, i8*, i32, i32, %struct.cline*, %struct.cline*, i32, i32 }>
	%struct.cmatch = type <{ i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8, i8, i8, i8, i32*, i32*, i8*, i8*, i32, i32, i32, i32, i16, i8, i8, i16, i8, i8 }>
	%struct.cmatcher = type <{ i32, i8, i8, i8, i8, %struct.cmatcher*, i32, i8, i8, i8, i8, %struct.cpattern*, i32, i8, i8, i8, i8, %struct.cpattern*, i32, i8, i8, i8, i8, %struct.cpattern*, i32, i8, i8, i8, i8, %struct.cpattern*, i32, i8, i8, i8, i8 }>
	%struct.cpattern = type <{ %struct.cpattern*, i32, i8, i8, i8, i8, %union.anon }>
	%struct.patprog = type <{ i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }>
	%union.anon = type <{ [8 x i8] }>

define i32 @addmatches(%struct.cadata* %dat, i8** nocapture %argv) nounwind ssp {
entry:
	br i1 undef, label %if.else, label %if.then91

if.then91:		
	br label %if.end96

if.else:		
	br label %if.end96

if.end96:		
	br i1 undef, label %lor.lhs.false, label %if.then105

lor.lhs.false:		
	br i1 undef, label %if.else139, label %if.then105

if.then105:		
	unreachable

if.else139:		
	br i1 undef, label %land.end, label %land.rhs

land.rhs:		
	unreachable

land.end:		
	br i1 undef, label %land.lhs.true285, label %if.then315

land.lhs.true285:		
	br i1 undef, label %if.end324, label %if.then322

if.then315:		
	unreachable

if.then322:		
	unreachable

if.end324:		
	br i1 undef, label %if.end384, label %if.then358

if.then358:		
	unreachable

if.end384:		
	br i1 undef, label %if.end394, label %land.lhs.true387

land.lhs.true387:		
	unreachable

if.end394:		
	br i1 undef, label %if.end498, label %land.lhs.true399

land.lhs.true399:		
	br i1 undef, label %if.end498, label %if.then406

if.then406:		
	unreachable

if.end498:		
	br i1 undef, label %if.end514, label %if.then503

if.then503:		
	unreachable

if.end514:		
	br i1 undef, label %if.end585, label %if.then520

if.then520:		
	br i1 undef, label %lor.lhs.false547, label %if.then560

lor.lhs.false547:		
	unreachable

if.then560:		
	br i1 undef, label %if.end585, label %land.lhs.true566

land.lhs.true566:		
	br i1 undef, label %if.end585, label %if.then573

if.then573:		
	unreachable

if.end585:		
	br i1 undef, label %cond.true593, label %cond.false599

cond.true593:		
	unreachable

cond.false599:		
	br i1 undef, label %if.end647, label %if.then621

if.then621:		
	br i1 undef, label %cond.true624, label %cond.false630

cond.true624:		
	br label %if.end647

cond.false630:		
	unreachable

if.end647:		
	br i1 undef, label %if.end723, label %if.then701

if.then701:		
	br label %if.end723

if.end723:		
	br i1 undef, label %if.else1090, label %if.then729

if.then729:		
	br i1 undef, label %if.end887, label %if.then812

if.then812:		
	unreachable

if.end887:		
	br i1 undef, label %if.end972, label %if.then893

if.then893:		
	br i1 undef, label %if.end919, label %if.then903

if.then903:		
	unreachable

if.end919:		
	br label %if.end972

if.end972:		
	%sline.0 = phi %struct.cline* [ undef, %if.end919 ], [ null, %if.end887 ]		
	%bcs.0 = phi i32 [ undef, %if.end919 ], [ 0, %if.end887 ]		
	br i1 undef, label %if.end1146, label %land.lhs.true975

land.lhs.true975:		
	br i1 undef, label %if.end1146, label %if.then980

if.then980:		
	br i1 undef, label %cond.false1025, label %cond.false1004

cond.false1004:		
	unreachable

cond.false1025:		
	br i1 undef, label %if.end1146, label %if.then1071

if.then1071:		
	br i1 undef, label %if.then1074, label %if.end1081

if.then1074:		
	br label %if.end1081

if.end1081:		
	%call1083 = call %struct.patprog* @patcompile(i8* undef, i32 0, i8** null) nounwind ssp		
	br i1 undef, label %if.end1146, label %if.then1086

if.then1086:		
	br label %if.end1146

if.else1090:		
	br i1 undef, label %if.end1146, label %land.lhs.true1093

land.lhs.true1093:		
	br i1 undef, label %if.end1146, label %if.then1098

if.then1098:		
	unreachable

if.end1146:		
	%cp.0 = phi %struct.patprog* [ %call1083, %if.then1086 ], [ null, %if.end972 ], [ null, %land.lhs.true975 ], [ null, %cond.false1025 ], [ %call1083, %if.end1081 ], [ null, %if.else1090 ], [ null, %land.lhs.true1093 ]		
	%sline.1 = phi %struct.cline* [ %sline.0, %if.then1086 ], [ %sline.0, %if.end972 ], [ %sline.0, %land.lhs.true975 ], [ %sline.0, %cond.false1025 ], [ %sline.0, %if.end1081 ], [ null, %if.else1090 ], [ null, %land.lhs.true1093 ]		
	%bcs.1 = phi i32 [ %bcs.0, %if.then1086 ], [ %bcs.0, %if.end972 ], [ %bcs.0, %land.lhs.true975 ], [ %bcs.0, %cond.false1025 ], [ %bcs.0, %if.end1081 ], [ 0, %if.else1090 ], [ 0, %land.lhs.true1093 ]		
	br i1 undef, label %if.end1307, label %do.body1270

do.body1270:		
	unreachable

if.end1307:		
	br i1 undef, label %if.end1318, label %if.then1312

if.then1312:		
	unreachable

if.end1318:		
	br i1 undef, label %for.cond1330.preheader, label %if.then1323

if.then1323:		
	unreachable

for.cond1330.preheader:		
	%call1587 = call i8* @comp_match(i8* undef, i8* undef, i8* undef, %struct.patprog* %cp.0, %struct.cline** undef, i32 0, %struct.brinfo** undef, i32 0, %struct.brinfo** undef, i32 %bcs.1, i32* undef) nounwind ssp		
	%call1667 = call %struct.cmatch* @add_match_data(i32 0, i8* undef, i8* undef, %struct.cline* undef, i8* undef, i8* null, i8* undef, i8* undef, i8* undef, i8* undef, %struct.cline* null, i8* undef, %struct.cline* %sline.1, i8* undef, i32 undef, i32 undef) ssp		
	unreachable
}

declare %struct.patprog* @patcompile(i8*, i32, i8**) ssp

declare i8* @comp_match(i8*, i8*, i8*, %struct.patprog*, %struct.cline**, i32, %struct.brinfo**, i32, %struct.brinfo**, i32, i32*) ssp

declare %struct.cmatch* @add_match_data(i32, i8*, i8*, %struct.cline*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.cline*, i8*, %struct.cline*, i8*, i32, i32) nounwind ssp
