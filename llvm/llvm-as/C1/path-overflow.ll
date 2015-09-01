










target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:32:64-v128:32:128-a0:0:32-n32-S32"
target triple = "thumbv7-apple-ios5.0.0"

%struct.NSConstantString = type { i32*, i32, i8*, i32 }
%struct.CGPoint = type { float, float }

@_unnamed_cfstring = external constant %struct.NSConstantString, section "__DATA,__cfstring"
@_unnamed_cfstring_2 = external constant %struct.NSConstantString, section "__DATA,__cfstring"

declare i8* @objc_retain(i8*) nonlazybind
declare i8* @objc_retainAutoreleasedReturnValue(i8*) nonlazybind
declare void @objc_release(i8*) nonlazybind
declare i8* @returner()
declare i8* @objc_msgSend(i8*, i8*, ...) nonlazybind
declare void @NSLog(i8*, ...)
declare void @objc_msgSend_stret(i8*, i8*, ...)
declare i32 @__gxx_personality_sj0(...)
declare i32 @__objc_personality_v0(...)


define hidden void @test1() personality i8* bitcast (i32 (...)* @__gxx_personality_sj0 to i8*) {
entry:
  br i1 undef, label %msgSend.nullinit, label %msgSend.call

msgSend.call:                                     
  br label %msgSend.cont

msgSend.nullinit:                                 
  br label %msgSend.cont

msgSend.cont:                                     
  %0 = bitcast %struct.NSConstantString* @_unnamed_cfstring to i8*
  %1 = call i8* @objc_retain(i8* %0) nounwind
  br i1 undef, label %msgSend.nullinit33, label %msgSend.call32

msgSend.call32:                                   
  br label %msgSend.cont34

msgSend.nullinit33:                               
  br label %msgSend.cont34

msgSend.cont34:                                   
  br i1 undef, label %msgSend.nullinit38, label %msgSend.call37

msgSend.call37:                                   
  br label %msgSend.cont39

msgSend.nullinit38:                               
  br label %msgSend.cont39

msgSend.cont39:                                   
  br i1 undef, label %msgSend.nullinit49, label %msgSend.call48

msgSend.call48:                                   
  br label %msgSend.cont50

msgSend.nullinit49:                               
  br label %msgSend.cont50

msgSend.cont50:                                   
  br i1 undef, label %msgSend.nullinit61, label %msgSend.call60

msgSend.call60:                                   
  br label %msgSend.cont62

msgSend.nullinit61:                               
  br label %msgSend.cont62

msgSend.cont62:                                   
  br i1 undef, label %msgSend.nullinit67, label %msgSend.call66

msgSend.call66:                                   
  br label %msgSend.cont68

msgSend.nullinit67:                               
  br label %msgSend.cont68

msgSend.cont68:                                   
  br i1 undef, label %msgSend.nullinit84, label %msgSend.call83

msgSend.call83:                                   
  br label %msgSend.cont85

msgSend.nullinit84:                               
  br label %msgSend.cont85

msgSend.cont85:                                   
  br i1 undef, label %msgSend.nullinit90, label %msgSend.call89

msgSend.call89:                                   
  br label %msgSend.cont91

msgSend.nullinit90:                               
  br label %msgSend.cont91

msgSend.cont91:                                   
  br i1 undef, label %msgSend.nullinit104, label %msgSend.call103

msgSend.call103:                                  
  br label %msgSend.cont105

msgSend.nullinit104:                              
  br label %msgSend.cont105

msgSend.cont105:                                  
  br i1 undef, label %land.lhs.true, label %if.end123

land.lhs.true:                                    
  br i1 undef, label %if.then117, label %if.end123

if.then117:                                       
  br label %if.end123

if.end123:                                        
  br i1 undef, label %msgSend.nullinit132, label %msgSend.call131

msgSend.call131:                                  
  br label %msgSend.cont133

msgSend.nullinit132:                              
  br label %msgSend.cont133

msgSend.cont133:                                  
  br i1 undef, label %msgSend.nullinit139, label %msgSend.call138

msgSend.call138:                                  
  br label %msgSend.cont140

msgSend.nullinit139:                              
  br label %msgSend.cont140

msgSend.cont140:                                  
  br i1 undef, label %if.then151, label %if.end157

if.then151:                                       
  br label %if.end157

if.end157:                                        
  br i1 undef, label %msgSend.nullinit164, label %msgSend.call163

msgSend.call163:                                  
  br label %msgSend.cont165

msgSend.nullinit164:                              
  br label %msgSend.cont165

msgSend.cont165:                                  
  br i1 undef, label %msgSend.nullinit176, label %msgSend.call175

msgSend.call175:                                  
  br label %msgSend.cont177

msgSend.nullinit176:                              
  br label %msgSend.cont177

msgSend.cont177:                                  
  br i1 undef, label %land.lhs.true181, label %if.end202

land.lhs.true181:                                 
  br i1 undef, label %if.then187, label %if.end202

if.then187:                                       
  br i1 undef, label %msgSend.nullinit199, label %msgSend.call198

msgSend.call198:                                  
  br label %msgSend.cont200

msgSend.nullinit199:                              
  br label %msgSend.cont200

msgSend.cont200:                                  
  br label %if.end202

if.end202:                                        
  br i1 undef, label %msgSend.nullinit236, label %msgSend.call235

msgSend.call235:                                  
  br label %msgSend.cont237

msgSend.nullinit236:                              
  br label %msgSend.cont237

msgSend.cont237:                                  
  br i1 undef, label %msgSend.nullinit254, label %msgSend.call253

msgSend.call253:                                  
  br label %msgSend.cont255

msgSend.nullinit254:                              
  br label %msgSend.cont255

msgSend.cont255:                                  
  br i1 undef, label %msgSend.nullinit269, label %msgSend.call268

msgSend.call268:                                  
  br label %msgSend.cont270

msgSend.nullinit269:                              
  br label %msgSend.cont270

msgSend.cont270:                                  
  br i1 undef, label %msgSend.nullinit281, label %msgSend.call280

msgSend.call280:                                  
  br label %msgSend.cont282

msgSend.nullinit281:                              
  br label %msgSend.cont282

msgSend.cont282:                                  
  br i1 undef, label %msgSend.nullinit287, label %msgSend.call286

msgSend.call286:                                  
  br label %msgSend.cont288

msgSend.nullinit287:                              
  br label %msgSend.cont288

msgSend.cont288:                                  
  br i1 undef, label %msgSend.nullinit303, label %msgSend.call302

msgSend.call302:                                  
  br label %msgSend.cont304

msgSend.nullinit303:                              
  br label %msgSend.cont304

msgSend.cont304:                                  
  br i1 undef, label %msgSend.nullinit344, label %msgSend.call343

msgSend.call343:                                  
  br label %msgSend.cont345

msgSend.nullinit344:                              
  br label %msgSend.cont345

msgSend.cont345:                                  
  br i1 undef, label %msgSend.nullinit350, label %msgSend.call349

msgSend.call349:                                  
  br label %msgSend.cont351

msgSend.nullinit350:                              
  br label %msgSend.cont351

msgSend.cont351:                                  
  br i1 undef, label %msgSend.nullinit366, label %msgSend.call365

msgSend.call365:                                  
  br label %msgSend.cont367

msgSend.nullinit366:                              
  br label %msgSend.cont367

msgSend.cont367:                                  
  br i1 undef, label %msgSend.nullinit376, label %msgSend.call375

msgSend.call375:                                  
  br label %msgSend.cont377

msgSend.nullinit376:                              
  br label %msgSend.cont377

msgSend.cont377:                                  
  br i1 undef, label %if.then384, label %if.else401

if.then384:                                       
  br i1 undef, label %msgSend.nullinit392, label %msgSend.call391

msgSend.call391:                                  
  br label %msgSend.cont393

msgSend.nullinit392:                              
  br label %msgSend.cont393

msgSend.cont393:                                  
  br label %if.end418

if.else401:                                       
  br i1 undef, label %msgSend.nullinit409, label %msgSend.call408

msgSend.call408:                                  
  br label %msgSend.cont410

msgSend.nullinit409:                              
  br label %msgSend.cont410

msgSend.cont410:                                  
  br label %if.end418

if.end418:                                        
  br i1 undef, label %msgSend.nullinit470, label %msgSend.call469

msgSend.call469:                                  
  br label %msgSend.cont471

msgSend.nullinit470:                              
  br label %msgSend.cont471

msgSend.cont471:                                  
  br i1 undef, label %msgSend.nullinit484, label %msgSend.call483

msgSend.call483:                                  
  br label %msgSend.cont485

msgSend.nullinit484:                              
  br label %msgSend.cont485

msgSend.cont485:                                  
  br i1 undef, label %msgSend.nullinit500, label %msgSend.call499

msgSend.call499:                                  
  br label %msgSend.cont501

msgSend.nullinit500:                              
  br label %msgSend.cont501

msgSend.cont501:                                  
  br i1 undef, label %msgSend.nullinit506, label %msgSend.call505

msgSend.call505:                                  
  br label %msgSend.cont507

msgSend.nullinit506:                              
  br label %msgSend.cont507

msgSend.cont507:                                  
  call void @objc_release(i8* %0) nounwind, !clang.imprecise_release !0
  ret void
}


define void @test2() unnamed_addr align 2 {
bb:
  br i1 undef, label %bb3, label %bb2

bb2:                                              
  br label %bb3

bb3:                                              
  br i1 undef, label %bb5, label %bb4

bb4:                                              
  br label %bb5

bb5:                                              
  br i1 undef, label %bb7, label %bb6

bb6:                                              
  br label %bb7

bb7:                                              
  br i1 undef, label %bb9, label %bb8

bb8:                                              
  unreachable

bb9:                                              
  br i1 undef, label %bb11, label %bb10

bb10:                                             
  br label %bb11

bb11:                                             
  br i1 undef, label %bb13, label %bb12

bb12:                                             
  br label %bb13

bb13:                                             
  br i1 undef, label %bb15, label %bb14

bb14:                                             
  br label %bb15

bb15:                                             
  br i1 undef, label %bb17, label %bb16

bb16:                                             
  br label %bb17

bb17:                                             
  br i1 undef, label %bb19, label %bb18

bb18:                                             
  br label %bb19

bb19:                                             
  br i1 undef, label %bb222, label %bb20

bb20:                                             
  br i1 undef, label %bb222, label %bb21

bb21:                                             
  br i1 undef, label %bb22, label %bb30

bb22:                                             
  br i1 undef, label %bb23, label %bb32

bb23:                                             
  br i1 undef, label %bb24, label %bb34

bb24:                                             
  br i1 undef, label %bb26, label %bb25

bb25:                                             
  br label %bb27

bb26:                                             
  br label %bb27

bb27:                                             
  br i1 undef, label %bb28, label %bb42

bb28:                                             
  br i1 undef, label %bb36, label %bb29

bb29:                                             
  br label %bb36

bb30:                                             
  br label %bb213

bb32:                                             
  unreachable

bb34:                                             
  unreachable

bb36:                                             
  br i1 undef, label %bb38, label %bb37

bb37:                                             
  br label %bb39

bb38:                                             
  br label %bb39

bb39:                                             
  br i1 undef, label %bb41, label %bb40

bb40:                                             
  unreachable

bb41:                                             
  br label %bb42

bb42:                                             
  br i1 undef, label %bb43, label %bb214

bb43:                                             
  br i1 undef, label %bb47, label %bb45

bb45:                                             
  unreachable

bb47:                                             
  br i1 undef, label %bb48, label %bb106

bb48:                                             
  br i1 undef, label %bb50, label %bb49

bb49:                                             
  br label %bb51

bb50:                                             
  br label %bb51

bb51:                                             
  br i1 undef, label %bb53, label %bb45

bb53:                                             
  br i1 undef, label %bb54, label %bb134

bb54:                                             
  br i1 undef, label %bb55, label %bb45

bb55:                                             
  br i1 undef, label %bb57, label %bb56

bb56:                                             
  br label %bb58

bb57:                                             
  br label %bb58

bb58:                                             
  br i1 undef, label %bb60, label %bb45

bb60:                                             
  br i1 undef, label %bb61, label %bb45

bb61:                                             
  br i1 undef, label %bb63, label %bb62

bb62:                                             
  br label %bb64

bb63:                                             
  br label %bb64

bb64:                                             
  br i1 undef, label %bb66, label %bb45

bb66:                                             
  br i1 undef, label %bb67, label %bb45

bb67:                                             
  br i1 undef, label %bb69, label %bb68

bb68:                                             
  br label %bb70

bb69:                                             
  br label %bb70

bb70:                                             
  br i1 undef, label %bb72, label %bb45

bb72:                                             
  br i1 undef, label %bb73, label %bb45

bb73:                                             
  br i1 undef, label %bb75, label %bb74

bb74:                                             
  br label %bb76

bb75:                                             
  br label %bb76

bb76:                                             
  br i1 undef, label %bb78, label %bb45

bb78:                                             
  br i1 undef, label %bb79, label %bb45

bb79:                                             
  br i1 undef, label %bb81, label %bb80

bb80:                                             
  br label %bb82

bb81:                                             
  br label %bb82

bb82:                                             
  br i1 undef, label %bb84, label %bb45

bb84:                                             
  br i1 undef, label %bb85, label %bb45

bb85:                                             
  br i1 undef, label %bb87, label %bb86

bb86:                                             
  br label %bb88

bb87:                                             
  br label %bb88

bb88:                                             
  br i1 undef, label %bb90, label %bb45

bb90:                                             
  br i1 undef, label %bb91, label %bb45

bb91:                                             
  br i1 undef, label %bb93, label %bb92

bb92:                                             
  br label %bb94

bb93:                                             
  br label %bb94

bb94:                                             
  br i1 undef, label %bb96, label %bb45

bb96:                                             
  br i1 undef, label %bb97, label %bb45

bb97:                                             
  br i1 undef, label %bb99, label %bb98

bb98:                                             
  br label %bb100

bb99:                                             
  br label %bb100

bb100:                                            
  br i1 undef, label %bb102, label %bb45

bb102:                                            
  br i1 undef, label %bb104, label %bb45

bb104:                                            
  br i1 undef, label %bb108, label %bb105

bb105:                                            
  br i1 undef, label %bb108, label %bb45

bb106:                                            
  unreachable

bb108:                                            
  br i1 undef, label %bb110, label %bb45

bb110:                                            
  br i1 undef, label %bb112, label %bb45

bb112:                                            
  br i1 undef, label %bb114, label %bb45

bb114:                                            
  br i1 undef, label %bb116, label %bb45

bb116:                                            
  br i1 undef, label %bb118, label %bb45

bb118:                                            
  br i1 undef, label %bb120, label %bb45

bb120:                                            
  br i1 undef, label %bb122, label %bb45

bb122:                                            
  br i1 undef, label %bb124, label %bb45

bb124:                                            
  br i1 undef, label %bb126, label %bb45

bb126:                                            
  br i1 undef, label %bb128, label %bb45

bb128:                                            
  br i1 undef, label %bb130, label %bb45

bb130:                                            
  br i1 undef, label %bb132, label %bb45

bb132:                                            
  br i1 undef, label %bb135, label %bb30

bb134:                                            
  unreachable

bb135:                                            
  br i1 undef, label %bb139, label %bb136

bb136:                                            
  br i1 undef, label %bb138, label %bb30

bb138:                                            
  br label %bb139

bb139:                                            
  br i1 undef, label %bb140, label %bb141

bb140:                                            
  unreachable

bb141:                                            
  br i1 undef, label %bb142, label %bb215

bb142:                                            
  br i1 undef, label %bb144, label %bb143

bb143:                                            
  br label %bb145

bb144:                                            
  br label %bb145

bb145:                                            
  br i1 undef, label %bb146, label %bb151

bb146:                                            
  br i1 undef, label %bb148, label %bb153

bb148:                                            
  br i1 undef, label %bb155, label %bb149

bb149:                                            
  br i1 undef, label %bb150, label %bb153

bb150:                                            
  br label %bb155

bb151:                                            
  unreachable

bb153:                                            
  unreachable

bb155:                                            
  br i1 undef, label %bb157, label %bb156

bb156:                                            
  br label %bb158

bb157:                                            
  br label %bb158

bb158:                                            
  br i1 undef, label %bb160, label %bb153

bb160:                                            
  br i1 undef, label %bb162, label %bb161

bb161:                                            
  br label %bb163

bb162:                                            
  br label %bb163

bb163:                                            
  br i1 undef, label %bb165, label %bb164

bb164:                                            
  br label %bb165

bb165:                                            
  br i1 undef, label %bb170, label %bb166

bb166:                                            
  br i1 undef, label %bb167, label %bb168

bb167:                                            
  unreachable

bb168:                                            
  unreachable

bb170:                                            
  br i1 undef, label %bb215, label %bb171

bb171:                                            
  br i1 undef, label %bb173, label %bb30

bb173:                                            
  br i1 undef, label %bb174, label %bb215

bb174:                                            
  br i1 undef, label %bb176, label %bb30

bb176:                                            
  br i1 undef, label %bb178, label %bb30

bb178:                                            
  br i1 undef, label %bb179, label %bb193

bb179:                                            
  br i1 undef, label %bb181, label %bb180

bb180:                                            
  br label %bb182

bb181:                                            
  br label %bb182

bb182:                                            
  br i1 undef, label %bb184, label %bb30

bb184:                                            
  %tmp185 = call i8* @returner()
  br i1 undef, label %bb186, label %bb195

bb186:                                            
  %tmp188 = call i8* @objc_retainAutoreleasedReturnValue(i8* %tmp185)
  %tmp189 = call i8* @objc_retain(i8* %tmp188)
  call void @objc_release(i8* %tmp189), !clang.imprecise_release !0
  br i1 undef, label %bb197, label %bb190

bb190:                                            
  br i1 undef, label %bb192, label %bb195

bb192:                                            
  br i1 undef, label %bb197, label %bb195

bb193:                                            
  br label %bb213

bb195:                                            
  unreachable

bb197:                                            
  br i1 undef, label %bb198, label %bb215

bb198:                                            
  br i1 undef, label %bb202, label %bb199

bb199:                                            
  br i1 undef, label %bb201, label %bb30

bb201:                                            
  br label %bb202

bb202:                                            
  br i1 undef, label %bb206, label %bb203

bb203:                                            
  br i1 undef, label %bb205, label %bb30

bb205:                                            
  br label %bb206

bb206:                                            
  br i1 undef, label %bb210, label %bb207

bb207:                                            
  br i1 undef, label %bb209, label %bb30

bb209:                                            
  br label %bb210

bb210:                                            
  br i1 undef, label %bb212, label %bb30

bb212:                                            
  unreachable

bb213:                                            
  resume { i8*, i32 } undef

bb214:                                            
  br label %bb219

bb215:                                            
  br i1 undef, label %bb217, label %bb216

bb216:                                            
  br label %bb217

bb217:                                            
  br i1 undef, label %bb219, label %bb218

bb218:                                            
  br label %bb219

bb219:                                            
  br i1 undef, label %bb221, label %bb220

bb220:                                            
  unreachable

bb221:                                            
  unreachable

bb222:                                            
  ret void
}


define void @test3() #1 personality i8* bitcast (i32 (...)* @__gxx_personality_sj0 to i8*) {
entry:
  %call2 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  %call5 = invoke signext i8 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8 (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     
  br i1 undef, label %land.end, label %land.rhs

land.rhs:                                         
  %call7 = invoke i32 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i32 (i8*, i8*)*)(i8* undef, i8* undef)
          to label %land.end unwind label %lpad3

land.end:                                         
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    
  br i1 undef, label %invoke.cont8, label %if.then.i

if.then.i:                                        
  br label %invoke.cont8

lpad.i:                                           
  %tmp13 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont8:                                     
  %call18 = invoke i8* (i8*, i8*, i8*, ...) bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*, ...)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    
  %call22 = invoke signext i8 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8 (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont21 unwind label %lpad20

invoke.cont21:                                    
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i1980 unwind label %lpad.i1982

invoke.cont.i1980:                                
  br i1 undef, label %invoke.cont24, label %if.then.i1981

if.then.i1981:                                    
  br label %invoke.cont24

lpad.i1982:                                       
  %tmp28 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont24:                                    
  %call37 = invoke signext i8 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8 (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont36 unwind label %lpad35

invoke.cont36:                                    
  br i1 undef, label %land.end43, label %land.rhs39

land.rhs39:                                       
  %call41 = invoke signext i8 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8 (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %land.end43 unwind label %lpad35

land.end43:                                       
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i1986 unwind label %lpad.i1988

invoke.cont.i1986:                                
  br i1 undef, label %invoke.cont44, label %if.then.i1987

if.then.i1987:                                    
  br label %invoke.cont44

lpad.i1988:                                       
  %tmp42 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont44:                                    
  %call53 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont52 unwind label %lpad51

invoke.cont52:                                    
  br i1 undef, label %land.end70, label %land.rhs58

land.rhs58:                                       
  %call63 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 42)
          to label %invoke.cont62 unwind label %lpad61

invoke.cont62:                                    
  %call68 = invoke signext i8 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8 (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef)
          to label %land.end70 unwind label %lpad66.body.thread

land.end70:                                       
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i1992 unwind label %lpad66.body

invoke.cont.i1992:                                
  br i1 undef, label %invoke.cont71, label %if.then.i1993

if.then.i1993:                                    
  br label %invoke.cont71

invoke.cont71:                                    
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i1998 unwind label %lpad.i2000

invoke.cont.i1998:                                
  br i1 undef, label %invoke.cont91, label %if.then.i1999

if.then.i1999:                                    
  br label %invoke.cont91

lpad.i2000:                                       
  %tmp74 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup102

invoke.cont91:                                    
  %call96 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont95 unwind label %lpad94

invoke.cont95:                                    
  %call98 = invoke signext i8 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8 (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* %call96)
          to label %invoke.cont97 unwind label %lpad94

invoke.cont97:                                    
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2004 unwind label %lpad.i2006

invoke.cont.i2004:                                
  br i1 undef, label %invoke.cont100, label %if.then.i2005

if.then.i2005:                                    
  br label %invoke.cont100

lpad.i2006:                                       
  %tmp82 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont100:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont110 unwind label %lpad109

invoke.cont110:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2010 unwind label %lpad.i2012

invoke.cont.i2010:                                
  br i1 undef, label %invoke.cont117, label %if.then.i2011

if.then.i2011:                                    
  br label %invoke.cont117

lpad.i2012:                                       
  %tmp98 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont117:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2022 unwind label %lpad156.body

lpad:                                             
  %tmp118 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad3:                                            
  %tmp119 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

ehcleanup:                                        
  unreachable

lpad16:                                           
  %tmp121 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup26

lpad20:                                           
  %tmp122 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup26

ehcleanup26:                                      
  unreachable

lpad35:                                           
  %tmp124 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad51:                                           
  %tmp125 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad61:                                           
  %tmp127 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad66.body.thread:                               
  %tmp128 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad66.body:                                      
  %tmp129 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad94:                                           
  %tmp133 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup102

ehcleanup102:                                     
  unreachable

lpad109:                                          
  %tmp134 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont.i2022:                                
  br i1 undef, label %invoke.cont157, label %if.then.i2023

if.then.i2023:                                    
  br label %invoke.cont157

invoke.cont157:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2028 unwind label %lpad164.body

invoke.cont.i2028:                                
  br i1 undef, label %invoke.cont165, label %if.then.i2029

if.then.i2029:                                    
  br label %invoke.cont165

invoke.cont165:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, void (i8*, i8*)*)*)(i8* undef, i8* undef, void (i8*, i8*)* undef)
          to label %invoke.cont184 unwind label %lpad183

invoke.cont184:                                   
  %call186 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont185 unwind label %lpad183

invoke.cont185:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2034 unwind label %lpad.i2036

invoke.cont.i2034:                                
  br i1 undef, label %invoke.cont190, label %if.then.i2035

if.then.i2035:                                    
  br label %invoke.cont190

lpad.i2036:                                       
  %tmp168 = landingpad { i8*, i32 }
          cleanup
  br label %lpad183.body

invoke.cont190:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont197 unwind label %lpad196

invoke.cont197:                                   
  %call202 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont201 unwind label %lpad200

invoke.cont201:                                   
  %call205 = invoke signext i8 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8 (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont204 unwind label %lpad203

invoke.cont204:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2040 unwind label %lpad.i2042

invoke.cont.i2040:                                
  br i1 undef, label %invoke.cont207, label %if.then.i2041

if.then.i2041:                                    
  br label %invoke.cont207

lpad.i2042:                                       
  %tmp181 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont207:                                   
  %call209 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont208 unwind label %lpad203

invoke.cont208:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2046 unwind label %lpad212.body

invoke.cont.i2046:                                
  br i1 undef, label %invoke.cont213, label %if.then.i2047

if.then.i2047:                                    
  br label %invoke.cont213

invoke.cont213:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont221 unwind label %lpad220

invoke.cont221:                                   
  %call229 = invoke signext i8 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8 (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont228 unwind label %lpad227

invoke.cont228:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2052 unwind label %lpad.i2054

invoke.cont.i2052:                                
  br i1 undef, label %invoke.cont231, label %if.then.i2053

if.then.i2053:                                    
  br label %invoke.cont231

lpad.i2054:                                       
  %tmp198 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont231:                                   
  %call233 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont232 unwind label %lpad227

invoke.cont232:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2058 unwind label %lpad236.body

invoke.cont.i2058:                                
  br i1 undef, label %invoke.cont237, label %if.then.i2059

if.then.i2059:                                    
  br label %invoke.cont237

invoke.cont237:                                   
  %call246 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont245 unwind label %lpad244

invoke.cont245:                                   
  %call248 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 13)
          to label %invoke.cont247 unwind label %lpad244

invoke.cont247:                                   
  %call251 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 2)
          to label %invoke.cont250 unwind label %lpad249

invoke.cont250:                                   
  %call254 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 7)
          to label %invoke.cont253 unwind label %lpad252

invoke.cont253:                                   
  %call257 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8**, i32)*)(i8* undef, i8* undef, i8** undef, i32 3)
          to label %invoke.cont256 unwind label %lpad255

invoke.cont256:                                   
  %call260 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef, i8* undef)
          to label %invoke.cont259 unwind label %lpad258

invoke.cont259:                                   
  %call267 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont266 unwind label %lpad265

invoke.cont266:                                   
  %call275 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef)
          to label %invoke.cont274 unwind label %lpad273

invoke.cont274:                                   
  %call279 = invoke i32 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i32 (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont278 unwind label %lpad277

invoke.cont278:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2064 unwind label %lpad.i2066

invoke.cont.i2064:                                
  br i1 undef, label %invoke.cont281, label %if.then.i2065

if.then.i2065:                                    
  br label %invoke.cont281

lpad.i2066:                                       
  %tmp253 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont281:                                   
  %call291 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont290 unwind label %lpad289

invoke.cont290:                                   
  %call303 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 8)
          to label %invoke.cont302 unwind label %lpad301

invoke.cont302:                                   
  %call310 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, double)*)(i8* undef, i8* undef, double 5.000000e-01)
          to label %invoke.cont309 unwind label %lpad308

invoke.cont309:                                   
  %call313 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 42)
          to label %invoke.cont312 unwind label %lpad311

invoke.cont312:                                   
  %call316 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8**, i8**, i32)*)(i8* undef, i8* undef, i8** undef, i8** undef, i32 2)
          to label %invoke.cont315 unwind label %lpad314

invoke.cont315:                                   
  %call322 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef)
          to label %invoke.cont321 unwind label %lpad320

invoke.cont321:                                   
  br i1 undef, label %land.end344, label %land.rhs335

land.rhs335:                                      
  %call342 = invoke signext i8 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8 (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %land.end344 unwind label %lpad340.body.thread

land.end344:                                      
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2070 unwind label %lpad340.body

invoke.cont.i2070:                                
  br i1 undef, label %invoke.cont345, label %if.then.i2071

if.then.i2071:                                    
  br label %invoke.cont345

invoke.cont345:                                   
  %call362 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef)
          to label %invoke.cont361 unwind label %lpad360

invoke.cont361:                                   
  %call365 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont364 unwind label %lpad363

invoke.cont364:                                   
  %call371 = invoke i32 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i32 (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont370 unwind label %lpad369

invoke.cont370:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2076 unwind label %lpad.i2078

invoke.cont.i2076:                                
  br i1 undef, label %invoke.cont373, label %if.then.i2077

if.then.i2077:                                    
  br label %invoke.cont373

lpad.i2078:                                       
  %tmp340 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont373:                                   
  %call377 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32, i8*)*)(i8* undef, i8* undef, i32 42, i8* undef)
          to label %invoke.cont376 unwind label %lpad363

invoke.cont376:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i32)*)(i8* undef, i8* undef, i8* undef, i32 5)
          to label %invoke.cont382 unwind label %lpad381

invoke.cont382:                                   
  %call384 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont383 unwind label %lpad381

invoke.cont383:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2082 unwind label %lpad.i2084

invoke.cont.i2082:                                
  br i1 undef, label %invoke.cont392, label %if.then.i2083

if.then.i2083:                                    
  br label %invoke.cont392

lpad.i2084:                                       
  %tmp360 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont392:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i32)*)(i8* undef, i8* undef, i8* undef, i32 -2)
          to label %invoke.cont395 unwind label %lpad381

invoke.cont395:                                   
  %call397 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont396 unwind label %lpad381

invoke.cont396:                                   
  %call400 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont399 unwind label %lpad398

invoke.cont399:                                   
  %call403 = invoke i32 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i32 (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont402 unwind label %lpad401

invoke.cont402:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2088 unwind label %lpad.i2090

invoke.cont.i2088:                                
  br i1 undef, label %invoke.cont405, label %if.then.i2089

if.then.i2089:                                    
  br label %invoke.cont405

lpad.i2090:                                       
  %tmp370 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont405:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i32)*)(i8* undef, i8* undef, i8* undef, i32 -1)
          to label %invoke.cont408 unwind label %lpad381

invoke.cont408:                                   
  %call410 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont409 unwind label %lpad381

invoke.cont409:                                   
  %call413 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont412 unwind label %lpad411

invoke.cont412:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2094 unwind label %lpad.i2096

invoke.cont.i2094:                                
  br i1 undef, label %invoke.cont418, label %if.then.i2095

if.then.i2095:                                    
  br label %invoke.cont418

lpad.i2096:                                       
  %tmp380 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont418:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i32)*)(i8* undef, i8* undef, i8* undef, i32 0)
          to label %invoke.cont422 unwind label %lpad381

invoke.cont422:                                   
  %call424 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont423 unwind label %lpad381

invoke.cont423:                                   
  %call427 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont426 unwind label %lpad425

invoke.cont426:                                   
  %call430 = invoke i32 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i32 (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont429 unwind label %lpad428

invoke.cont429:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2100 unwind label %lpad.i2102

invoke.cont.i2100:                                
  br i1 undef, label %invoke.cont432, label %if.then.i2101

if.then.i2101:                                    
  br label %invoke.cont432

lpad.i2102:                                       
  %tmp390 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont432:                                   
  %call436 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 0)
          to label %invoke.cont435 unwind label %lpad381

invoke.cont435:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2106 unwind label %lpad.i2108

invoke.cont.i2106:                                
  %call444 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 5)
          to label %invoke.cont443 unwind label %lpad381

lpad.i2108:                                       
  %tmp396 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont443:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2112 unwind label %lpad.i2114

invoke.cont.i2112:                                
  br i1 undef, label %invoke.cont449, label %if.then.i2113

if.then.i2113:                                    
  br label %invoke.cont449

lpad.i2114:                                       
  %tmp402 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont449:                                   
  %call453 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 -2)
          to label %invoke.cont452 unwind label %lpad381

invoke.cont452:                                   
  %call456 = invoke i32 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i32 (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont455 unwind label %lpad454

invoke.cont455:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2118 unwind label %lpad.i2120

invoke.cont.i2118:                                
  br i1 undef, label %invoke.cont458, label %if.then.i2119

if.then.i2119:                                    
  br label %invoke.cont458

lpad.i2120:                                       
  %tmp408 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont458:                                   
  %call461 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 -1)
          to label %invoke.cont460 unwind label %lpad381

invoke.cont460:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2124 unwind label %lpad.i2126

invoke.cont.i2124:                                
  br i1 undef, label %invoke.cont466, label %if.then.i2125

if.then.i2125:                                    
  br label %invoke.cont466

lpad.i2126:                                       
  %tmp414 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup477

invoke.cont466:                                   
  %call470 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 0)
          to label %invoke.cont469 unwind label %lpad381

invoke.cont469:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2130 unwind label %lpad.i2132

invoke.cont.i2130:                                
  br i1 undef, label %invoke.cont475, label %if.then.i2131

if.then.i2131:                                    
  br label %invoke.cont475

lpad.i2132:                                       
  %tmp420 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup477

invoke.cont475:                                   
  %call491 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 1)
          to label %invoke.cont490 unwind label %lpad489

invoke.cont490:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont499 unwind label %lpad498

invoke.cont499:                                   
  %call504 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont503 unwind label %lpad489

invoke.cont503:                                   
  %call507 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* undef, i8* undef, i32 3)
          to label %invoke.cont506 unwind label %lpad505

invoke.cont506:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont509 unwind label %lpad508

invoke.cont509:                                   
  %call513 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont512 unwind label %lpad489

invoke.cont512:                                   
  br i1 undef, label %msgSend.null-receiver, label %msgSend.call

msgSend.call:                                     
  invoke void bitcast (void (i8*, i8*, ...)* @objc_msgSend_stret to void (%struct.CGPoint*, i8*, i8*)*)(%struct.CGPoint* sret undef, i8* undef, i8* undef)
          to label %msgSend.cont unwind label %lpad514

msgSend.null-receiver:                            
  br label %msgSend.cont

msgSend.cont:                                     
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2136 unwind label %lpad.i2138

invoke.cont.i2136:                                
  br i1 undef, label %invoke.cont521, label %if.then.i2137

if.then.i2137:                                    
  br label %invoke.cont521

lpad.i2138:                                       
  %tmp468 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont521:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef)
          to label %invoke.cont528 unwind label %lpad527

invoke.cont528:                                   
  %call532 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont531 unwind label %lpad489

invoke.cont531:                                   
  %call535 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont534 unwind label %lpad533

invoke.cont534:                                   
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2142 unwind label %lpad.i2144

invoke.cont.i2142:                                
  br i1 undef, label %invoke.cont540, label %if.then.i2143

if.then.i2143:                                    
  br label %invoke.cont540

lpad.i2144:                                       
  %tmp486 = landingpad { i8*, i32 }
          cleanup
  unreachable

invoke.cont540:                                   
  %call544 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef, i32 3)
          to label %invoke.cont543 unwind label %lpad489

invoke.cont543:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* undef)
          to label %invoke.cont546 unwind label %lpad545

invoke.cont546:                                   
  %call549 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont548 unwind label %lpad489

invoke.cont548:                                   
  %call555 = invoke signext i8 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8 (i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont554 unwind label %lpad553

invoke.cont554:                                   
  %tmp499 = call i8* @objc_retain(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*)) #3
  invoke void (i8*, ...) @NSLog(i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i8* %tmp499, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont.i2148 unwind label %lpad.i2150

invoke.cont.i2148:                                
  call void @objc_release(i8* %tmp499) #3, !clang.imprecise_release !0
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont566 unwind label %lpad565

lpad.i2150:                                       
  %tmp500 = landingpad { i8*, i32 }
          cleanup
  call void @objc_release(i8* %tmp499) #3, !clang.imprecise_release !0
  unreachable

invoke.cont566:                                   
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i8*)*)(i8* undef, i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*))
          to label %invoke.cont572 unwind label %lpad571

invoke.cont572:                                   
  %call582 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*)*)(i8* undef, i8* undef)
          to label %invoke.cont581 unwind label %lpad580

invoke.cont581:                                   
  unreachable

lpad156.body:                                     
  %tmp1157 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad164.body:                                     
  %tmp1158 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad183:                                          
  %tmp1159 = landingpad { i8*, i32 }
          cleanup
  br label %lpad183.body

lpad183.body:                                     
  unreachable

lpad196:                                          
  %tmp1160 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad200:                                          
  %tmp1161 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad203:                                          
  %tmp1162 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad212.body:                                     
  %tmp1163 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad220:                                          
  %tmp1164 = landingpad { i8*, i32 }
          cleanup
  br label %eh.resume

lpad227:                                          
  %tmp1166 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup239

lpad236.body:                                     
  %tmp1167 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup239

ehcleanup239:                                     
  unreachable

lpad244:                                          
  %tmp1168 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad249:                                          
  %tmp1169 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad252:                                          
  %tmp1170 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup263

lpad255:                                          
  %tmp1171 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup263

lpad258:                                          
  %tmp1172 = landingpad { i8*, i32 }
          cleanup
  unreachable

ehcleanup263:                                     
  unreachable

lpad265:                                          
  %tmp1173 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad273:                                          
  %tmp1175 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad277:                                          
  %tmp1176 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad289:                                          
  %tmp1177 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad301:                                          
  %tmp1180 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad308:                                          
  %tmp1182 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad311:                                          
  %tmp1183 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad314:                                          
  %tmp1184 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad320:                                          
  %tmp1186 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad340.body.thread:                              
  %tmp1188 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad340.body:                                     
  %tmp1189 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad360:                                          
  %tmp1191 = landingpad { i8*, i32 }
          cleanup
  br label %eh.resume

lpad363:                                          
  %tmp1192 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad369:                                          
  %tmp1194 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad381:                                          
  %tmp1196 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup477

lpad398:                                          
  %tmp1199 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad401:                                          
  %tmp1200 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad411:                                          
  %tmp1201 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad425:                                          
  %tmp1203 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup477

lpad428:                                          
  %tmp1204 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad454:                                          
  %tmp1207 = landingpad { i8*, i32 }
          cleanup
  unreachable

ehcleanup477:                                     
  unreachable

lpad489:                                          
  %tmp1211 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup560

lpad498:                                          
  %tmp1214 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad505:                                          
  %tmp1215 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad508:                                          
  %tmp1216 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad514:                                          
  %tmp1217 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad527:                                          
  %tmp1219 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup560

lpad533:                                          
  %tmp1220 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad545:                                          
  %tmp1222 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad553:                                          
  %tmp1224 = landingpad { i8*, i32 }
          cleanup
  unreachable

ehcleanup560:                                     
  br label %eh.resume

lpad565:                                          
  %tmp1225 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad571:                                          
  %tmp1227 = landingpad { i8*, i32 }
          cleanup
  unreachable

lpad580:                                          
  %tmp1228 = landingpad { i8*, i32 }
          cleanup
  br label %eh.resume

eh.resume:                                        
  resume { i8*, i32 } undef
}

@"OBJC_EHTYPE_$_NSException" = external global i8

define void @test4() personality i8* bitcast (i32 (...)* @__objc_personality_v0 to i8*) {
entry:
  br i1 undef, label %if.end13, label %if.then10

if.then10:                                        
  br label %if.end13

if.end13:                                         
  %0 = call i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*, i64, i8*, i8)*)(i8* undef, i8* undef, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring to i8*), i64 2, i8* bitcast (%struct.NSConstantString* @_unnamed_cfstring_2 to i8*), i8 signext 0), !clang.arc.no_objc_arc_exceptions !0
  br i1 undef, label %if.then17, label %if.end18

if.then17:                                        
  br label %if.end18

if.end18:                                         
  br i1 undef, label %if.then64, label %if.end73

if.then64:                                        
  br i1 undef, label %cond.end71, label %cond.true68

cond.true68:                                      
  br label %cond.end71

cond.end71:                                       
  br i1 undef, label %cleanup.action, label %cleanup.done

cleanup.action:                                   
  br label %cleanup.done

cleanup.done:                                     
  br label %if.end73

if.end73:                                         
  br i1 undef, label %forcoll.empty, label %forcoll.loopinit

forcoll.loopinit:                                 
  br label %forcoll.loopbody.outer

forcoll.loopbody.outer:                           
  br label %forcoll.loopbody

forcoll.loopbody:                                 
  br i1 undef, label %forcoll.notmutated, label %forcoll.mutated

forcoll.mutated:                                  
  br label %forcoll.notmutated

forcoll.notmutated:                               
  br i1 undef, label %forcoll.loopbody, label %forcoll.refetch

forcoll.refetch:                                  
  br i1 undef, label %forcoll.empty, label %forcoll.loopbody.outer

forcoll.empty:                                    
  br i1 undef, label %if.end85, label %if.then82

if.then82:                                        
  br label %if.end85

if.end85:                                         
  br i1 undef, label %if.then87, label %if.end102

if.then87:                                        
  br i1 undef, label %if.end94, label %if.then91

if.then91:                                        
  br label %if.end94

if.end94:                                         
  br i1 undef, label %if.end101, label %if.then98

if.then98:                                        
  br label %if.end101

if.end101:                                        
  br label %if.end102

if.end102:                                        
  br i1 undef, label %do.body113, label %if.then107

if.then107:                                       
  br label %do.body113

do.body113:                                       
  br i1 undef, label %if.then116, label %if.end117

if.then116:                                       
  br label %if.end117

if.end117:                                        
  br i1 undef, label %if.then125, label %if.end126

if.then125:                                       
  br label %if.end126

if.end126:                                        
  br i1 undef, label %do.end166, label %cond.true132

cond.true132:                                     
  br i1 undef, label %do.body148, label %cond.true151

do.body148:                                       
  br i1 undef, label %do.end166, label %cond.true151

cond.true151:                                     
  br i1 undef, label %if.then162, label %do.end166

if.then162:                                       
  br label %do.end166

do.end166:                                        
  br i1 undef, label %if.then304, label %if.then170

if.then170:                                       
  br i1 undef, label %do.end193, label %cond.true179

cond.true179:                                     
  br i1 undef, label %if.then190, label %do.end193

if.then190:                                       
  br label %do.end193

do.end193:                                        
  br i1 undef, label %do.body200, label %do.body283

do.body200:                                       
  br i1 undef, label %do.end254, label %cond.true203

cond.true203:                                     
  br i1 undef, label %do.body218, label %cond.true221

do.body218:                                       
  br i1 undef, label %do.end254, label %cond.true221

cond.true221:                                     
  br i1 undef, label %if.then232, label %do.body236

if.then232:                                       
  br label %do.body236

do.body236:                                       
  br i1 undef, label %do.end254, label %cond.true239

cond.true239:                                     
  br i1 undef, label %if.then250, label %do.end254

if.then250:                                       
  br label %do.end254

do.end254:                                        
  br i1 undef, label %do.end277, label %cond.true263

cond.true263:                                     
  br i1 undef, label %if.then274, label %do.end277

if.then274:                                       
  unreachable

do.end277:                                        
  br i1 undef, label %if.then280, label %do.body283

if.then280:                                       
  br label %do.body283

do.body283:                                       
  br i1 undef, label %if.end301, label %cond.true286

cond.true286:                                     
  br i1 undef, label %if.then297, label %if.end301

if.then297:                                       
  br label %if.end301

if.end301:                                        
  br i1 undef, label %if.then304, label %do.body351

if.then304:                                       
  br i1 undef, label %do.body309.lr.ph, label %do.body351

do.body309.lr.ph:                                 
  br label %do.body309

do.body309:                                       
  br i1 undef, label %do.end328, label %cond.true312

cond.true312:                                     
  br i1 undef, label %if.then323, label %do.end328

if.then323:                                       
  br label %do.end328

do.end328:                                        
  br i1 undef, label %for.cond.backedge, label %cond.true335

for.cond.backedge:                                
  br i1 undef, label %do.body309, label %do.body351

cond.true335:                                     
  br i1 undef, label %if.then346, label %for.cond.backedge

if.then346:                                       
  br label %for.cond.backedge

do.body351:                                       
  br i1 undef, label %if.then354, label %if.end355

if.then354:                                       
  br label %if.end355

if.end355:                                        
  br i1 undef, label %if.else, label %if.then364

if.then364:                                       
  br label %do.body366

if.else:                                          
  br label %do.body366

do.body366:                                       
  br i1 undef, label %if.then369, label %if.end377.critedge

if.then369:                                       
  br label %if.end377

if.end377.critedge:                               
  br label %if.end377

if.end377:                                        
  br i1 undef, label %if.then383, label %if.end392.critedge

if.then383:                                       
  br label %if.end392

if.end392.critedge:                               
  br label %if.end392

if.end392:                                        
  br i1 undef, label %if.then398, label %if.end399

if.then398:                                       
  br label %if.end399

if.end399:                                        
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*)*)(i8* undef, i8* undef)
          to label %eh.cont unwind label %lpad, !clang.arc.no_objc_arc_exceptions !0

eh.cont:                                          
  br i1 undef, label %if.then430, label %if.end439.critedge

if.then430:                                       
  %1 = call i8* @objc_retain(i8* %0)
  br label %if.end439

lpad:                                             
  %2 = landingpad { i8*, i32 }
          catch i8* @"OBJC_EHTYPE_$_NSException"
  unreachable

if.end439.critedge:                               
  %3 = call i8* @objc_retain(i8* %0)
  br label %if.end439

if.end439:                                        
  call void @objc_release(i8* %0), !clang.imprecise_release !0
  unreachable

return:                                           
  ret void
}


!0 = !{}
