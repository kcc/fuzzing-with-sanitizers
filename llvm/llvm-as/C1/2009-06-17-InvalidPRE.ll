



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.6"
  %struct.mbuf = type { %struct.mbuf*, %struct.mbuf*, i32, i8*, i16, i16, i32 }

define void @m_adj(%struct.mbuf* %mp, i32 %req_len) nounwind optsize {
entry:
  %0 = icmp eq %struct.mbuf* %mp, null    
  %1 = icmp slt i32 %req_len, 0   
  %or.cond = or i1 %1, %0   
  br i1 %or.cond, label %return, label %bb4.preheader

bb4.preheader:    
  br label %bb4.outer

bb2:    
  %2 = sub i32 %len.0, %13   
  %3 = getelementptr %struct.mbuf, %struct.mbuf* %m.0.ph, i32 0, i32 2    
  store i32 0, i32* %3, align 4
  %4 = getelementptr %struct.mbuf, %struct.mbuf* %m.0.ph, i32 0, i32 0    
  %5 = load %struct.mbuf*, %struct.mbuf** %4, align 4    
  br label %bb4.outer

bb4.outer:    
  %m.0.ph = phi %struct.mbuf* [ %5, %bb2 ], [ %mp, %bb4.preheader ]   
  %len.0.ph = phi i32 [ %2, %bb2 ], [ %req_len, %bb4.preheader ]    
  %6 = icmp ne %struct.mbuf* %m.0.ph, null    
  %7 = getelementptr %struct.mbuf, %struct.mbuf* %m.0.ph, i32 0, i32 2    
  %8 = getelementptr %struct.mbuf, %struct.mbuf* %m.0.ph, i32 0, i32 2   
  %9 = getelementptr %struct.mbuf, %struct.mbuf* %m.0.ph, i32 0, i32 3   
  %10 = getelementptr %struct.mbuf, %struct.mbuf* %m.0.ph, i32 0, i32 3   
  br label %bb4

bb4:    
  %len.0 = phi i32 [ 0, %bb3 ], [ %len.0.ph, %bb4.outer ]   
  %11 = icmp sgt i32 %len.0, 0    
  %12 = and i1 %11, %6    
  br i1 %12, label %bb1, label %bb7

bb1:    
  %13 = load i32, i32* %7, align 4    
  %14 = icmp sgt i32 %13, %len.0    
  br i1 %14, label %bb3, label %bb2

bb3:    
  %15 = sub i32 %13, %len.0    
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %9, align 4    
  %17 = getelementptr i8, i8* %16, i32 %len.0   
  store i8* %17, i8** %10, align 4
  br label %bb4

bb7:    
  %18 = getelementptr %struct.mbuf, %struct.mbuf* %mp, i32 0, i32 5   
  %19 = load i16, i16* %18, align 2    
  %20 = zext i16 %19 to i32   
  %21 = and i32 %20, 2    
  %22 = icmp eq i32 %21, 0    
  br i1 %22, label %return, label %bb8

bb8:    
  %23 = sub i32 %req_len, %len.0    
  %24 = getelementptr %struct.mbuf, %struct.mbuf* %mp, i32 0, i32 6   
  store i32 %23, i32* %24, align 4
  ret void

return:   
  ret void
}
