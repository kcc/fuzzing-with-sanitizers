
target triple = "powerpc64-unknown-linux-gnu"

define void @autogen_SD156869(i8*, i64*) {
BB:
  %A3 = alloca <2 x i1>
  %A2 = alloca <8 x i32>
  br label %CF

CF:                                               
  br i1 undef, label %CF, label %CF82.critedge

CF82.critedge:                                    
  store i8 -59, i8* %0
  br label %CF82

CF82:                                             
  %L17 = load i8, i8* %0
  %E18 = extractelement <2 x i64> undef, i32 0
  %PC = bitcast <2 x i1>* %A3 to i64*
  br i1 undef, label %CF82, label %CF84.critedge

CF84.critedge:                                    
  store i64 455385, i64* %PC
  br label %CF84

CF84:                                             
  %L40 = load i64, i64* %PC
  store i64 -1, i64* %PC
  %Sl46 = select i1 undef, i1 undef, i1 false
  br i1 %Sl46, label %CF84, label %CF85

CF85:                                             
  %L47 = load i64, i64* %PC
  store i64 %E18, i64* %PC
  %PC52 = bitcast <8 x i32>* %A2 to ppc_fp128*
  store ppc_fp128 0xM4D436562A0416DE00000000000000000, ppc_fp128* %PC52
  %PC59 = bitcast i64* %1 to i8*
  %Cmp61 = icmp slt i64 %L47, %L40
  br i1 %Cmp61, label %CF, label %CF77

CF77:                                             
  br i1 undef, label %CF77, label %CF81

CF81:                                             
  store i8 %L17, i8* %PC59
  ret void
}
