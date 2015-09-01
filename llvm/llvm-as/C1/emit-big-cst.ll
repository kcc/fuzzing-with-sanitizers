







@bigCst = internal constant i82 483673642326615442599424

define void @accessBig(i64* %storage) {
  %addr = bitcast i64* %storage to i82*
  %bigLoadedCst = load volatile i82, i82* @bigCst
  %tmp = add i82 %bigLoadedCst, 1
  store i82 %tmp, i82* %addr
  ret void
}
