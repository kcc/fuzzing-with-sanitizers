






target triple = "i386-pc-linux-gnu"

define void @_ZN4llvm17AsmMatcherEmitter3runERNS_11raw_ostreamE() align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  invoke void @_ZNK4llvm13CodeGenTarget12getAsmParserEv()
          to label %1 unwind label %5


  invoke void @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE()
          to label %4 unwind label %2


  %3 = landingpad { i8*, i32 }
          cleanup
  unreachable


  invoke void @_ZN4llvm18isCurrentDebugTypeEPKc()
          to label %12 unwind label %7


  %6 = landingpad { i8*, i32 }
          cleanup
  br label %33


  %8 = landingpad { i8*, i32 }
          cleanup
  br label %9


  %10 = phi { i8*, i32 } [ %29, %28 ], [ %8, %7 ]
  %11 = extractvalue { i8*, i32 } %10, 1
  invoke fastcc void @_ZN12_GLOBAL__N_114AsmMatcherInfoD2Ev()
          to label %32 unwind label %35


  invoke void @_ZNK4llvm13CodeGenTarget10getRegBankEv()
          to label %13 unwind label %16


  br label %14


  %15 = icmp eq i32 undef, 0
  br i1 %15, label %20, label %18


  %17 = landingpad { i8*, i32 }
          cleanup
  br label %26


  invoke void @_ZNSs4_Rep9_S_createEjjRKSaIcE()
          to label %19 unwind label %21


  unreachable


  br label %14


  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 1
  br i1 undef, label %26, label %24


  br i1 undef, label %25, label %26


  unreachable


  %27 = phi i32 [ 0, %16 ], [ %23, %21 ], [ %23, %24 ]
  invoke void @_ZNSt6vectorISt4pairISsSsESaIS1_EED1Ev()
          to label %28 unwind label %30


  %29 = insertvalue { i8*, i32 } undef, i32 %27, 1
  br label %9


  %31 = landingpad { i8*, i32 }
          catch i8* null
  unreachable


  br label %33


  %34 = phi i32 [ undef, %5 ], [ %11, %32 ]
  unreachable


  %36 = landingpad { i8*, i32 }
          catch i8* null
  unreachable
}

declare void @_ZNK4llvm13CodeGenTarget12getAsmParserEv()

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE()

declare void @_ZN4llvm18isCurrentDebugTypeEPKc()

declare fastcc void @_ZN12_GLOBAL__N_114AsmMatcherInfoD2Ev() unnamed_addr inlinehint align 2

declare hidden void @_ZNSt6vectorISt4pairISsSsESaIS1_EED1Ev() unnamed_addr align 2

declare void @_ZNSs4_Rep9_S_createEjjRKSaIcE()

declare void @_ZNK4llvm13CodeGenTarget10getRegBankEv()
