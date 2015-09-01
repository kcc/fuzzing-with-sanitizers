






@a = common global i32 0, align 4
@p = common global i8* null, align 8

define void @foo() noreturn nounwind uwtable ssp {
entry:
  %tmp = load i32, i32* @a, align 4
  %foo = icmp eq i32 0, %tmp
  br i1 %foo, label %sw.bb, label %sw.default

sw.bb:                                            
  store i8* blockaddress(@foo, %sw.bb1), i8** @p, align 8
  br label %sw.bb1

sw.bb1:                                           
  store i8* blockaddress(@foo, %sw.default), i8** @p, align 8
  br label %sw.default

sw.default:                                       
  store i8* blockaddress(@foo, %sw.bb1), i8** @p, align 8
  br label %sw.bb1
}
