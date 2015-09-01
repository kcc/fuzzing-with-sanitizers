




















%struct.anon = type <{ float }>

@a = common global %struct.anon* null, align 4

define void @unaligned_store(float %x, float %y) nounwind {
entry:








  %add = fadd float %x, %y
  %0 = load %struct.anon*, %struct.anon** @a, align 4
  %x1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0
  store float %add, float* %x1, align 1
  ret void
}



%struct.anon.0 = type { double }

@foo_unpacked = common global %struct.anon.0 zeroinitializer, align 4

define void @word_aligned_f64_store(double %a, double %b) nounwind {
entry:


  %add = fadd double %a, %b
  store double %add, double* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @foo_unpacked, i32 0, i32 0), align 4


  ret void
}


%class.TAlignTest = type <{ i16, float }>

define zeroext i1 @unaligned_f32_load(%class.TAlignTest* %this) nounwind align 2 {
entry:


  %0 = alloca %class.TAlignTest*, align 4
  store %class.TAlignTest* %this, %class.TAlignTest** %0, align 4
  %1 = load %class.TAlignTest*, %class.TAlignTest** %0
  %2 = getelementptr inbounds %class.TAlignTest, %class.TAlignTest* %1, i32 0, i32 1
  %3 = load float, float* %2, align 1
  %4 = fcmp une float %3, 0.000000e+00






  ret i1 %4
}

define void @unaligned_i16_store(i16 %x, i16* %y) nounwind {
entry:








  store i16 %x, i16* %y, align 1
  ret void
}

define i16 @unaligned_i16_load(i16* %x) nounwind {
entry:








  %0 = load i16, i16* %x, align 1
  ret i16 %0
}

define void @unaligned_i32_store(i32 %x, i32* %y) nounwind {
entry:












  store i32 %x, i32* %y, align 1
  ret void
}

define i32 @unaligned_i32_load(i32* %x) nounwind {
entry:












  %0 = load i32, i32* %x, align 1
  ret i32 %0
}
