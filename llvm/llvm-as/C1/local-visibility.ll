



@global = global i32 0
@llvm.used = appending global [1 x i32*] [i32* @global]


@hidden.variable = hidden global i32 0

@protected.variable = protected global i32 0


@hidden.alias = hidden alias i32* @global

@protected.alias = protected alias i32* @global


define hidden void @hidden.function() {
  ret void
}

define protected void @protected.function() {
  ret void
}
