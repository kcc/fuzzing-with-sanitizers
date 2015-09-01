





target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc_linux"



























define void @foo1(i32* %A, i32* %B, i32* %trigger) {
entry:
  %A.addr = alloca i32*, align 8
  %B.addr = alloca i32*, align 8
  %trigger.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32* %B, i32** %B.addr, align 8
  store i32* %trigger, i32** %trigger.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %trigger.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp slt i32 %3, 100
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i32*, i32** %B.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32*, i32** %trigger.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %add = add nsw i32 %6, %9
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %A.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  store i32 %add, i32* %arrayidx7, align 4
  br label %if.end

if.end:                                           
  br label %for.inc

for.inc:                                          
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          
  ret void
}



























define void @foo2(float* %A, float* %B, i32* %trigger) {
entry:
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %trigger.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store float* %A, float** %A.addr, align 8
  store float* %B, float** %B.addr, align 8
  store i32* %trigger, i32** %trigger.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %trigger.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp slt i32 %3, 100
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load float*, float** %B.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %5, i64 %idxprom2
  %6 = load float, float* %arrayidx3, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32*, i32** %trigger.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %conv = sitofp i32 %9 to float
  %add = fadd float %6, %conv
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load float*, float** %A.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %11, i64 %idxprom6
  store float %add, float* %arrayidx7, align 4
  br label %if.end

if.end:                                           
  br label %for.inc

for.inc:                                          
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          
  ret void
}






























define void @foo3(double* %A, double* %B, i32* %trigger) #0 {
entry:
  %A.addr = alloca double*, align 8
  %B.addr = alloca double*, align 8
  %trigger.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store double* %A, double** %A.addr, align 8
  store double* %B, double** %B.addr, align 8
  store i32* %trigger, i32** %trigger.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %trigger.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp slt i32 %3, 100
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load double*, double** %B.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %5, i64 %idxprom2
  %6 = load double, double* %arrayidx3, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32*, i32** %trigger.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %conv = sitofp i32 %9 to double
  %add = fadd double %6, %conv
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load double*, double** %A.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %11, i64 %idxprom6
  store double %add, double* %arrayidx7, align 8
  br label %if.end

if.end:                                           
  br label %for.inc

for.inc:                                          
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          
  ret void
}





















define void @foo4(double* %A, double* %B, i32* %trigger)  {
entry:
  %A.addr = alloca double*, align 8
  %B.addr = alloca double*, align 8
  %trigger.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store double* %A, double** %A.addr, align 8
  store double* %B, double** %B.addr, align 8
  store i32* %trigger, i32** %trigger.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %trigger.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp slt i32 %3, 100
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %4, 2
  %idxprom2 = sext i32 %mul to i64
  %5 = load double*, double** %B.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %5, i64 %idxprom2
  %6 = load double, double* %arrayidx3, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32*, i32** %trigger.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %conv = sitofp i32 %9 to double
  %add = fadd double %6, %conv
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load double*, double** %A.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %11, i64 %idxprom6
  store double %add, double* %arrayidx7, align 8
  br label %if.end

if.end:                                           
  br label %for.inc

for.inc:                                          
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          
  ret void
}

@a = common global [1 x i32*] zeroinitializer, align 8
@c = common global i32* null, align 8














define void @foo5(i32* %A, i32* %B, i32* %trigger) {
entry:
  %A.addr = alloca i32*, align 8
  %B.addr = alloca i32*, align 8
  %trigger.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32* %B, i32** %B.addr, align 8
  store i32* %trigger, i32** %trigger.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %trigger.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp slt i32 %3, 100
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i32*, i32** %B.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32*, i32** %trigger.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %add = add nsw i32 %6, %9
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %A.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  store i32 sdiv (i32 1, i32 zext (i1 icmp eq (i32** getelementptr inbounds ([1 x i32*], [1 x i32*]* @a, i64 0, i64 1), i32** @c) to i32)), i32* %arrayidx7, align 4
  br label %if.end

if.end:                                           
  br label %for.inc

for.inc:                                          
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          
  ret void
}



























define void @foo6(double* %in, double* %out, i32 %size, i32* %trigger) {
entry:
  %in.addr = alloca double*, align 8
  %out.addr = alloca double*, align 8
  %size.addr = alloca i32, align 4
  %trigger.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store double* %in, double** %in.addr, align 8
  store double* %out, double** %out.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32* %trigger, i32** %trigger.addr, align 8
  store i32 4095, i32* %i, align 4
  br label %for.cond

for.cond:                                         
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %trigger.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load double*, double** %in.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %5, i64 %idxprom2
  %6 = load double, double* %arrayidx3, align 8
  %add = fadd double %6, 5.000000e-01
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load double*, double** %out.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 %idxprom4
  store double %add, double* %arrayidx5, align 8
  br label %if.end

if.end:                                           
  br label %for.inc

for.inc:                                          
  %9 = load i32, i32* %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          
  ret void
}


