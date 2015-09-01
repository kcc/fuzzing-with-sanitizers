


target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

@str.__except = internal unnamed_addr constant [9 x i8] c"__except\00", align 1



declare i32 @puts(i8*)

define void @may_crash() {
entry:
  store volatile i32 42, i32* null, align 4
  ret void
}

declare i32 @__C_specific_handler(...)


declare i8* @llvm.frameaddress(i32)


define void @seh_catch_all() personality i8* bitcast (i32 (...)* @__C_specific_handler to i8*) {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  invoke void @may_crash()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  br label %__try.cont

lpad:                                             
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %__except

__except:                                         
  %call = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @str.__except, i32 0, i32 0))
  br label %__try.cont

__try.cont:                                       
  ret void
}










