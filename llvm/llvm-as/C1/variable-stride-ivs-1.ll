


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "x86_64-undermydesk-freebsd8.0"
	%struct.mbuf = type <{ %struct.mbuf*, i8*, i32, i8, i8, i8, i8 }>

define i32 @crash(%struct.mbuf* %m) nounwind {
entry:
	br label %for.cond

for.cond:		
	%i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ]		
	%chksum.0 = phi i8 [ 0, %entry ], [ %conv3, %if.end ]		
	%cmp = icmp slt i32 %i.0, 1		
	br i1 %cmp, label %for.body, label %do.body

for.body:		
	br i1 undef, label %if.end, label %do.body

if.end:		
	%i.02 = trunc i32 %i.0 to i8		
	%conv3 = add i8 %chksum.0, %i.02		
	%inc = add i32 %i.0, 1		
	br label %for.cond

do.body:		
	%chksum.2 = phi i8 [ undef, %do.cond ], [ %chksum.0, %for.body ], [ %chksum.0, %for.cond ]		
	br i1 undef, label %do.cond, label %bb.nph

bb.nph:		
	br label %while.body

while.body:		
	%chksum.13 = phi i8 [ undef, %while.body ], [ %chksum.2, %bb.nph ]		
	br i1 undef, label %do.cond, label %while.body

do.cond:		
	br i1 false, label %do.end, label %do.body

do.end:		
	ret i32 0
}
