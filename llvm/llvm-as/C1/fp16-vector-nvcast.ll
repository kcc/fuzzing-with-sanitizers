


define void @nvcast_v2i32(<4 x half>* %a) #0 {




  store volatile <4 x half> <half 0xH0000, half 0xH00AB, half 0xH0000, half 0xH00AB>, <4 x half>* %a
  ret void
}



define void @nvcast_v4i16(<4 x half>* %a) #0 {




  store volatile <4 x half> <half 0xH00AB, half 0xH00AB, half 0xH00AB, half 0xH00AB>, <4 x half>* %a
  ret void
}



define void @nvcast_v8i8(<4 x half>* %a) #0 {




  store volatile <4 x half> <half 0xHABAB, half 0xHABAB, half 0xHABAB, half 0xHABAB>, <4 x half>* %a
  ret void
}



define void @nvcast_f64(<4 x half>* %a) #0 {




  store volatile <4 x half> zeroinitializer, <4 x half>* %a
  ret void
}


define void @nvcast_v4i32(<8 x half>* %a) #0 {




  store volatile <8 x half> <half 0xH0000, half 0xH00AB, half 0xH0000, half 0xH00AB, half 0xH0000, half 0xH00AB, half 0xH0000, half 0xH00AB>, <8 x half>* %a
  ret void
}



define void @nvcast_v8i16(<8 x half>* %a) #0 {




  store volatile <8 x half> <half 0xH00AB, half 0xH00AB, half 0xH00AB, half 0xH00AB, half 0xH00AB, half 0xH00AB, half 0xH00AB, half 0xH00AB>, <8 x half>* %a
  ret void
}



define void @nvcast_v16i8(<8 x half>* %a) #0 {




  store volatile <8 x half> <half 0xHABAB, half 0xHABAB, half 0xHABAB, half 0xHABAB, half 0xHABAB, half 0xHABAB, half 0xHABAB, half 0xHABAB>, <8 x half>* %a
  ret void
}



define void @nvcast_v2i64(<8 x half>* %a) #0 {




  store volatile <8 x half> zeroinitializer, <8 x half>* %a
  ret void
}

attributes #0 = { nounwind }
