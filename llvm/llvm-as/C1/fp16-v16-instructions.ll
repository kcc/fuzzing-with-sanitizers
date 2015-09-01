


define <16 x half> @sitofp_i32(<16 x i32> %a) #0 {












  %1 = sitofp <16 x i32> %a to <16 x half>
  ret <16 x half> %1
}


define <16 x half> @sitofp_i64(<16 x i64> %a) #0 {



























  %1 = sitofp <16 x i64> %a to <16 x half>
  ret <16 x half> %1
}


define <16 x half> @uitofp_i32(<16 x i32> %a) #0 {












  %1 = uitofp <16 x i32> %a to <16 x half>
  ret <16 x half> %1
}


define <16 x half> @uitofp_i64(<16 x i64> %a) #0 {



























  %1 = uitofp <16 x i64> %a to <16 x half>
  ret <16 x half> %1
}

attributes #0 = { nounwind }
