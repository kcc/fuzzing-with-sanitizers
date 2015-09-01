

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"

@.str12 = external constant [3 x i8], align 1		
@.str17175 = external constant [4 x i8], align 1		
@.str21179 = external constant [12 x i8], align 1		
@.str25183 = external constant [10 x i8], align 1		
@.str32190 = external constant [92 x i8], align 1		
@.str41 = external constant [25 x i8], align 1		

define void @_ZN8EtherBus10initializeEv() personality i32 (...)* @__gxx_personality_v0 {
entry:
	br i1 undef, label %_ZN7cObjectnwEj.exit, label %bb.i

bb.i:		
	br label %_ZN7cObjectnwEj.exit

_ZN7cObjectnwEj.exit:		
	invoke void @_ZN7cObjectC2EPKc(i8* undef, i8* getelementptr ([12 x i8], [12 x i8]* @.str21179, i32 0, i32 0))
			to label %bb1 unwind label %lpad

bb1:		
	br i1 undef, label %_ZNK5cGate4sizeEv.exit, label %bb.i110

bb.i110:		
	br label %_ZNK5cGate4sizeEv.exit

_ZNK5cGate4sizeEv.exit:		
	br i1 undef, label %_ZNK5cGate4sizeEv.exit122, label %bb.i120

bb.i120:		
	br label %_ZNK5cGate4sizeEv.exit122

_ZNK5cGate4sizeEv.exit122:		
	br i1 undef, label %bb8, label %bb2

bb2:		
	unreachable

bb8:		
	%tmp = invoke i8* @_ZN7cModule3parEPKc(i8* undef, i8* getelementptr ([10 x i8], [10 x i8]* @.str25183, i32 0, i32 0))
			to label %invcont9 unwind label %lpad119		

invcont9:		
	%tmp1 = invoke i8* @_ZN4cPar11stringValueEv(i8* %tmp)
			to label %invcont10 unwind label %lpad119		

invcont10:		
	invoke void @_ZN8EtherBus8tokenizeEPKcRSt6vectorIdSaIdEE(i8* null, i8* %tmp1, i8* undef)
			to label %invcont11 unwind label %lpad119

invcont11:		
	br i1 undef, label %bb12, label %bb18

bb12:		
	invoke void (i8*, i8*, ...) @_ZN6cEnvir6printfEPKcz(i8* null, i8* getelementptr ([3 x i8], [3 x i8]* @.str12, i32 0, i32 0), i32 undef)
			to label %bb.i.i159 unwind label %lpad119

bb.i.i159:		
	unreachable

bb18:		
	br i1 undef, label %bb32, label %bb34

bb32:		
	br i1 undef, label %bb.i.i123, label %bb34

bb.i.i123:		
	br label %bb34

bb34:		
	%tmp2 = invoke i8* @_Znaj(i32 undef)
			to label %invcont35 unwind label %lpad119		

invcont35:		
	br i1 undef, label %bb49, label %bb61

bb49:		
	invoke void (i8*, i8*, ...) @_ZNK13cSimpleModule5errorEPKcz(i8* undef, i8* getelementptr ([92 x i8], [92 x i8]* @.str32190, i32 0, i32 0))
			to label %bb51 unwind label %lpad119

bb51:		
	unreachable

bb61:		
	br label %bb106

.noexc:		
	invoke void @_ZN7cObjectC2EPKc(i8* undef, i8* getelementptr ([25 x i8], [25 x i8]* @.str41, i32 0, i32 0))
			to label %bb102 unwind label %lpad123

bb102:		
	invoke void undef(i8* undef, i8 zeroext 1)
			to label %invcont103 unwind label %lpad119

invcont103:		
	invoke void undef(i8* undef, double 1.000000e+07)
			to label %invcont104 unwind label %lpad119

invcont104:		
	%tmp3 = invoke i32 @_ZN13cSimpleModule11sendDelayedEP8cMessagedPKci(i8* undef, i8* undef, double 0.000000e+00, i8* getelementptr ([4 x i8], [4 x i8]* @.str17175, i32 0, i32 0), i32 undef)
			to label %invcont105 unwind label %lpad119		

invcont105:		
	br label %bb106

bb106:		
	%tmp4 = invoke i8* @_Znaj(i32 124)
			to label %.noexc unwind label %lpad119		

lpad:		
        %exn = landingpad {i8*, i32}
                 cleanup
	br label %Unwind

lpad119:		
        %exn119 = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad123:		
        %exn123 = landingpad {i8*, i32}
                 cleanup
	%tmp5 = icmp eq i8* %tmp4, null		
	br i1 %tmp5, label %Unwind, label %bb.i2

bb.i2:		
	br label %Unwind

Unwind:		
	unreachable
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN8EtherBus8tokenizeEPKcRSt6vectorIdSaIdEE(i8* nocapture, i8*, i8*)

declare i8* @_Znaj(i32)

declare void @_ZN6cEnvir6printfEPKcz(i8* nocapture, i8* nocapture, ...)

declare void @_ZNK13cSimpleModule5errorEPKcz(i8* nocapture, i8* nocapture, ...) noreturn

declare i8* @_ZN7cModule3parEPKc(i8*, i8*)

declare i32 @_ZN13cSimpleModule11sendDelayedEP8cMessagedPKci(i8*, i8*, double, i8*, i32)

declare void @_ZN7cObjectC2EPKc(i8*, i8*)

declare i8* @_ZN4cPar11stringValueEv(i8*)
