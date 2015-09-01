

@var = global i32 0

define i32 @get_globalvar() {


  %val = load i32, i32* @var




  ret i32 %val
}

define i32* @get_globalvaraddr() {


  %val = load i32, i32* @var



  ret i32* @var
}

@hiddenvar = hidden global i32 0

define i32 @get_hiddenvar() {


  %val = load i32, i32* @hiddenvar



  ret i32 %val
}

define i32* @get_hiddenvaraddr() {


  %val = load i32, i32* @hiddenvar



  ret i32* @hiddenvar
}

define void()* @get_func() {


  ret void()* bitcast(void()*()* @get_func to void()*)


}
