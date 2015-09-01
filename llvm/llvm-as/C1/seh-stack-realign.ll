




@str = linkonce_odr unnamed_addr constant [27 x i8] c"GetExceptionCode(): 0x%lx\0A\00", align 1

declare i32 @_except_handler3(...)
declare void @crash()
declare i32 @printf(i8* nocapture readonly, ...) nounwind
declare i32 @llvm.eh.typeid.for(i8*)
declare i8* @llvm.frameaddress(i32)
declare i8* @llvm.localrecover(i8*, i8*, i32)
declare void @llvm.localescape(...)
declare i8* @llvm.x86.seh.recoverfp(i8*, i8*)

define i32 @main() personality i8* bitcast (i32 (...)* @_except_handler3 to i8*) {
entry:
  
  %__exceptioncode = alloca i32, align 8
  call void (...) @llvm.localescape(i32* %__exceptioncode)
  invoke void @crash() #5
          to label %__try.cont unwind label %lpad

lpad:                                             
  %0 = landingpad { i8*, i32 }
          catch i8* bitcast (i32 ()* @"filt$main" to i8*)
  %1 = extractvalue { i8*, i32 } %0, 1
  %2 = call i32 @llvm.eh.typeid.for(i8* bitcast (i32 ()* @"filt$main" to i8*)) #4
  %matches = icmp eq i32 %1, %2
  br i1 %matches, label %__except, label %eh.resume

__except:                                         
  %3 = load i32, i32* %__exceptioncode, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str, i32 0, i32 0), i32 %3) #4
  br label %__try.cont

__try.cont:                                       
  ret i32 0

eh.resume:                                        
  resume { i8*, i32 } %0
}

define internal i32 @"filt$main"() {
entry:
  %ebp = tail call i8* @llvm.frameaddress(i32 1)
  %parentfp = tail call i8* @llvm.x86.seh.recoverfp(i8* bitcast (i32 ()* @main to i8*), i8* %ebp)
  %code.i8 = tail call i8* @llvm.localrecover(i8* bitcast (i32 ()* @main to i8*), i8* %parentfp, i32 0)
  %__exceptioncode = bitcast i8* %code.i8 to i32*
  %info.addr = getelementptr inbounds i8, i8* %ebp, i32 -20
  %0 = bitcast i8* %info.addr to i32***
  %1 = load i32**, i32*** %0, align 4
  %2 = load i32*, i32** %1, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %__exceptioncode, align 4
  ret i32 1
}











































