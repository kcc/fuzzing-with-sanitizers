




%struct.__CFString.2 = type opaque

declare void @CFRelease(i8*)

define hidden fastcc i32 @t() ssp {
entry:
  %mylocale.i.i = alloca [256 x i8], align 1
  br i1 undef, label %return, label %CFStringIsHyphenationAvailableForLocale.exit

CFStringIsHyphenationAvailableForLocale.exit:     
  br i1 undef, label %return, label %if.end

if.end:                                           
  br i1 undef, label %if.end8.thread.i, label %if.then.i

if.then.i:                                        
  br i1 undef, label %if.end8.thread.i, label %if.end8.i

if.end8.thread.i:                                 
  unreachable

if.end8.i:                                        
  br i1 undef, label %if.then11.i, label %__CFHyphenationPullTokenizer.exit

if.then11.i:                                      
  unreachable

__CFHyphenationPullTokenizer.exit:                
  br i1 undef, label %if.end68, label %if.then3

if.then3:                                         
  br i1 undef, label %cond.end, label %cond.false

cond.false:                                       
  br label %cond.end

cond.end:                                         
  br i1 undef, label %while.end, label %while.body

while.body:                                       
  unreachable

while.end:                                        
  br i1 undef, label %if.end5.i, label %if.then.i16

if.then.i16:                                      
  br i1 undef, label %if.then4.i, label %if.end5.i

if.then4.i:                                       
  br i1 false, label %cleanup.thread, label %if.end.i20

if.end5.i:                                        
  unreachable

if.end.i20:                                       
  br label %for.body.i146.i

for.body.i146.i:                                  
  br i1 undef, label %if.end20.i, label %for.body.i146.i

if.end20.i:                                       
  br i1 undef, label %cleanup.thread, label %if.end23.i

if.end23.i:                                       
  br label %for.body.i94.i

for.body.i94.i:                                   
  br i1 undef, label %if.then28.i, label %for.body.i94.i

if.then28.i:                                      
  br i1 undef, label %cond.true.i26, label %land.lhs.true

cond.true.i26:                                    
  br label %land.lhs.true

land.lhs.true:                                    
  br i1 false, label %cleanup.thread, label %if.end35

if.end35:                                         
  br i1 undef, label %cleanup.thread, label %if.end45

if.end45:                                         
  br i1 undef, label %if.then50, label %if.end.i37

if.end.i37:                                       
  br label %if.then50

if.then50:                                        
  br i1 undef, label %__CFHyphenationGetHyphensForString.exit, label %if.end.i

if.end.i:                                         
  br i1 undef, label %cleanup.i, label %cond.true.i

cond.true.i:                                      
  br i1 undef, label %for.cond16.preheader.i, label %for.cond57.preheader.i

for.cond16.preheader.i:                           
  %cmp1791.i = icmp sgt i32 undef, 1
  br i1 %cmp1791.i, label %for.body18.i, label %for.cond57.preheader.i

for.cond57.preheader.i:                           
  %sub69.i = add i32 undef, -2
  br label %cleanup.i

for.body18.i:                                     
  store i16 0, i16* undef, align 2
  br label %while.body.i

while.body.i:                                     
  br label %while.body.i

cleanup.i:                                        
  br label %__CFHyphenationGetHyphensForString.exit

__CFHyphenationGetHyphensForString.exit:          
  %retval.1.i = phi i32 [ 0, %cleanup.i ], [ -1, %if.then50 ]
  %phitmp = bitcast %struct.__CFString.2* null to i8*
  br label %if.end68

cleanup.thread:                                   
  call void @llvm.stackrestore(i8* null)
  br label %return

if.end68:                                         
  %hyphenCount.2 = phi i32 [ %retval.1.i, %__CFHyphenationGetHyphensForString.exit ], [ 0, %__CFHyphenationPullTokenizer.exit ]
  %_token.1 = phi i8* [ %phitmp, %__CFHyphenationGetHyphensForString.exit ], [ undef, %__CFHyphenationPullTokenizer.exit ]
  call void @CFRelease(i8* %_token.1)
  br label %return

return:                                           
  %retval.1 = phi i32 [ %hyphenCount.2, %if.end68 ], [ -1, %CFStringIsHyphenationAvailableForLocale.exit ], [ -1, %cleanup.thread ], [ -1, %entry ]
  ret i32 %retval.1
}

declare void @llvm.stackrestore(i8*) nounwind
