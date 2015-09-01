


@ba1 = constant i8* blockaddress (@foo, %1)

define void @foo() {
  br label %1
  unreachable
}

uselistorder_bb @foo, %1, { 1, 0 }
