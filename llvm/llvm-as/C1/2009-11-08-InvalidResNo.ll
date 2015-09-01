
target datalayout = "e-p:16:8:8-i8:8:8-i16:8:8-i32:8:8"
target triple = "msp430-elf"

%struct.httpd_fs_file = type { i8*, i16 }
%struct.psock = type { %struct.pt, %struct.pt, i8*, i8*, i8*, i16, i16, %struct.httpd_fs_file, i16, i8, i8 }
%struct.pt = type { i16 }

@foo = external global i8*

define signext i8 @psock_readto(%struct.psock* nocapture %psock, i8 zeroext %c) nounwind {
entry:
  switch i16 undef, label %sw.epilog [
    i16 0, label %sw.bb
    i16 283, label %if.else.i
  ]

sw.bb:                                            
  br label %do.body

do.body:                                          
  br label %while.cond.i

if.else.i:                                        
  br i1 undef, label %psock_newdata.exit, label %if.else11.i

if.else11.i:                                      
  ret i8 0

psock_newdata.exit:                               
  ret i8 0

while.cond.i:                                     
  br i1 undef, label %while.end.i, label %while.body.i

while.body.i:                                     
  br i1 undef, label %do.end41, label %while.cond.i

while.end.i:                                      
  br i1 undef, label %do.body, label %while.cond36.i.preheader

while.cond36.i.preheader:                         
  br label %while.cond36.i

while.cond36.i:                                   
  br i1 undef, label %do.body, label %while.body41.i

while.body41.i:                                   
  %tmp43.i = load i8*, i8** @foo                      
  %tmp44.i = load i8, i8* %tmp43.i                    
  %ptrincdec50.i = getelementptr inbounds i8, i8* %tmp43.i, i16 1 
  store i8* %ptrincdec50.i, i8** @foo
  %cmp55.i = icmp eq i8 %tmp44.i, %c              
  br i1 %cmp55.i, label %do.end41, label %while.cond36.i

do.end41:                                         
  br i1 undef, label %if.then46, label %sw.epilog

if.then46:                                        
  ret i8 0

sw.epilog:                                        
  ret i8 2
}
