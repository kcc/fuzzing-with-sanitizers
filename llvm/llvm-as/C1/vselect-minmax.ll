






define void @test1(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp slt <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.a, <16 x i8> %load.b
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test2(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp sle <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.a, <16 x i8> %load.b
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test3(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp sgt <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.a, <16 x i8> %load.b
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test4(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp sge <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.a, <16 x i8> %load.b
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test5(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp ult <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.a, <16 x i8> %load.b
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test6(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp ule <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.a, <16 x i8> %load.b
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test7(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp ugt <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.a, <16 x i8> %load.b
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test8(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp uge <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.a, <16 x i8> %load.b
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test9(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp slt <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.a, <8 x i16> %load.b
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test10(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp sle <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.a, <8 x i16> %load.b
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test11(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp sgt <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.a, <8 x i16> %load.b
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test12(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp sge <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.a, <8 x i16> %load.b
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test13(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp ult <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.a, <8 x i16> %load.b
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test14(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp ule <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.a, <8 x i16> %load.b
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test15(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp ugt <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.a, <8 x i16> %load.b
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test16(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp uge <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.a, <8 x i16> %load.b
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test17(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp slt <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.a, <4 x i32> %load.b
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test18(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp sle <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.a, <4 x i32> %load.b
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test19(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp sgt <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.a, <4 x i32> %load.b
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test20(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp sge <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.a, <4 x i32> %load.b
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test21(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp ult <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.a, <4 x i32> %load.b
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test22(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp ule <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.a, <4 x i32> %load.b
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test23(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp ugt <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.a, <4 x i32> %load.b
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test24(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp uge <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.a, <4 x i32> %load.b
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test25(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp slt <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.a, <32 x i8> %load.b
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test26(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp sle <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.a, <32 x i8> %load.b
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test27(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp sgt <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.a, <32 x i8> %load.b
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test28(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp sge <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.a, <32 x i8> %load.b
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test29(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp ult <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.a, <32 x i8> %load.b
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test30(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp ule <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.a, <32 x i8> %load.b
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test31(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp ugt <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.a, <32 x i8> %load.b
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test32(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp uge <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.a, <32 x i8> %load.b
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test33(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp slt <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.a, <16 x i16> %load.b
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test34(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp sle <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.a, <16 x i16> %load.b
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test35(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp sgt <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.a, <16 x i16> %load.b
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test36(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp sge <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.a, <16 x i16> %load.b
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test37(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp ult <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.a, <16 x i16> %load.b
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test38(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp ule <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.a, <16 x i16> %load.b
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test39(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp ugt <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.a, <16 x i16> %load.b
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test40(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp uge <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.a, <16 x i16> %load.b
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test41(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp slt <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.a, <8 x i32> %load.b
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test42(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp sle <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.a, <8 x i32> %load.b
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test43(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp sgt <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.a, <8 x i32> %load.b
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test44(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp sge <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.a, <8 x i32> %load.b
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test45(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp ult <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.a, <8 x i32> %load.b
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test46(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp ule <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.a, <8 x i32> %load.b
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test47(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp ugt <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.a, <8 x i32> %load.b
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test48(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp uge <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.a, <8 x i32> %load.b
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test49(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp slt <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.b, <16 x i8> %load.a
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test50(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp sle <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.b, <16 x i8> %load.a
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test51(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp sgt <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.b, <16 x i8> %load.a
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test52(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp sge <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.b, <16 x i8> %load.a
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test53(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp ult <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.b, <16 x i8> %load.a
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test54(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp ule <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.b, <16 x i8> %load.a
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test55(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp ugt <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.b, <16 x i8> %load.a
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test56(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <16 x i8>*
  %ptr.b = bitcast i8* %gep.b to <16 x i8>*
  %load.a = load <16 x i8>, <16 x i8>* %ptr.a, align 2
  %load.b = load <16 x i8>, <16 x i8>* %ptr.b, align 2
  %cmp = icmp uge <16 x i8> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i8> %load.b, <16 x i8> %load.a
  store <16 x i8> %sel, <16 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test57(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp slt <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.b, <8 x i16> %load.a
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test58(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp sle <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.b, <8 x i16> %load.a
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test59(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp sgt <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.b, <8 x i16> %load.a
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test60(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp sge <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.b, <8 x i16> %load.a
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test61(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp ult <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.b, <8 x i16> %load.a
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test62(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp ule <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.b, <8 x i16> %load.a
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test63(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp ugt <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.b, <8 x i16> %load.a
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test64(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <8 x i16>*
  %ptr.b = bitcast i16* %gep.b to <8 x i16>*
  %load.a = load <8 x i16>, <8 x i16>* %ptr.a, align 2
  %load.b = load <8 x i16>, <8 x i16>* %ptr.b, align 2
  %cmp = icmp uge <8 x i16> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i16> %load.b, <8 x i16> %load.a
  store <8 x i16> %sel, <8 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test65(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp slt <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.b, <4 x i32> %load.a
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test66(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp sle <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.b, <4 x i32> %load.a
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test67(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp sgt <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.b, <4 x i32> %load.a
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test68(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp sge <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.b, <4 x i32> %load.a
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test69(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp ult <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.b, <4 x i32> %load.a
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test70(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp ule <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.b, <4 x i32> %load.a
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test71(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp ugt <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.b, <4 x i32> %load.a
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test72(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i32>*
  %ptr.b = bitcast i32* %gep.b to <4 x i32>*
  %load.a = load <4 x i32>, <4 x i32>* %ptr.a, align 2
  %load.b = load <4 x i32>, <4 x i32>* %ptr.b, align 2
  %cmp = icmp uge <4 x i32> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i32> %load.b, <4 x i32> %load.a
  store <4 x i32> %sel, <4 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 4
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void












}

define void @test73(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp slt <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.b, <32 x i8> %load.a
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test74(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp sle <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.b, <32 x i8> %load.a
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test75(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp sgt <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.b, <32 x i8> %load.a
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test76(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp sge <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.b, <32 x i8> %load.a
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test77(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp ult <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.b, <32 x i8> %load.a
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test78(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp ule <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.b, <32 x i8> %load.a
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test79(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp ugt <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.b, <32 x i8> %load.a
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test80(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <32 x i8>*
  %ptr.b = bitcast i8* %gep.b to <32 x i8>*
  %load.a = load <32 x i8>, <32 x i8>* %ptr.a, align 2
  %load.b = load <32 x i8>, <32 x i8>* %ptr.b, align 2
  %cmp = icmp uge <32 x i8> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i8> %load.b, <32 x i8> %load.a
  store <32 x i8> %sel, <32 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test81(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp slt <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.b, <16 x i16> %load.a
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test82(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp sle <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.b, <16 x i16> %load.a
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test83(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp sgt <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.b, <16 x i16> %load.a
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test84(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp sge <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.b, <16 x i16> %load.a
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test85(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp ult <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.b, <16 x i16> %load.a
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test86(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp ule <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.b, <16 x i16> %load.a
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test87(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp ugt <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.b, <16 x i16> %load.a
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test88(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <16 x i16>*
  %ptr.b = bitcast i16* %gep.b to <16 x i16>*
  %load.a = load <16 x i16>, <16 x i16>* %ptr.a, align 2
  %load.b = load <16 x i16>, <16 x i16>* %ptr.b, align 2
  %cmp = icmp uge <16 x i16> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i16> %load.b, <16 x i16> %load.a
  store <16 x i16> %sel, <16 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test89(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp slt <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.b, <8 x i32> %load.a
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test90(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp sle <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.b, <8 x i32> %load.a
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test91(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp sgt <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.b, <8 x i32> %load.a
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test92(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp sge <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.b, <8 x i32> %load.a
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test93(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp ult <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.b, <8 x i32> %load.a
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test94(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp ule <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.b, <8 x i32> %load.a
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test95(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp ugt <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.b, <8 x i32> %load.a
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}

define void @test96(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i32>*
  %ptr.b = bitcast i32* %gep.b to <8 x i32>*
  %load.a = load <8 x i32>, <8 x i32>* %ptr.a, align 2
  %load.b = load <8 x i32>, <8 x i32>* %ptr.b, align 2
  %cmp = icmp uge <8 x i32> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i32> %load.b, <8 x i32> %load.a
  store <8 x i32> %sel, <8 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void






}



define void @test97(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp slt <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.a, <64 x i8> %load.b
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test98(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp sle <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.a, <64 x i8> %load.b
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test99(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp sgt <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.a, <64 x i8> %load.b
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test100(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp sge <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.a, <64 x i8> %load.b
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test101(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp ult <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.a, <64 x i8> %load.b
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test102(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp ule <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.a, <64 x i8> %load.b
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test103(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp ugt <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.a, <64 x i8> %load.b
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test104(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp uge <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.a, <64 x i8> %load.b
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test105(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp slt <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.a, <32 x i16> %load.b
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test106(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp sle <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.a, <32 x i16> %load.b
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test107(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp sgt <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.a, <32 x i16> %load.b
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test108(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp sge <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.a, <32 x i16> %load.b
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test109(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp ult <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.a, <32 x i16> %load.b
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test110(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp ule <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.a, <32 x i16> %load.b
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test111(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp ugt <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.a, <32 x i16> %load.b
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test112(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp uge <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.a, <32 x i16> %load.b
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test113(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp slt <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.a, <16 x i32> %load.b
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test114(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp sle <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.a, <16 x i32> %load.b
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test115(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp sgt <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.a, <16 x i32> %load.b
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test116(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp sge <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.a, <16 x i32> %load.b
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test117(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp ult <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.a, <16 x i32> %load.b
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test118(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp ule <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.a, <16 x i32> %load.b
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test119(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp ugt <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.a, <16 x i32> %load.b
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test120(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp uge <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.a, <16 x i32> %load.b
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test121(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp slt <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.a, <8 x i64> %load.b
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test122(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp sle <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.a, <8 x i64> %load.b
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test123(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp sgt <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.a, <8 x i64> %load.b
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test124(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp sge <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.a, <8 x i64> %load.b
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test125(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp ult <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.a, <8 x i64> %load.b
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test126(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp ule <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.a, <8 x i64> %load.b
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test127(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp ugt <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.a, <8 x i64> %load.b
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test128(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp uge <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.a, <8 x i64> %load.b
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test129(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp slt <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.b, <64 x i8> %load.a
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test130(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp sle <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.b, <64 x i8> %load.a
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test131(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp sgt <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.b, <64 x i8> %load.a
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test132(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp sge <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.b, <64 x i8> %load.a
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test133(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp ult <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.b, <64 x i8> %load.a
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test134(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp ule <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.b, <64 x i8> %load.a
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test135(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp ugt <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.b, <64 x i8> %load.a
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test136(i8* nocapture %a, i8* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i8, i8* %a, i64 %index
  %gep.b = getelementptr inbounds i8, i8* %b, i64 %index
  %ptr.a = bitcast i8* %gep.a to <64 x i8>*
  %ptr.b = bitcast i8* %gep.b to <64 x i8>*
  %load.a = load <64 x i8>, <64 x i8>* %ptr.a, align 2
  %load.b = load <64 x i8>, <64 x i8>* %ptr.b, align 2
  %cmp = icmp uge <64 x i8> %load.a, %load.b
  %sel = select <64 x i1> %cmp, <64 x i8> %load.b, <64 x i8> %load.a
  store <64 x i8> %sel, <64 x i8>* %ptr.a, align 2
  %index.next = add i64 %index, 32
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test137(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp slt <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.b, <32 x i16> %load.a
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test138(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp sle <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.b, <32 x i16> %load.a
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test139(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp sgt <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.b, <32 x i16> %load.a
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test140(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp sge <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.b, <32 x i16> %load.a
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test141(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp ult <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.b, <32 x i16> %load.a
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test142(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp ule <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.b, <32 x i16> %load.a
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test143(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp ugt <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.b, <32 x i16> %load.a
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test144(i16* nocapture %a, i16* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i16, i16* %a, i64 %index
  %gep.b = getelementptr inbounds i16, i16* %b, i64 %index
  %ptr.a = bitcast i16* %gep.a to <32 x i16>*
  %ptr.b = bitcast i16* %gep.b to <32 x i16>*
  %load.a = load <32 x i16>, <32 x i16>* %ptr.a, align 2
  %load.b = load <32 x i16>, <32 x i16>* %ptr.b, align 2
  %cmp = icmp uge <32 x i16> %load.a, %load.b
  %sel = select <32 x i1> %cmp, <32 x i16> %load.b, <32 x i16> %load.a
  store <32 x i16> %sel, <32 x i16>* %ptr.a, align 2
  %index.next = add i64 %index, 16
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test145(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp slt <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.b, <16 x i32> %load.a
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test146(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp sle <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.b, <16 x i32> %load.a
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test147(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp sgt <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.b, <16 x i32> %load.a
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test148(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp sge <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.b, <16 x i32> %load.a
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test149(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp ult <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.b, <16 x i32> %load.a
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test150(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp ule <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.b, <16 x i32> %load.a
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test151(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp ugt <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.b, <16 x i32> %load.a
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test152(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <16 x i32>*
  %ptr.b = bitcast i32* %gep.b to <16 x i32>*
  %load.a = load <16 x i32>, <16 x i32>* %ptr.a, align 2
  %load.b = load <16 x i32>, <16 x i32>* %ptr.b, align 2
  %cmp = icmp uge <16 x i32> %load.a, %load.b
  %sel = select <16 x i1> %cmp, <16 x i32> %load.b, <16 x i32> %load.a
  store <16 x i32> %sel, <16 x i32>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}



define void @test153(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp slt <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.b, <8 x i64> %load.a
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test154(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp sle <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.b, <8 x i64> %load.a
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test155(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp sgt <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.b, <8 x i64> %load.a
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test156(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp sge <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.b, <8 x i64> %load.a
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test157(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp ult <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.b, <8 x i64> %load.a
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test158(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp ule <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.b, <8 x i64> %load.a
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test159(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp ugt <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.b, <8 x i64> %load.a
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test160(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <8 x i64>*
  %ptr.b = bitcast i32* %gep.b to <8 x i64>*
  %load.a = load <8 x i64>, <8 x i64>* %ptr.a, align 2
  %load.b = load <8 x i64>, <8 x i64>* %ptr.b, align 2
  %cmp = icmp uge <8 x i64> %load.a, %load.b
  %sel = select <8 x i1> %cmp, <8 x i64> %load.b, <8 x i64> %load.a
  store <8 x i64> %sel, <8 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test161(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp slt <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.a, <4 x i64> %load.b
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test162(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp sle <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.a, <4 x i64> %load.b
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test163(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp sgt <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.a, <4 x i64> %load.b
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test164(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp sge <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.a, <4 x i64> %load.b
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test165(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp ult <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.a, <4 x i64> %load.b
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test166(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp ule <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.a, <4 x i64> %load.b
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test167(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp ugt <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.a, <4 x i64> %load.b
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test168(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp uge <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.a, <4 x i64> %load.b
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test169(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp slt <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.b, <4 x i64> %load.a
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test170(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp sle <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.b, <4 x i64> %load.a
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test171(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp sgt <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.b, <4 x i64> %load.a
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test172(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp sge <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.b, <4 x i64> %load.a
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test173(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp ult <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.b, <4 x i64> %load.a
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test174(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp ule <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.b, <4 x i64> %load.a
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test175(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp ugt <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.b, <4 x i64> %load.a
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test176(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <4 x i64>*
  %ptr.b = bitcast i32* %gep.b to <4 x i64>*
  %load.a = load <4 x i64>, <4 x i64>* %ptr.a, align 2
  %load.b = load <4 x i64>, <4 x i64>* %ptr.b, align 2
  %cmp = icmp uge <4 x i64> %load.a, %load.b
  %sel = select <4 x i1> %cmp, <4 x i64> %load.b, <4 x i64> %load.a
  store <4 x i64> %sel, <4 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test177(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp slt <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.a, <2 x i64> %load.b
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test178(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp sle <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.a, <2 x i64> %load.b
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test179(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp sgt <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.a, <2 x i64> %load.b
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test180(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp sge <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.a, <2 x i64> %load.b
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test181(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp ult <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.a, <2 x i64> %load.b
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test182(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp ule <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.a, <2 x i64> %load.b
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test183(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp ugt <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.a, <2 x i64> %load.b
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test184(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp uge <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.a, <2 x i64> %load.b
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test185(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp slt <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.b, <2 x i64> %load.a
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test186(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp sle <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.b, <2 x i64> %load.a
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test187(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp sgt <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.b, <2 x i64> %load.a
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test188(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp sge <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.b, <2 x i64> %load.a
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test189(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp ult <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.b, <2 x i64> %load.a
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test190(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp ule <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.b, <2 x i64> %load.a
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test191(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp ugt <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.b, <2 x i64> %load.a
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}

define void @test192(i32* nocapture %a, i32* nocapture %b) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep.a = getelementptr inbounds i32, i32* %a, i64 %index
  %gep.b = getelementptr inbounds i32, i32* %b, i64 %index
  %ptr.a = bitcast i32* %gep.a to <2 x i64>*
  %ptr.b = bitcast i32* %gep.b to <2 x i64>*
  %load.a = load <2 x i64>, <2 x i64>* %ptr.a, align 2
  %load.b = load <2 x i64>, <2 x i64>* %ptr.b, align 2
  %cmp = icmp uge <2 x i64> %load.a, %load.b
  %sel = select <2 x i1> %cmp, <2 x i64> %load.b, <2 x i64> %load.a
  store <2 x i64> %sel, <2 x i64>* %ptr.a, align 2
  %index.next = add i64 %index, 8
  %loop = icmp eq i64 %index.next, 16384
  br i1 %loop, label %for.end, label %vector.body

for.end:                                          
  ret void



}
