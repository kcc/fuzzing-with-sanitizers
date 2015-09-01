








@m1 = internal global i32 0, align 4
@n1 = internal global i32 0, align 4


define void @f1(i32 %a1, i32 %a2) #0 {




  store i32 %a1, i32* @m1, align 4
  store i32 %a2, i32* @n1, align 4
  ret void
}

@m2 = internal global i32 0, align 4
@n2 = internal global i32 0, align 4
@o2 = internal global i32 0, align 4


define void @f2(i32 %a1, i32 %a2, i32 %a3) #0 {





  store i32 %a1, i32* @m2, align 4
  store i32 %a2, i32* @n2, align 4
  store i32 %a3, i32* @o2, align 4
  ret void
}





@m3 = internal global i32 0, align 4
@n3 = internal global i32 0, align 4


define void @f3(i32 %a1, i32 %a2) #0 {





  store i32 %a1, i32* @m3, align 4
  store i32 %a2, i32* @n3, align 4
  ret void
}

@m4 = internal global i32 0, align 4
@n4 = internal global i32 0, align 4


define void @f4(i32 %a1, i32 %a2, i32 %a3) #0 {





  store i32 %a1, i32* @m4, align 4
  store i32 %a2, i32* @n4, align 4
  store i32 %a3, i32* @n3, align 4
  ret void
}


@o5 = internal global i32 0, align 4


define void @f5(i32 %a1) #0 {



  store i32 %a1, i32* @o5, align 4
  ret void
}







attributes #0 = { nounwind }
