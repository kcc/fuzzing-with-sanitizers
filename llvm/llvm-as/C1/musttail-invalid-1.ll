




%struct.A = type { i32 }

declare i8* @f(i8*, ...)

define i8* @f_thunk(i8* %this) {
  %rv = musttail call i8* (i8*, ...) @f(i8* %this, ...)

  ret i8* %rv
}
