



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

%FILE = type { }

@str = constant [1 x i8] zeroinitializer
@empty = constant [0 x i8] zeroinitializer

declare i64 @fwrite(i8*, i64, i64, %FILE *)



define void @test_simplify1(%FILE* %fp) {

  %str = getelementptr inbounds [1 x i8], [1 x i8]* @str, i64 0, i64 0
  call i64 @fwrite(i8* %str, i64 1, i64 1, %FILE* %fp)

  ret void

}

define void @test_simplify2(%FILE* %fp) {

  %str = getelementptr inbounds [0 x i8], [0 x i8]* @empty, i64 0, i64 0
  call i64 @fwrite(i8* %str, i64 1, i64 0, %FILE* %fp)
  ret void

}

define void @test_simplify3(%FILE* %fp) {

  %str = getelementptr inbounds [0 x i8], [0 x i8]* @empty, i64 0, i64 0
  call i64 @fwrite(i8* %str, i64 0, i64 1, %FILE* %fp)
  ret void

}

define i64 @test_no_simplify1(%FILE* %fp) {

  %str = getelementptr inbounds [1 x i8], [1 x i8]* @str, i64 0, i64 0
  %ret = call i64 @fwrite(i8* %str, i64 1, i64 1, %FILE* %fp)

  ret i64 %ret

}

define void @test_no_simplify2(%FILE* %fp, i64 %size) {

  %str = getelementptr inbounds [1 x i8], [1 x i8]* @str, i64 0, i64 0
  call i64 @fwrite(i8* %str, i64 %size, i64 1, %FILE* %fp)

  ret void

}
