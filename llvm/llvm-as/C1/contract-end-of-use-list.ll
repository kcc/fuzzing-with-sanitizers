


target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin13.2.0"

%struct = type { i8*, i8* }


define internal i8* @foo() {
entry:
  %call = call i8* @bar()

  %retained1 = call i8* @objc_retain(i8* %call)
  %isnull = icmp eq i8* %retained1, null
  br i1 %isnull, label %cleanup, label %if.end

if.end:

  %retained2 = call i8* @objc_retain(i8* %retained1)
  br label %cleanup

cleanup:
  %retval = phi i8* [ %retained2, %if.end ], [ null, %entry ]
  ret i8* %retval
}

declare i8* @bar()

declare extern_weak i8* @objc_retain(i8*)
