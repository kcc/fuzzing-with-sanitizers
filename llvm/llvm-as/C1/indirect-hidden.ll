

@var = external global i32
@var_hidden = external hidden global i32

define i32* @get_var() {
  ret i32* @var
}

define i32* @get_var_hidden() {
  ret i32* @var_hidden
}









