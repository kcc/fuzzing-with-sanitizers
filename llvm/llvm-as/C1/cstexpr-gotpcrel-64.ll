







%struct.data = type { i32, %struct.anon }
%struct.anon = type { i32, i32 }





@localfoo = global i32 42
@localgotequiv = private unnamed_addr constant i32* @localfoo

@extfoo = external global i32
@extgotequiv = private unnamed_addr constant i32* @extfoo







@extbar = external global i32
@bargotequiv = private unnamed_addr constant i32* @extbar

@table = global [4 x %struct.data] [
  %struct.data { i32 1, %struct.anon { i32 2, i32 3 } },





  %struct.data { i32 4, %struct.anon { i32 5,
    i32 trunc (i64 sub (i64 ptrtoint (i32** @localgotequiv to i64),
                        i64 ptrtoint (i32* getelementptr inbounds ([4 x %struct.data], [4 x %struct.data]* @table, i32 0, i64 1, i32 1, i32 1) to i64))
                        to i32)}
  },



  %struct.data { i32 4, %struct.anon { i32 5,
    i32 trunc (i64 sub (i64 ptrtoint (i32** @extgotequiv to i64),
                        i64 ptrtoint (i32* getelementptr inbounds ([4 x %struct.data], [4 x %struct.data]* @table, i32 0, i64 2, i32 1, i32 1) to i64))
                        to i32)}
  },





  %struct.data { i32 4, %struct.anon { i32 5,
    i32 add (i32 trunc (i64 sub (i64 ptrtoint (i32** @extgotequiv to i64),
                                 i64 ptrtoint (i32* getelementptr inbounds ([4 x %struct.data], [4 x %struct.data]* @table, i32 0, i64 3, i32 1, i32 1) to i64))
                                 to i32), i32 24)}
  }
], align 16





@delta = global i32 trunc (i64 sub (i64 ptrtoint (i32** @extgotequiv to i64),
                                    i64 ptrtoint (i32* @delta to i64))
                           to i32)



@deltaplus = global i32 add (i32 trunc (i64 sub (i64 ptrtoint (i32** @localgotequiv to i64),
                                        i64 ptrtoint (i32* @deltaplus to i64))
                                        to i32), i32 55)

define i32 @t0(i32 %a) {
  %x = add i32 trunc (i64 sub (i64 ptrtoint (i32** @bargotequiv to i64),
                               i64 ptrtoint (i32 (i32)* @t0 to i64))
                           to i32), %a
  ret i32 %x
}


define i32** @t1() {
  ret i32** @bargotequiv
}


define void @foo() {


  store i8** @b, i8*** null
  ret void
}
@a = external global i8
@b = internal unnamed_addr constant i8* @a



@c = global i8** @b
