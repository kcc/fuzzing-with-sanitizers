




@bar = internal unnamed_addr constant i8* blockaddress(@foo, %L1)




define void @foo() {
entry:
  br label %L1
L1:
  ret void
}
