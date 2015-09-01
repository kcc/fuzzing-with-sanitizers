


target datalayout = "E-p:32:32:32-i1:8:8-i8:8:32-i16:16:32-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-n32-S64"
target triple = "mips--linux-gnu"

@i = common global i32 0, align 4
@b = common global i32 0, align 4
@j = common global i32 0, align 4
@k = common global i32 0, align 4
@l = common global i32 0, align 4


define void @t() #0 {
entry:
  store i32 -559023410, i32* @i, align 4
  %0 = load i32, i32* @b, align 4

  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else








if.then:                                          
  call void bitcast (void (...)* @foo to void ()*)()
  br label %if.end

if.else:                                          
  call void bitcast (void (...)* @goo to void ()*)()
  br label %if.end

if.end:                                           
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  call void bitcast (void (...)* @hoo to void ()*)()
  ret void
}

declare void @foo(...) #1

declare void @goo(...) #1

declare void @hoo(...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.4 (gitosis@dmz-portal.mips.com:clang.git b310439121c875937d78cc49cc969bc1197fc025) (gitosis@dmz-portal.mips.com:llvm.git 7fc0ca9656ebec8dad61f72f5a5ddfb232c070fd)"}
