
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

%"class.llvm::MachineOperand" = type { i8, [3 x i8], i64, i64*, i64 }


define void @_ZN4llvm17ScheduleDAGInstrs14addPhysRegDepsEPNS_5SUnitEj() #0 align 2 {






entry:
  %0 = load %"class.llvm::MachineOperand"*, %"class.llvm::MachineOperand"** undef, align 8
  br i1 undef, label %_ZNK4llvm14MachineOperand6getRegEv.exit, label %cond.false.i123

cond.false.i123:                                  
  unreachable

_ZNK4llvm14MachineOperand6getRegEv.exit:          
  %IsDef.i = getelementptr inbounds %"class.llvm::MachineOperand", %"class.llvm::MachineOperand"* %0, i64 undef, i32 1
  %1 = bitcast [3 x i8]* %IsDef.i to i24*
  %bf.load.i = load i24, i24* %1, align 1
  %2 = and i24 %bf.load.i, 128
  br i1 undef, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   
  %3 = zext i24 %2 to i32
  br i1 undef, label %cond.false.i134, label %_ZNK4llvm18MCRegAliasIteratordeEv.exit

for.cond.cleanup:                                 
  br i1 undef, label %_ZNK4llvm14MachineOperand5isDefEv.exit, label %cond.false.i129

cond.false.i129:                                  
  unreachable

_ZNK4llvm14MachineOperand5isDefEv.exit:           
  br i1 undef, label %_ZNK4llvm14MachineOperand6getRegEv.exit247, label %cond.false.i244

cond.false.i134:                                  
  unreachable

_ZNK4llvm18MCRegAliasIteratordeEv.exit:           
  unreachable

cond.false.i244:                                  
  unreachable

_ZNK4llvm14MachineOperand6getRegEv.exit247:       
  br i1 undef, label %if.then53, label %if.end55

if.then53:                                        
  unreachable

if.end55:                                         
  br i1 undef, label %_ZNK4llvm14MachineOperand6isDeadEv.exit262, label %cond.false.i257

cond.false.i257:                                  
  unreachable

_ZNK4llvm14MachineOperand6isDeadEv.exit262:       
  %bf.load.i259 = load i24, i24* %1, align 1
  br i1 undef, label %if.then57, label %if.else59

if.then57:                                        
  unreachable

if.else59:                                        
  br i1 undef, label %if.end89, label %if.then62

if.then62:                                        
  unreachable

if.end89:                                         
  unreachable
}

attributes #0 = { nounwind }


