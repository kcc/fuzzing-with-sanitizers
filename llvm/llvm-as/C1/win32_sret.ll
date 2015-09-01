














define void @sret1(i8* sret %x) nounwind {
entry:














  store i8 42, i8* %x, align 4
  ret void
}

define void @sret2(i8* sret %x, i8 %y) nounwind {
entry:














  store i8 %y, i8* %x
  ret void
}

define void @sret3(i8* sret %x, i8* %y) nounwind {
entry:















  store i8 42, i8* %x
  store i8 13, i8* %y
  ret void
}


%struct.S4 = type { i32, i32, i32 }

define void @sret4(%struct.S4* noalias sret %agg.result) {
entry:














  %x = getelementptr inbounds %struct.S4, %struct.S4* %agg.result, i32 0, i32 0
  store i32 42, i32* %x, align 4
  ret void
}

%struct.S5 = type { i32 }
%class.C5 = type { i8 }

define x86_thiscallcc void @"\01?foo@C5@@QAE?AUS5@@XZ"(%struct.S5* noalias sret %agg.result, %class.C5* %this) {
entry:
  %this.addr = alloca %class.C5*, align 4
  store %class.C5* %this, %class.C5** %this.addr, align 4
  %this1 = load %class.C5*, %class.C5** %this.addr
  %x = getelementptr inbounds %struct.S5, %struct.S5* %agg.result, i32 0, i32 0
  store i32 42, i32* %x, align 4
  ret void











}

define void @call_foo5() {
entry:
  %c = alloca %class.C5, align 1
  %s = alloca %struct.S5, align 4
  call x86_thiscallcc void @"\01?foo@C5@@QAE?AUS5@@XZ"(%struct.S5* sret %s, %class.C5* %c)















  ret void
}


%struct.test6 = type { i32, i32, i32 }
define void @test6_f(%struct.test6* %x) nounwind {



























  %tmp = alloca %struct.test6, align 4
  call x86_thiscallcc void @test6_g(%struct.test6* sret %tmp, %struct.test6* %x)
  ret void
}
declare x86_thiscallcc void @test6_g(%struct.test6* sret, %struct.test6*)


%struct.test7 = type { i32, i32, i32 }
define void @test7_f(%struct.test7* %x) nounwind {


















  %tmp = alloca %struct.test7, align 4
  call x86_thiscallcc void @test7_g(%struct.test7* %x, %struct.test7* sret %tmp)
  ret void
}

define x86_thiscallcc void @test7_g(%struct.test7* %in, %struct.test7* sret %out) {
  %s = getelementptr %struct.test7, %struct.test7* %in, i32 0, i32 0
  %d = getelementptr %struct.test7, %struct.test7* %out, i32 0, i32 0
  %v = load i32, i32* %s
  store i32 %v, i32* %d
  call void @clobber_eax()
  ret void






}

declare void @clobber_eax()




define void @test8_f(i64 inreg %a, i64* sret %out) {
  store i64 %a, i64* %out
  call void @clobber_eax()
  ret void








}
