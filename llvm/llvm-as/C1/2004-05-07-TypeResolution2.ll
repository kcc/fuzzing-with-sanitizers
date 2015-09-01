


target datalayout = "e-p:32:32"
	%myint = type i16
	%struct1 = type { i32, void (%struct2*)*, i16*, i32 (i32*)* }
	%struct2 = type { %struct1 }

define internal void @f1(%struct1* %tty) {
loopentry.preheader:
	%tmp.2.i.i = getelementptr %struct1, %struct1* %tty, i64 0, i32 1		
	%tmp.3.i.i = load volatile void (%struct2*)*, void (%struct2*)** %tmp.2.i.i		
	ret void
}

