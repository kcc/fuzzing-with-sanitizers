
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-bgq-linux"

%t1 = type { %t2*, %t3* }
%t2 = type <{ %t3*, i32, [4 x i8] }>
%t3 = type { %t3* }

@_ZN4Foam10SLListBase13endConstIter_E = external global %t1

define void @_ZN4FoamrsIbEERNS_7IstreamES2_RNS_4ListIT_EE() #0 {
entry:
  switch i32 undef, label %if.else82 [
    i32 9, label %if.then
    i32 6, label %invoke.cont10
    i32 1, label %invoke.cont61
  ]

if.then:                                          
  unreachable

invoke.cont10:                                    
  unreachable

invoke.cont61:                                    
  br i1 undef, label %if.end75, label %if.then64

if.then64:                                        
  unreachable

if.end75:                                         
  br i1 undef, label %if.then17.i, label %if.then.i181

if.then.i181:                                     
  unreachable

if.then17.i:                                      
  %tobool.i.i.i = icmp eq i32 undef, 0
  %0 = load i64*, i64** undef, align 8
  %agg.tmp.sroa.3.0.copyload33.in.i = select i1 %tobool.i.i.i, i64* bitcast (%t3** getelementptr inbounds (%t1, %t1* @_ZN4Foam10SLListBase13endConstIter_E, i64 0, i32 1) to i64*), i64* %0
  %agg.tmp.sroa.3.0.copyload33.i = load i64, i64* %agg.tmp.sroa.3.0.copyload33.in.i, align 8
  %1 = inttoptr i64 %agg.tmp.sroa.3.0.copyload33.i to %t3*
  %2 = load %t3*, %t3** getelementptr inbounds (%t1, %t1* @_ZN4Foam10SLListBase13endConstIter_E, i64 0, i32 1), align 8
  %cmp.i37.i = icmp eq %t3* %1, %2
  br i1 %cmp.i37.i, label %invoke.cont79, label %for.body.lr.ph.i



for.body.lr.ph.i:                                 
  br label %for.body.i

for.body.i:                                       
  br i1 undef, label %invoke.cont79, label %for.body.i

invoke.cont79:                                    
  unreachable

if.else82:                                        
  ret void
}

attributes #0 = { "target-cpu"="a2q" }

