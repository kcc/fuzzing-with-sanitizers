



%f32vec_t = type <8 x float>
%i16vec_t = type <8 x i16>
%i8vec_t =  type <8 x i8>

define void @fptoui16(%f32vec_t %a, %i16vec_t *%p) {











  %b = fptoui %f32vec_t %a to %i16vec_t
  store %i16vec_t %b, %i16vec_t * %p
  ret void
}

define void @fptosi16(%f32vec_t %a, %i16vec_t *%p) {











  %b = fptosi %f32vec_t %a to %i16vec_t
  store %i16vec_t %b, %i16vec_t * %p
  ret void
}

define void @fptoui8(%f32vec_t %a, %i8vec_t *%p) {












  %b = fptoui %f32vec_t %a to %i8vec_t
  store %i8vec_t %b, %i8vec_t * %p
  ret void
}

define void @fptosi8(%f32vec_t %a, %i8vec_t *%p) {












  %b = fptosi %f32vec_t %a to %i8vec_t
  store %i8vec_t %b, %i8vec_t * %p
  ret void
}
