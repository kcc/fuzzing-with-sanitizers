


define void @add18i16(<18 x i16>* nocapture sret %ret, <18 x i16>* %bp) nounwind {

  %b = load <18 x i16>, <18 x i16>* %bp, align 16
  %x = add <18 x i16> zeroinitializer, %b
  store <18 x i16> %x, <18 x i16>* %ret, align 16

  ret void
}

