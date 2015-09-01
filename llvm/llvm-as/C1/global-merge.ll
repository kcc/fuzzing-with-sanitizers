





@g0 = internal global [32 x i32] [ i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 1, i32 2 ]



@g8 = internal global i32 0
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* @g8 to i8*)], section "llvm.metadata"



@_ZTIi = internal global i8* null

define i32 @_Z9exceptioni(i32 %arg) personality i8* bitcast (i32 (...)* @__gxx_personality_sj0 to i8*) {
bb:
  %tmp = invoke i32 @_Z14throwSomethingi(i32 %arg)
          to label %bb9 unwind label %bb1

bb1:                                              
  %tmp2 = landingpad { i8*, i32 }
          catch i8* bitcast (i8** @_ZTIi to i8*)
  %tmp3 = extractvalue { i8*, i32 } %tmp2, 1
  %tmp4 = tail call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*))
  %tmp5 = icmp eq i32 %tmp3, %tmp4
  br i1 %tmp5, label %bb6, label %bb10

bb6:                                              
  %tmp7 = extractvalue { i8*, i32 } %tmp2, 0
  %tmp8 = tail call i8* @__cxa_begin_catch(i8* %tmp7)
  tail call void @__cxa_end_catch()
  br label %bb9

bb9:                                              
  %res.0 = phi i32 [ 0, %bb6 ], [ %tmp, %bb ]
  ret i32 %res.0

bb10:                                             
  resume { i8*, i32 } %tmp2
}

declare i32 @_Z14throwSomethingi(i32)

declare i32 @__gxx_personality_sj0(...)

declare i32 @llvm.eh.typeid.for(i8*)

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()


@g1 = internal global i32 1
@g2 = internal global i32 2





@g3 = internal global [30 x i32] [ i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10 ], align 4




@g4 = internal global i32 0
@g5 = internal global i32 0



@g6 = internal constant [12 x i32] zeroinitializer, align 4
@g7 = internal constant [12 x i32] zeroinitializer, align 4
