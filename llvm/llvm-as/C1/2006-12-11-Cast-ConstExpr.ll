





@G = external global i32

define float @tryit(i32 %A) {
   ret float bitcast( i32 ptrtoint (i32* @G to i32) to float)
}
