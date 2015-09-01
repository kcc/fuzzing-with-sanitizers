

define void @test_mismatched_setcc(<4 x i22> %l, <4 x i22> %r, <4 x i1>* %addr) {




  %tst = icmp eq <4 x i22> %l, %r
  store <4 x i1> %tst, <4 x i1>* %addr
  ret void
}
