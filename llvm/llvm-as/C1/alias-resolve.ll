

@foo1 = alias void ()* @foo2


@foo2 = alias void()* @bar1


@bar1  = alias void ()* @bar2


@weak1 = weak alias void ()* @bar2


@bar4 = private unnamed_addr constant [2 x i8*] zeroinitializer
@foo4 = linkonce_odr unnamed_addr alias getelementptr inbounds ([2 x i8*], [2 x i8*]* @bar4, i32 0, i32 1)


define void @bar2() {
  ret void
}


define void @baz() {
entry:
         call void @foo1()


         call void @foo2()


         call void @bar1()


         call void @weak1()

         ret void
}

@foo3 = alias void ()* @bar3


define internal void @bar3() {
  ret void
}

