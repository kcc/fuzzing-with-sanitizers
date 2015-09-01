




%i32vec3 = type <3 x i32>
define void @add3i32(%i32vec3*  sret %ret, %i32vec3* %ap, %i32vec3* %bp)  {





	%a = load %i32vec3, %i32vec3* %ap, align 16
	%b = load %i32vec3, %i32vec3* %bp, align 16
	%x = add %i32vec3 %a, %b
	store %i32vec3 %x, %i32vec3* %ret, align 16
	ret void
}

define void @add3i32_2(%i32vec3*  sret %ret, %i32vec3* %ap, %i32vec3* %bp)  {








	%a = load %i32vec3, %i32vec3* %ap, align 8
	%b = load %i32vec3, %i32vec3* %bp, align 8
	%x = add %i32vec3 %a, %b
	store %i32vec3 %x, %i32vec3* %ret, align 8
	ret void
}

%i32vec7 = type <7 x i32>
define void @add7i32(%i32vec7*  sret %ret, %i32vec7* %ap, %i32vec7* %bp)  {








	%a = load %i32vec7, %i32vec7* %ap, align 16
	%b = load %i32vec7, %i32vec7* %bp, align 16
	%x = add %i32vec7 %a, %b
	store %i32vec7 %x, %i32vec7* %ret, align 16
	ret void
}

%i32vec12 = type <12 x i32>
define void @add12i32(%i32vec12*  sret %ret, %i32vec12* %ap, %i32vec12* %bp)  {










	%a = load %i32vec12, %i32vec12* %ap, align 16
	%b = load %i32vec12, %i32vec12* %bp, align 16
	%x = add %i32vec12 %a, %b
	store %i32vec12 %x, %i32vec12* %ret, align 16
	ret void
}


%i16vec3 = type <3 x i16>
define void @add3i16(%i16vec3* nocapture sret %ret, %i16vec3* %ap, %i16vec3* %bp) nounwind {








	%a = load %i16vec3, %i16vec3* %ap, align 16
	%b = load %i16vec3, %i16vec3* %bp, align 16
	%x = add %i16vec3 %a, %b
	store %i16vec3 %x, %i16vec3* %ret, align 16
	ret void
}

%i16vec4 = type <4 x i16>
define void @add4i16(%i16vec4* nocapture sret %ret, %i16vec4* %ap, %i16vec4* %bp) nounwind {





	%a = load %i16vec4, %i16vec4* %ap, align 16
	%b = load %i16vec4, %i16vec4* %bp, align 16
	%x = add %i16vec4 %a, %b
	store %i16vec4 %x, %i16vec4* %ret, align 16
	ret void
}

%i16vec12 = type <12 x i16>
define void @add12i16(%i16vec12* nocapture sret %ret, %i16vec12* %ap, %i16vec12* %bp) nounwind {







	%a = load %i16vec12, %i16vec12* %ap, align 16
	%b = load %i16vec12, %i16vec12* %bp, align 16
	%x = add %i16vec12 %a, %b
	store %i16vec12 %x, %i16vec12* %ret, align 16
	ret void
}

%i16vec18 = type <18 x i16>
define void @add18i16(%i16vec18* nocapture sret %ret, %i16vec18* %ap, %i16vec18* %bp) nounwind {










	%a = load %i16vec18, %i16vec18* %ap, align 16
	%b = load %i16vec18, %i16vec18* %bp, align 16
	%x = add %i16vec18 %a, %b
	store %i16vec18 %x, %i16vec18* %ret, align 16
	ret void
}


%i8vec3 = type <3 x i8>
define void @add3i8(%i8vec3* nocapture sret %ret, %i8vec3* %ap, %i8vec3* %bp) nounwind {









	%a = load %i8vec3, %i8vec3* %ap, align 16
	%b = load %i8vec3, %i8vec3* %bp, align 16
	%x = add %i8vec3 %a, %b
	store %i8vec3 %x, %i8vec3* %ret, align 16
	ret void
}

%i8vec31 = type <31 x i8>
define void @add31i8(%i8vec31* nocapture sret %ret, %i8vec31* %ap, %i8vec31* %bp) nounwind {










	%a = load %i8vec31, %i8vec31* %ap, align 16
	%b = load %i8vec31, %i8vec31* %bp, align 16
	%x = add %i8vec31 %a, %b
	store %i8vec31 %x, %i8vec31* %ret, align 16
	ret void
}


%i8vec3pack = type { <3 x i8>, i8 }
define void @rot(%i8vec3pack* nocapture sret %result, %i8vec3pack* %X, %i8vec3pack* %rot) nounwind {
























entry:
  %storetmp = bitcast %i8vec3pack* %X to <3 x i8>*
  store <3 x i8> <i8 -98, i8 -98, i8 -98>, <3 x i8>* %storetmp
  %storetmp1 = bitcast %i8vec3pack* %rot to <3 x i8>*
  store <3 x i8> <i8 1, i8 1, i8 1>, <3 x i8>* %storetmp1
  %tmp = load %i8vec3pack, %i8vec3pack* %X
  %extractVec = extractvalue %i8vec3pack %tmp, 0
  %tmp2 = load %i8vec3pack, %i8vec3pack* %rot
  %extractVec3 = extractvalue %i8vec3pack %tmp2, 0
  %shr = lshr <3 x i8> %extractVec, %extractVec3
  %storetmp4 = bitcast %i8vec3pack* %result to <3 x i8>*
  store <3 x i8> %shr, <3 x i8>* %storetmp4
  ret void
}

