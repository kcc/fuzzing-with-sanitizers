


@addr = global i8* null

define void @test_blockaddress() {

  store volatile i8* blockaddress(@test_blockaddress, %block), i8** @addr
  %val = load volatile i8*, i8** @addr
  indirectbr i8* %val, [label %block]














block:
  ret void
}
