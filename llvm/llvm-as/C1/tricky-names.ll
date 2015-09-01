






@"\01??__E_Generic_object@?$_Error_objects@H@std@@YAXXZ" = global i32 0
@"\01__ZL16ExceptionHandlerP19_EXCEPTION_POINTERS@4" = global i32 0
@"\01@foo.bar" = global i32 0

define weak i32 @"\01??_B?$num_put@_WV?$back_insert_iterator@V?$basic_string@_WU?$char_traits@_W@std@@V?$allocator@_W@2@@std@@@std@@@std@@51"() section ".text" {
  %a = load i32, i32* @"\01??__E_Generic_object@?$_Error_objects@H@std@@YAXXZ"
  %b = load i32, i32* @"\01__ZL16ExceptionHandlerP19_EXCEPTION_POINTERS@4"
  %c = load i32, i32* @"\01@foo.bar"
  %x = add i32 %a, %b
  %y = add i32 %x, %c
  ret i32 %y
}



















