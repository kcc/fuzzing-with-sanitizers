



%0 = type { i8*, i8* }
%1 = type { i8*, i8*, i8* }
%"class.llvm::Record" = type { i32, %"class.std::basic_string", %"class.llvm::SMLoc", %"class.std::vector", %"class.std::vector", %"class.std::vector" }
%"class.llvm::RecordVal" = type { %"class.std::basic_string", %"struct.llvm::Init"*, i32, %"struct.llvm::Init"* }
%"class.llvm::SMLoc" = type { i8* }
%"class.llvm::StringInit" = type { [8 x i8], %"class.std::basic_string" }
%"class.std::basic_string" = type { %"class.llvm::SMLoc" }
%"class.std::vector" = type { [12 x i8] }
%"struct.llvm::Init" = type { i32 (...)** }

@_ZTIN4llvm5RecTyE = external constant %0         
@_ZTIN4llvm4InitE = external constant %0          
@_ZTIN4llvm11RecordRecTyE = external constant %1  
@.str8 = external constant [47 x i8]              
@_ZTIN4llvm9UnsetInitE = external constant %1     
@.str51 = external constant [45 x i8]             
@__PRETTY_FUNCTION__._ZNK4llvm7VarInit12getFieldInitERNS_6RecordEPKNS_9RecordValERKSs = external constant [116 x i8] 

@_ZN4llvm9RecordValC1ERKSsPNS_5RecTyEj = alias void (%"class.llvm::RecordVal"*, %"class.std::basic_string"*, %"struct.llvm::Init"*, i32)* @_ZN4llvm9RecordValC2ERKSsPNS_5RecTyEj 

declare i8* @__dynamic_cast(i8*, i8*, i8*, i32)

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn

declare void @_ZN4llvm9RecordValC2ERKSsPNS_5RecTyEj(%"class.llvm::RecordVal"*, %"class.std::basic_string"*, %"struct.llvm::Init"*, i32) align 2

define %"struct.llvm::Init"* @_ZNK4llvm7VarInit12getFieldInitERNS_6RecordEPKNS_9RecordValERKSs(%"class.llvm::StringInit"* %this, %"class.llvm::Record"* %R, %"class.llvm::RecordVal"* %RV, %"class.std::basic_string"* %FieldName) align 2 {


entry:
  %.loc = alloca i32                              
  %tmp.i = getelementptr inbounds %"class.llvm::StringInit", %"class.llvm::StringInit"* %this, i32 0, i32 0, i32 4 
  %0 = bitcast i8* %tmp.i to %"struct.llvm::Init"** 
  %tmp2.i = load %"struct.llvm::Init"*, %"struct.llvm::Init"** %0        
  %1 = icmp eq %"struct.llvm::Init"* %tmp2.i, null 
  br i1 %1, label %entry.return_crit_edge, label %tmpbb

entry.return_crit_edge:                           
  br label %return

tmpbb:                                            
  %2 = bitcast %"struct.llvm::Init"* %tmp2.i to i8* 
  %3 = tail call i8* @__dynamic_cast(i8* %2, i8* bitcast (%0* @_ZTIN4llvm5RecTyE to i8*), i8* bitcast (%1* @_ZTIN4llvm11RecordRecTyE to i8*), i32 -1) 
  %phitmp = icmp eq i8* %3, null                  
  br i1 %phitmp, label %.return_crit_edge, label %if.then

.return_crit_edge:                                
  br label %return

if.then:                                          
  %tmp2.i.i.i.i = getelementptr inbounds %"class.llvm::StringInit", %"class.llvm::StringInit"* %this, i32 0, i32 1, i32 0, i32 0 
  %tmp3.i.i.i.i = load i8*, i8** %tmp2.i.i.i.i         
  %arrayidx.i.i.i.i = getelementptr inbounds i8, i8* %tmp3.i.i.i.i, i32 -12 
  %tmp.i.i.i = bitcast i8* %arrayidx.i.i.i.i to i32* 
  %tmp2.i.i.i = load i32, i32* %tmp.i.i.i              
  %tmp.i5 = getelementptr inbounds %"class.llvm::Record", %"class.llvm::Record"* %R, i32 0, i32 4 
  %tmp2.i.i = getelementptr inbounds %"class.llvm::Record", %"class.llvm::Record"* %R, i32 0, i32 4, i32 0, i32 4 
  %4 = bitcast i8* %tmp2.i.i to %"class.llvm::RecordVal"** 
  %tmp3.i.i6 = load %"class.llvm::RecordVal"*, %"class.llvm::RecordVal"** %4 
  %tmp5.i.i = bitcast %"class.std::vector"* %tmp.i5 to %"class.llvm::RecordVal"** 
  %tmp6.i.i = load %"class.llvm::RecordVal"*, %"class.llvm::RecordVal"** %tmp5.i.i 
  %sub.ptr.lhs.cast.i.i = ptrtoint %"class.llvm::RecordVal"* %tmp3.i.i6 to i32 
  %sub.ptr.rhs.cast.i.i = ptrtoint %"class.llvm::RecordVal"* %tmp6.i.i to i32 
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i 
  %sub.ptr.div.i.i = ashr i32 %sub.ptr.sub.i.i, 4 
  br label %codeRepl

codeRepl:                                         
  %targetBlock = call i1 @_ZNK4llvm7VarInit12getFieldInitERNS_6RecordEPKNS_9RecordValERKSs_for.cond.i(i32 %sub.ptr.div.i.i, %"class.llvm::RecordVal"* %tmp6.i.i, i32 %tmp2.i.i.i, i8* %tmp3.i.i.i.i, i32* %.loc) 
  %.reload = load i32, i32* %.loc                      
  br i1 %targetBlock, label %for.cond.i.return_crit_edge, label %_ZN4llvm6Record8getValueENS_9StringRefE.exit

for.cond.i.return_crit_edge:                      
  br label %return

_ZN4llvm6Record8getValueENS_9StringRefE.exit:     
  %add.ptr.i.i = getelementptr inbounds %"class.llvm::RecordVal", %"class.llvm::RecordVal"* %tmp6.i.i, i32 %.reload 
  %tobool5 = icmp eq %"class.llvm::RecordVal"* %add.ptr.i.i, null 
  br i1 %tobool5, label %_ZN4llvm6Record8getValueENS_9StringRefE.exit.return_crit_edge, label %if.then6

_ZN4llvm6Record8getValueENS_9StringRefE.exit.return_crit_edge: 
  br label %return

if.then6:                                         
  %cmp = icmp eq %"class.llvm::RecordVal"* %add.ptr.i.i, %RV 
  br i1 %cmp, label %if.then6.if.end_crit_edge, label %land.lhs.true

if.then6.if.end_crit_edge:                        
  br label %if.end

land.lhs.true:                                    
  %tobool10 = icmp eq %"class.llvm::RecordVal"* %RV, null 
  br i1 %tobool10, label %lor.lhs.false, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   
  br label %return

lor.lhs.false:                                    
  %tmp.i3 = getelementptr inbounds %"class.llvm::RecordVal", %"class.llvm::RecordVal"* %tmp6.i.i, i32 %.reload, i32 3 
  %tmp2.i4 = load %"struct.llvm::Init"*, %"struct.llvm::Init"** %tmp.i3  
  %5 = icmp eq %"struct.llvm::Init"* %tmp2.i4, null 
  br i1 %5, label %lor.lhs.false.if.end_crit_edge, label %tmpbb1

lor.lhs.false.if.end_crit_edge:                   
  br label %if.end

tmpbb1:                                           
  %6 = bitcast %"struct.llvm::Init"* %tmp2.i4 to i8* 
  %7 = tail call i8* @__dynamic_cast(i8* %6, i8* bitcast (%0* @_ZTIN4llvm4InitE to i8*), i8* bitcast (%1* @_ZTIN4llvm9UnsetInitE to i8*), i32 -1) 
  %phitmp32 = icmp eq i8* %7, null                
  br i1 %phitmp32, label %.if.end_crit_edge, label %.return_crit_edge1

.return_crit_edge1:                               
  br label %return

.if.end_crit_edge:                                
  br label %if.end

if.end:                                           
  %tmp.i1 = getelementptr inbounds %"class.llvm::RecordVal", %"class.llvm::RecordVal"* %tmp6.i.i, i32 %.reload, i32 3 
  %tmp2.i2 = load %"struct.llvm::Init"*, %"struct.llvm::Init"** %tmp.i1  
  %8 = bitcast %"class.llvm::StringInit"* %this to %"struct.llvm::Init"* 
  %cmp19 = icmp eq %"struct.llvm::Init"* %tmp2.i2, %8 
  br i1 %cmp19, label %cond.false, label %cond.end

cond.false:                                       
  tail call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str8, i32 0, i32 0), i32 1141, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @__PRETTY_FUNCTION__._ZNK4llvm7VarInit12getFieldInitERNS_6RecordEPKNS_9RecordValERKSs, i32 0, i32 0)) noreturn
  unreachable

cond.end:                                         
  %9 = bitcast %"struct.llvm::Init"* %tmp2.i2 to %"struct.llvm::Init"* (%"struct.llvm::Init"*, %"class.llvm::Record"*, %"class.llvm::RecordVal"*, %"class.std::basic_string"*)*** 
  %10 = load %"struct.llvm::Init"* (%"struct.llvm::Init"*, %"class.llvm::Record"*, %"class.llvm::RecordVal"*, %"class.std::basic_string"*)**, %"struct.llvm::Init"* (%"struct.llvm::Init"*, %"class.llvm::Record"*, %"class.llvm::RecordVal"*, %"class.std::basic_string"*)*** %9 
  %vfn = getelementptr inbounds %"struct.llvm::Init"* (%"struct.llvm::Init"*, %"class.llvm::Record"*, %"class.llvm::RecordVal"*, %"class.std::basic_string"*)*, %"struct.llvm::Init"* (%"struct.llvm::Init"*, %"class.llvm::Record"*, %"class.llvm::RecordVal"*, %"class.std::basic_string"*)** %10, i32 8 
  %11 = load %"struct.llvm::Init"* (%"struct.llvm::Init"*, %"class.llvm::Record"*, %"class.llvm::RecordVal"*, %"class.std::basic_string"*)*, %"struct.llvm::Init"* (%"struct.llvm::Init"*, %"class.llvm::Record"*, %"class.llvm::RecordVal"*, %"class.std::basic_string"*)** %vfn 
  %call25 = tail call %"struct.llvm::Init"* %11(%"struct.llvm::Init"* %tmp2.i2, %"class.llvm::Record"* %R, %"class.llvm::RecordVal"* %RV, %"class.std::basic_string"* %FieldName) 
  ret %"struct.llvm::Init"* %call25

return:                                           
  ret %"struct.llvm::Init"* null
}

declare i1 @_ZNK4llvm7VarInit12getFieldInitERNS_6RecordEPKNS_9RecordValERKSs_for.cond.i(i32, %"class.llvm::RecordVal"*, i32, i8*, i32*)
