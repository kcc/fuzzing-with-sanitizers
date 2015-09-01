

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "i686-apple-darwin8"
        %struct.SFLMutableListItem = type { i16 }
        %struct.__CFDictionary = type opaque
        %struct.__CFString = type opaque
        %struct.__builtin_CFString = type { i32*, i32, i8*, i32 }
@_ZZ19SFLGetVisibilityKeyvE19_kSFLLVisibilityKey = internal global %struct.__CFString* null             
@_ZZ22SFLGetAlwaysVisibleKeyvE22_kSFLLAlwaysVisibleKey = internal global %struct.__CFString* null               
internal constant %struct.__builtin_CFString {
    i32* getelementptr ([0 x i32], [0 x i32]* @__CFConstantStringClassReference, i32 0, i32 0), 
    i32 1992, 
    i8* getelementptr ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), 
    i32 13 }, section "__DATA,__cfstring"               
@__CFConstantStringClassReference = external global [0 x i32]           
@.str = internal constant [14 x i8] c"AlwaysVisible\00"         
@_ZZ21SFLGetNeverVisibleKeyvE21_kSFLLNeverVisibleKey = internal global %struct.__CFString* null         

define %struct.__CFString* @_Z19SFLGetVisibilityKeyv() {
entry:
        %tmp1 = load %struct.__CFString*, %struct.__CFString** @_ZZ19SFLGetVisibilityKeyvE19_kSFLLVisibilityKey              
        ret %struct.__CFString* %tmp1
}

define %struct.__CFString* @_Z22SFLGetAlwaysVisibleKeyv() {
entry:
        %tmp1 = load %struct.__CFString*, %struct.__CFString** @_ZZ22SFLGetAlwaysVisibleKeyvE22_kSFLLAlwaysVisibleKey                
        %tmp2 = icmp eq %struct.__CFString* %tmp1, null         
        br i1 %tmp2, label %cond_true, label %cond_next

cond_true:              
        store %struct.__CFString* bitcast (%struct.__builtin_CFString* @0 to %struct.__CFString*), %struct.__CFString** @_ZZ22SFLGetAlwaysVisibleKeyvE22_kSFLLAlwaysVisibleKey
        br label %cond_next

cond_next:              
        %tmp4 = load %struct.__CFString*, %struct.__CFString** @_ZZ22SFLGetAlwaysVisibleKeyvE22_kSFLLAlwaysVisibleKey                
        ret %struct.__CFString* %tmp4
}

define %struct.__CFString* @_Z21SFLGetNeverVisibleKeyv() {
entry:
        %tmp1 = load %struct.__CFString*, %struct.__CFString** @_ZZ21SFLGetNeverVisibleKeyvE21_kSFLLNeverVisibleKey          
        ret %struct.__CFString* %tmp1
}

define %struct.__CFDictionary* @_ZN18SFLMutableListItem18GetPrefsDictionaryEv(%struct.SFLMutableListItem* %this) {
entry:
        %tmp4 = getelementptr %struct.SFLMutableListItem, %struct.SFLMutableListItem* %this, i32 0, i32 0  
        %tmp5 = load i16, i16* %tmp4         
        %tmp6 = icmp eq i16 %tmp5, 0            
        br i1 %tmp6, label %cond_next22, label %cond_true

cond_true:              
        %tmp9 = load %struct.__CFString*, %struct.__CFString** @_ZZ22SFLGetAlwaysVisibleKeyvE22_kSFLLAlwaysVisibleKey                
        %tmp10 = icmp eq %struct.__CFString* %tmp9, null                
        br i1 %tmp10, label %cond_true13, label %cond_next22

cond_true13:            
        store %struct.__CFString* bitcast (%struct.__builtin_CFString* @0 to %struct.__CFString*), %struct.__CFString** @_ZZ22SFLGetAlwaysVisibleKeyvE22_kSFLLAlwaysVisibleKey
        br label %cond_next22

cond_next22:            
        %iftmp.1.0.in = phi %struct.__CFString** [ @_ZZ22SFLGetAlwaysVisibleKeyvE22_kSFLLAlwaysVisibleKey, %cond_true ], [ @_ZZ22SFLGetAlwaysVisibleKeyvE22_kSFLLAlwaysVisibleKey, %cond_true13 ], [ @_ZZ21SFLGetNeverVisibleKeyvE21_kSFLLNeverVisibleKey, %entry ]             
        %iftmp.1.0 = load %struct.__CFString*, %struct.__CFString** %iftmp.1.0.in            
        %tmp24 = load %struct.__CFString*, %struct.__CFString** @_ZZ19SFLGetVisibilityKeyvE19_kSFLLVisibilityKey             
        %tmp2728 = bitcast %struct.__CFString* %tmp24 to i8*            
        %tmp2930 = bitcast %struct.__CFString* %iftmp.1.0 to i8*               
        call void @_Z20CFDictionaryAddValuePKvS0_( i8* %tmp2728, i8* %tmp2930 )
        ret %struct.__CFDictionary* undef
}

declare void @_Z20CFDictionaryAddValuePKvS0_(i8*, i8*)

