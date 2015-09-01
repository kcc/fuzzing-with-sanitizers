
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-bgq-linux"

%"class.Foam::messageStream.6" = type <{ %"class.Foam::string.5", i32, i32, i32, [4 x i8] }>
%"class.Foam::string.5" = type { %"class.std::basic_string.4" }
%"class.std::basic_string.4" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider.3" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider.3" = type { i8* }
%"class.Foam::prefixOSstream.27" = type { %"class.Foam::OSstream.26", i8, %"class.Foam::string.5" }
%"class.Foam::OSstream.26" = type { %"class.Foam::Ostream.base.9", %"class.Foam::fileName.10", %"class.std::basic_ostream.25"* }
%"class.Foam::Ostream.base.9" = type <{ %"class.Foam::IOstream.8", i16 }>
%"class.Foam::IOstream.8" = type { i32 (...)**, i32, [4 x i8], %"class.Foam::IOstream::versionNumber.7", i32, i32, i32, i32 }
%"class.Foam::IOstream::versionNumber.7" = type <{ double, i32, [4 x i8] }>
%"class.Foam::fileName.10" = type { %"class.Foam::string.5" }
%"class.std::basic_ostream.25" = type { i32 (...)**, %"class.std::basic_ios.24" }
%"class.std::basic_ios.24" = type { %"class.std::ios_base.16", %"class.std::basic_ostream.25"*, i8, i8, %"class.std::basic_streambuf.17"*, %"class.std::ctype.21"*, %"class.std::__gnu_cxx_ldbl128::num_put.22"*, %"class.std::__gnu_cxx_ldbl128::num_get.23"* }
%"class.std::ios_base.16" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list.11"*, %"struct.std::ios_base::_Words.12", [8 x %"struct.std::ios_base::_Words.12"], i32, %"struct.std::ios_base::_Words.12"*, %"class.std::locale.15" }
%"struct.std::ios_base::_Callback_list.11" = type { %"struct.std::ios_base::_Callback_list.11"*, void (i32, %"class.std::ios_base.16"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words.12" = type { i8*, i64 }
%"class.std::locale.15" = type { %"class.std::locale::_Impl.14"* }
%"class.std::locale::_Impl.14" = type { i32, %"class.std::locale::facet.13"**, i64, %"class.std::locale::facet.13"**, i8** }
%"class.std::locale::facet.13" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf.17" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale.15" }
%"class.std::ctype.21" = type <{ %"class.std::locale::facet.base.18", [4 x i8], %struct.__locale_struct.20*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base.18" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct.20 = type { [13 x %struct.__locale_data.19*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data.19 = type opaque
%"class.std::__gnu_cxx_ldbl128::num_put.22" = type { %"class.std::locale::facet.base.18", [4 x i8] }
%"class.std::__gnu_cxx_ldbl128::num_get.23" = type { %"class.std::locale::facet.base.18", [4 x i8] }
%"class.Foam::primitiveMesh.135" = type { i32 (...)**, i32, i32, i32, i32, i32, i32, i32, i32, i32, %"class.Foam::List.116"*, %"class.Foam::List.0"*, %"class.Foam::List.1"*, %"class.Foam::List.1"*, %"class.Foam::List.1"*, %"class.Foam::List.5"*, %"class.Foam::List.1"*, %"class.Foam::List.1"*, %"class.Foam::List.1"*, %"class.Foam::List.1"*, %"class.Foam::List.1"*, %"class.Foam::List.1"*, %"class.Foam::List.1"*, %"class.Foam::DynamicList.40", %"class.Foam::HashSet.127", %"class.Foam::Field.131"*, %"class.Foam::Field.131"*, %"class.Foam::Field.11"*, %"class.Foam::Field.131"* }
%"class.Foam::List.116" = type opaque
%"class.Foam::List.0" = type { %"class.Foam::UList.119" }
%"class.Foam::UList.119" = type { i32, %"class.Foam::edge.118"* }
%"class.Foam::edge.118" = type { %"class.Foam::FixedList.117" }
%"class.Foam::FixedList.117" = type { [2 x i32] }
%"class.Foam::List.5" = type { %"class.Foam::UList.6" }
%"class.Foam::UList.6" = type { i32, %"class.Foam::cell.121"* }
%"class.Foam::cell.121" = type { %"class.Foam::List.3" }
%"class.Foam::List.3" = type { %"class.Foam::UList.4" }
%"class.Foam::UList.4" = type { i32, i32* }
%"class.Foam::List.1" = type { %"class.Foam::UList.2" }
%"class.Foam::UList.2" = type { i32, %"class.Foam::List.3"* }
%"class.Foam::DynamicList.40" = type <{ %"class.Foam::List.3", i32, [4 x i8] }>
%"class.Foam::HashSet.127" = type { %"class.Foam::HashTable.7" }
%"class.Foam::HashTable.7" = type { i32, i32, %"struct.Foam::HashTable<Foam::nil, int, Foam::Hash<Foam::label> >::hashedEntry.125"** }
%"struct.Foam::HashTable<Foam::nil, int, Foam::Hash<Foam::label> >::hashedEntry.125" = type <{ i32, [4 x i8], %"struct.Foam::HashTable<Foam::nil, int, Foam::Hash<Foam::label> >::hashedEntry.125"*, %"class.Foam::nil.124", [7 x i8] }>
%"class.Foam::nil.124" = type { i8 }
%"class.Foam::Field.11" = type { %"class.Foam::refCount.128", %"class.Foam::List.12" }
%"class.Foam::refCount.128" = type { i32 }
%"class.Foam::List.12" = type { %"class.Foam::UList.13" }
%"class.Foam::UList.13" = type { i32, double* }
%"class.Foam::Field.131" = type { %"class.Foam::refCount.128", %"class.Foam::List.8" }
%"class.Foam::List.8" = type { %"class.Foam::UList.9" }
%"class.Foam::UList.9" = type { i32, %"class.Foam::Vector.29"* }
%"class.Foam::Vector.29" = type { %"class.Foam::VectorSpace.10" }
%"class.Foam::VectorSpace.10" = type { [3 x double] }
%"class.Foam::Ostream.189" = type <{ %"class.Foam::IOstream.8", i16, [6 x i8] }>

@_ZN4Foam4InfoE = external global %"class.Foam::messageStream.6", align 8
@.str27 = external unnamed_addr constant [24 x i8], align 1
@.str28 = external unnamed_addr constant [7 x i8], align 1
@_ZN4Foam4PoutE = external global %"class.Foam::prefixOSstream.27", align 8

define void @_ZN4Foam13checkTopologyERKNS_8polyMeshEbb(i1 zeroext %allTopology) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  br i1 undef, label %for.body, label %for.cond.cleanup



















for.cond.cleanup:                                 
  br i1 undef, label %if.then.i, label %if.else.i

if.then.i:                                        
  br i1 undef, label %if.then.i1435, label %if.else.i1436

if.else.i:                                        
  unreachable

if.then.i1435:                                    
  br label %_ZN4Foam12returnReduceIiNS_5sumOpIiEEEET_RKS3_RKT0_ii.exit

if.else.i1436:                                    
  br label %_ZN4Foam12returnReduceIiNS_5sumOpIiEEEET_RKS3_RKT0_ii.exit

_ZN4Foam12returnReduceIiNS_5sumOpIiEEEET_RKS3_RKT0_ii.exit: 
  br i1 undef, label %for.body.i, label %_ZNK4Foam8ZoneMeshINS_8cellZoneENS_8polyMeshEE15checkDefinitionEb.exit

for.body:                                         
  unreachable

for.body.i:                                       
  unreachable

_ZNK4Foam8ZoneMeshINS_8cellZoneENS_8polyMeshEE15checkDefinitionEb.exit: 
  br i1 undef, label %for.body.i1480, label %_ZNK4Foam8ZoneMeshINS_8faceZoneENS_8polyMeshEE15checkDefinitionEb.exit

for.body.i1480:                                   
  unreachable

_ZNK4Foam8ZoneMeshINS_8faceZoneENS_8polyMeshEE15checkDefinitionEb.exit: 
  br i1 undef, label %for.body.i1504, label %_ZNK4Foam8ZoneMeshINS_9pointZoneENS_8polyMeshEE15checkDefinitionEb.exit

for.body.i1504:                                   
  unreachable

_ZNK4Foam8ZoneMeshINS_9pointZoneENS_8polyMeshEE15checkDefinitionEb.exit: 
  invoke void @_ZN4Foam4word12stripInvalidEv()
          to label %_ZN4Foam4wordC2EPKcb.exit unwind label %lpad.i

lpad.i:                                           
  %0 = landingpad { i8*, i32 }
          cleanup
  resume { i8*, i32 } %0

_ZN4Foam4wordC2EPKcb.exit:                        
  invoke void @_ZN4Foam7cellSetC1ERKNS_8polyMeshERKNS_4wordEiNS_8IOobject11writeOptionE()
          to label %invoke.cont59 unwind label %lpad

invoke.cont59:                                    
  br i1 undef, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !1

if.then.i.i:                                      
  br i1 true, label %if.then.i.i.i1508, label %if.else.i.i.i

if.then.i.i.i1508:                                
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i

if.else.i.i.i:                                    
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i: 
  br i1 undef, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   
  br i1 undef, label %for.body70, label %for.cond.cleanup69

for.cond.cleanup69:                               
  br i1 undef, label %if.then121, label %if.else

lpad:                                             
  %1 = landingpad { i8*, i32 }
          cleanup
  br i1 undef, label %_ZNSsD2Ev.exit1578, label %if.then.i.i1570, !prof !1

if.then.i.i1570:                                  
  br i1 undef, label %if.then4.i.i1577, label %_ZNSsD2Ev.exit1578

if.then4.i.i1577:                                 
  unreachable

_ZNSsD2Ev.exit1578:                               
  unreachable

for.body70:                                       
  unreachable

if.then121:                                       
  unreachable

if.else:                                          
  invoke void @_ZN4Foam4word12stripInvalidEv()
          to label %_ZN4Foam4wordC2EPKcb.exit1701 unwind label %lpad.i1689

lpad.i1689:                                       
  %2 = landingpad { i8*, i32 }
          cleanup
  unreachable

_ZN4Foam4wordC2EPKcb.exit1701:                    
  invoke void @_ZN4Foam8pointSetC1ERKNS_8polyMeshERKNS_4wordEiNS_8IOobject11writeOptionE()
          to label %invoke.cont169 unwind label %lpad165

invoke.cont169:                                   
  %call177 = invoke zeroext i1 undef(%"class.Foam::primitiveMesh.135"* undef, i1 zeroext true, %"class.Foam::HashSet.127"* undef)
          to label %invoke.cont176 unwind label %lpad175

invoke.cont176:                                   
  br i1 %call177, label %if.then178, label %if.end213

if.then178:                                       
  unreachable

lpad165:                                          
  %3 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad175:                                          
  %4 = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZN4Foam8pointSetD1Ev()
          to label %eh.resume unwind label %terminate.lpad

if.end213:                                        
  invoke void @_ZN4Foam4word12stripInvalidEv()
          to label %_ZN4Foam4wordC2EPKcb.exit1777 unwind label %lpad.i1765

lpad.i1765:                                       
  %5 = landingpad { i8*, i32 }
          cleanup
  br i1 undef, label %eh.resume.i1776, label %if.then.i.i.i1767, !prof !1

if.then.i.i.i1767:                                
  unreachable

eh.resume.i1776:                                  
  resume { i8*, i32 } %5

_ZN4Foam4wordC2EPKcb.exit1777:                    
  invoke void @_ZN4Foam7faceSetC1ERKNS_8polyMeshERKNS_4wordEiNS_8IOobject11writeOptionE()
          to label %invoke.cont221 unwind label %lpad217

invoke.cont221:                                   
  br i1 undef, label %_ZNSsD2Ev.exit1792, label %if.then.i.i1784, !prof !1

if.then.i.i1784:                                  
  br i1 undef, label %if.then4.i.i1791, label %_ZNSsD2Ev.exit1792

if.then4.i.i1791:                                 
  br label %_ZNSsD2Ev.exit1792

_ZNSsD2Ev.exit1792:                               
  %call232 = invoke zeroext i1 undef(%"class.Foam::primitiveMesh.135"* undef, i1 zeroext true, %"class.Foam::HashSet.127"* undef)
          to label %invoke.cont231 unwind label %lpad230

invoke.cont231:                                   
  invoke void @_ZN4Foam6reduceIiNS_5sumOpIiEEEEvRKNS_4ListINS_8UPstream11commsStructEEERT_RKT0_ii()
          to label %invoke.cont243 unwind label %lpad230

lpad217:                                          
  %6 = landingpad { i8*, i32 }
          cleanup
  br label %eh.resume

lpad230:                                          
  %7 = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZN4Foam7faceSetD1Ev()
          to label %eh.resume unwind label %terminate.lpad

invoke.cont243:                                   
  invoke void @_ZN4Foam4word12stripInvalidEv()
          to label %_ZN4Foam4wordC2EPKcb.exit1862 unwind label %lpad.i1850

lpad.i1850:                                       
  %8 = landingpad { i8*, i32 }
          cleanup
  unreachable

_ZN4Foam4wordC2EPKcb.exit1862:                    
  invoke void @_ZN4Foam7faceSetC1ERKNS_8polyMeshERKNS_4wordEiNS_8IOobject11writeOptionE()
          to label %invoke.cont280 unwind label %lpad276

invoke.cont280:                                   
  br i1 undef, label %_ZNSsD2Ev.exit1877, label %if.then.i.i1869, !prof !1

if.then.i.i1869:                                  
  unreachable

_ZNSsD2Ev.exit1877:                               
  br i1 undef, label %if.then292, label %if.end328

if.then292:                                       
  unreachable

lpad276:                                          
  %9 = landingpad { i8*, i32 }
          cleanup
  unreachable

if.end328:                                        
  br i1 %allTopology, label %if.then331, label %if.end660

if.then331:                                       
  unreachable

if.end660:                                        
  invoke void @_ZN4Foam13messageStreamcvRNS_8OSstreamEEv()
          to label %invoke.cont668 unwind label %lpad663

invoke.cont668:                                   
  %call671 = invoke dereferenceable(56) %"class.Foam::Ostream.189"* @_ZN4FoamlsERNS_7OstreamEPKc()
          to label %invoke.cont670 unwind label %lpad663

invoke.cont670:                                   
  invoke void @_ZN4FoamlsERNS_7OstreamEi()
          to label %invoke.cont674 unwind label %lpad663

invoke.cont674:                                   
  %call677 = invoke dereferenceable(56) %"class.Foam::Ostream.189"* @_ZN4FoamlsERNS_7OstreamEPKc()
          to label %invoke.cont676 unwind label %lpad663

invoke.cont676:                                   
  invoke void undef(%"class.Foam::Ostream.189"* %call677)
          to label %if.end878 unwind label %lpad663

lpad663:                                          
  %10 = landingpad { i8*, i32 }
          cleanup
  br i1 undef, label %_ZN4Foam4ListIiED2Ev.exit.i3073, label %delete.notnull.i.i3071

if.end878:                                        
  br i1 undef, label %_ZN4Foam11regionSplitD2Ev.exit, label %delete.notnull.i.i3056

delete.notnull.i.i3056:                           
  unreachable

_ZN4Foam11regionSplitD2Ev.exit:                   
  br i1 undef, label %if.then883, label %if.else888

if.then883:                                       
  unreachable

delete.notnull.i.i3071:                           
  unreachable

_ZN4Foam4ListIiED2Ev.exit.i3073:                  
  invoke void @_ZN4Foam11regIOobjectD2Ev()
          to label %eh.resume unwind label %terminate.lpad

if.else888:                                       
  invoke void @_ZN4Foam4word12stripInvalidEv()
          to label %_ZN4Foam4wordC2EPKcb.exit3098 unwind label %lpad.i3086

lpad.i3086:                                       
  %11 = landingpad { i8*, i32 }
          cleanup
  unreachable

_ZN4Foam4wordC2EPKcb.exit3098:                    
  invoke void @_ZN4Foam8pointSetC1ERKNS_8polyMeshERKNS_4wordEiNS_8IOobject11writeOptionE()
          to label %invoke.cont902 unwind label %lpad898

invoke.cont902:                                   
  br i1 undef, label %_ZNSsD2Ev.exit3113, label %if.then.i.i3105, !prof !1

if.then.i.i3105:                                  
  br i1 undef, label %if.then4.i.i3112, label %_ZNSsD2Ev.exit3113

if.then4.i.i3112:                                 
  unreachable

_ZNSsD2Ev.exit3113:                               
  %call.i31163117 = invoke zeroext i32 undef(%"class.Foam::IOstream.8"* getelementptr inbounds (%"class.Foam::prefixOSstream.27", %"class.Foam::prefixOSstream.27"* @_ZN4Foam4PoutE, i64 0, i32 0, i32 0, i32 0))
          to label %call.i3116.noexc unwind label %lpad905.loopexit.split-lp

call.i3116.noexc:                                 
  %call5.i3118 = invoke zeroext i32 null(%"class.Foam::IOstream.8"* getelementptr inbounds (%"class.Foam::prefixOSstream.27", %"class.Foam::prefixOSstream.27"* @_ZN4Foam4PoutE, i64 0, i32 0, i32 0, i32 0), i32 zeroext undef)
          to label %invoke.cont906 unwind label %lpad905.loopexit.split-lp

invoke.cont906:                                   
  unreachable

lpad898:                                          
  %12 = landingpad { i8*, i32 }
          cleanup
  br i1 undef, label %_ZNSsD2Ev.exit3204, label %if.then.i.i3196, !prof !1

if.then.i.i3196:                                  
  unreachable

_ZNSsD2Ev.exit3204:                               
  unreachable

lpad905.loopexit.split-lp:                        
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  invoke void @_ZN4Foam8pointSetD1Ev()
          to label %eh.resume unwind label %terminate.lpad

eh.resume:                                        
  resume { i8*, i32 } undef

terminate.lpad:                                   
  %13 = landingpad { i8*, i32 }
          catch i8* null
  unreachable
}

declare dereferenceable(56) %"class.Foam::Ostream.189"* @_ZN4FoamlsERNS_7OstreamEPKc() #0

declare void @_ZN4Foam13messageStreamcvRNS_8OSstreamEEv() #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4Foam7cellSetC1ERKNS_8polyMeshERKNS_4wordEiNS_8IOobject11writeOptionE() #0

declare void @_ZN4FoamlsERNS_7OstreamEi() #0

declare void @_ZN4Foam8pointSetC1ERKNS_8polyMeshERKNS_4wordEiNS_8IOobject11writeOptionE() #0

declare void @_ZN4Foam8pointSetD1Ev() #0

declare void @_ZN4Foam7faceSetC1ERKNS_8polyMeshERKNS_4wordEiNS_8IOobject11writeOptionE() #0

declare void @_ZN4Foam7faceSetD1Ev() #0


declare void @_ZN4Foam4word12stripInvalidEv() #1 align 2

declare void @_ZN4Foam11regIOobjectD2Ev() #0

declare void @_ZN4Foam6reduceIiNS_5sumOpIiEEEEvRKNS_4ListINS_8UPstream11commsStructEEERT_RKT0_ii() #0

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="a2q" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="a2q" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"branch_weights", i32 64, i32 4}
