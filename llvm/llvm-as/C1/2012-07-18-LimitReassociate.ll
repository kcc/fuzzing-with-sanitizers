



















target datalayout = "n8:16:32:64"


%struct.snork = type { %struct.fuga, i32, i32, i32, i32, i32, i32 }
%struct.fuga = type { %struct.gork, i64 }
%struct.gork = type { i8*, i32, i32, %struct.noot* }
%struct.noot = type opaque
%struct.jim = type { [5120 x i8], i32, i32, [2048 x i8], i32, [256 x i8] }

@global = external global %struct.snork, align 8
@global1 = external hidden unnamed_addr constant [52 x i8], align 1
@global2 = external hidden unnamed_addr constant [18 x i8], align 1
@global3 = external hidden global %struct.jim, align 32
@global4 = external hidden unnamed_addr constant [40 x i8], align 1

declare void @snork(...) nounwind

declare fastcc void @blarg() nounwind uwtable readonly

define hidden fastcc void @boogle() nounwind uwtable {
bb:
  %tmp = trunc i64 0 to i32
  %tmp1 = icmp slt i32 %tmp, 2047
  %tmp2 = add i32 0, -1
  %tmp3 = icmp ult i32 %tmp2, 255
  %tmp4 = and i1 %tmp1, %tmp3
  br i1 %tmp4, label %bb6, label %bb5

bb5:                                              
  tail call void (...) @snork(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @global1, i64 0, i64 0), i32 2021) nounwind
  tail call void (...) @snork(i8* getelementptr inbounds (%struct.jim, %struct.jim* @global3, i64 0, i32 3, i64 1), i32 -2146631418) nounwind
  unreachable

bb6:                                              
  tail call void @zot(i8* getelementptr inbounds (%struct.jim, %struct.jim* @global3, i64 0, i32 5, i64 0), i8* getelementptr inbounds (%struct.jim, %struct.jim* @global3, i64 0, i32 3, i64 1), i64 undef, i32 1, i1 false) nounwind
  %tmp7 = getelementptr inbounds %struct.jim, %struct.jim* @global3, i64 0, i32 5, i64 undef
  store i8 0, i8* %tmp7, align 1
  %tmp8 = add nsw i32 0, 1
  %tmp9 = sext i32 %tmp8 to i64
  %tmp10 = add i64 %tmp9, 1
  %tmp11 = getelementptr inbounds %struct.jim, %struct.jim* @global3, i64 0, i32 3, i64 %tmp10
  %tmp12 = sub i64 2047, %tmp9
  %tmp13 = icmp eq i32 undef, 1
  br i1 %tmp13, label %bb14, label %bb15

bb14:                                             
  tail call fastcc void @blarg()
  unreachable

bb15:                                             
  %tmp16 = trunc i64 %tmp12 to i32
  br label %bb17

bb17:                                             
  %tmp18 = phi i64 [ %tmp28, %bb26 ], [ 0, %bb15 ]
  %tmp19 = phi i32 [ %tmp29, %bb26 ], [ 0, %bb15 ]
  %tmp20 = trunc i64 %tmp18 to i32
  %tmp21 = icmp slt i32 %tmp20, %tmp16
  br i1 %tmp21, label %bb22, label %bb32

bb22:                                             
  %tmp23 = getelementptr inbounds %struct.jim, %struct.jim* @global3, i64 0, i32 3, i64 0
  %tmp24 = load i8, i8* %tmp23, align 1
  %tmp25 = icmp eq i8 %tmp24, 58
  br i1 %tmp25, label %bb30, label %bb26

bb26:                                             
  %tmp27 = icmp eq i8 %tmp24, 0
  %tmp28 = add i64 %tmp18, 1
  %tmp29 = add nsw i32 %tmp19, 1
  br i1 %tmp27, label %bb32, label %bb17

bb30:                                             
  %tmp31 = icmp ult i32 undef, 255
  br i1 %tmp31, label %bb33, label %bb32

bb32:                                             
  tail call void (...) @snork(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @global1, i64 0, i64 0), i32 2038) nounwind
  tail call void (...) @snork(i8* %tmp11, i32 -2146631418) nounwind
  unreachable

bb33:                                             
  tail call void @zot(i8* getelementptr inbounds (%struct.jim, %struct.jim* @global3, i64 0, i32 5, i64 0), i8* %tmp11, i64 undef, i32 1, i1 false) nounwind
  %tmp34 = getelementptr inbounds %struct.jim, %struct.jim* @global3, i64 0, i32 5, i64 undef
  store i8 0, i8* %tmp34, align 1
  %tmp35 = add nsw i32 %tmp19, 1
  %tmp36 = sext i32 %tmp35 to i64
  %tmp37 = add i64 %tmp36, %tmp10
  %tmp38 = getelementptr inbounds %struct.jim, %struct.jim* @global3, i64 0, i32 3, i64 %tmp37
  %tmp39 = sub i64 %tmp12, %tmp36
  br i1 false, label %bb40, label %bb41

bb40:                                             
  br label %bb41

bb41:                                             
  %tmp42 = trunc i64 %tmp39 to i32
  br label %bb43

bb43:                                             
  %tmp44 = phi i64 [ %tmp53, %bb52 ], [ 0, %bb41 ]
  %tmp45 = phi i32 [ %tmp54, %bb52 ], [ 0, %bb41 ]
  %tmp46 = trunc i64 %tmp44 to i32
  %tmp47 = icmp slt i32 %tmp46, %tmp42
  br i1 %tmp47, label %bb48, label %bb58

bb48:                                             
  %tmp49 = add i64 %tmp44, %tmp37
  %tmp50 = load i8, i8* undef, align 1
  %tmp51 = icmp eq i8 %tmp50, 58
  br i1 %tmp51, label %bb55, label %bb52

bb52:                                             
  %tmp53 = add i64 %tmp44, 1
  %tmp54 = add nsw i32 %tmp45, 1
  br i1 undef, label %bb58, label %bb43

bb55:                                             
  %tmp56 = add i32 %tmp45, -1
  %tmp57 = icmp ult i32 %tmp56, 255
  br i1 %tmp57, label %bb59, label %bb58

bb58:                                             
  tail call void (...) @snork(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @global1, i64 0, i64 0), i32 2055) nounwind
  tail call void (...) @snork(i8* %tmp38, i32 -2146631418) nounwind
  br label %bb247

bb59:                                             
  %tmp60 = sext i32 %tmp45 to i64
  tail call void @zot(i8* getelementptr inbounds (%struct.jim, %struct.jim* @global3, i64 0, i32 5, i64 0), i8* %tmp38, i64 %tmp60, i32 1, i1 false) nounwind
  %tmp61 = getelementptr inbounds %struct.jim, %struct.jim* @global3, i64 0, i32 5, i64 %tmp60
  store i8 0, i8* %tmp61, align 1
  %tmp62 = add nsw i32 %tmp45, 1
  %tmp63 = sext i32 %tmp62 to i64
  %tmp64 = add i64 %tmp63, %tmp37
  %tmp65 = sub i64 %tmp39, %tmp63
  %tmp66 = icmp eq i32 undef, 2
  br i1 %tmp66, label %bb67, label %bb68

bb67:                                             
  tail call fastcc void @blarg()
  unreachable

bb68:                                             
  switch i32 undef, label %bb71 [
    i32 0, label %bb74
    i32 -1, label %bb69
  ]

bb69:                                             
  tail call void (...) @snork(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @global1, i64 0, i64 0), i32 2071) nounwind
  %tmp70 = load i32, i32* getelementptr inbounds (%struct.snork, %struct.snork* @global, i64 0, i32 2), align 4
  unreachable

bb71:                                             
  %tmp72 = load i32, i32* getelementptr inbounds (%struct.snork, %struct.snork* @global, i64 0, i32 4), align 4
  %tmp73 = icmp eq i32 undef, 0
  br i1 %tmp73, label %bb247, label %bb74

bb74:                                             
  %tmp75 = trunc i64 %tmp65 to i32
  br label %bb76

bb76:                                             
  %tmp77 = phi i64 [ %tmp84, %bb82 ], [ 0, %bb74 ]
  %tmp78 = phi i32 [ %tmp85, %bb82 ], [ 0, %bb74 ]
  %tmp79 = trunc i64 %tmp77 to i32
  %tmp80 = icmp slt i32 %tmp79, %tmp75
  br i1 %tmp80, label %bb81, label %bb87

bb81:                                             
  br i1 false, label %bb86, label %bb82

bb82:                                             
  %tmp83 = icmp eq i8 0, 0
  %tmp84 = add i64 %tmp77, 1
  %tmp85 = add nsw i32 %tmp78, 1
  br i1 %tmp83, label %bb87, label %bb76

bb86:                                             
  br i1 undef, label %bb88, label %bb87

bb87:                                             
  unreachable

bb88:                                             
  %tmp89 = add nsw i32 %tmp78, 1
  %tmp90 = sext i32 %tmp89 to i64
  %tmp91 = add i64 %tmp90, %tmp64
  %tmp92 = sub i64 %tmp65, %tmp90
  br i1 false, label %bb93, label %bb94

bb93:                                             
  unreachable

bb94:                                             
  %tmp95 = trunc i64 %tmp92 to i32
  br label %bb96

bb96:                                             
  %tmp97 = phi i64 [ %tmp103, %bb102 ], [ 0, %bb94 ]
  %tmp98 = phi i32 [ %tmp104, %bb102 ], [ 0, %bb94 ]
  %tmp99 = trunc i64 %tmp97 to i32
  %tmp100 = icmp slt i32 %tmp99, %tmp95
  br i1 %tmp100, label %bb101, label %bb106

bb101:                                            
  br i1 undef, label %bb105, label %bb102

bb102:                                            
  %tmp103 = add i64 %tmp97, 1
  %tmp104 = add nsw i32 %tmp98, 1
  br i1 false, label %bb106, label %bb96

bb105:                                            
  br i1 undef, label %bb107, label %bb106

bb106:                                            
  br label %bb247

bb107:                                            
  %tmp108 = add nsw i32 %tmp98, 1
  %tmp109 = sext i32 %tmp108 to i64
  %tmp110 = add i64 %tmp109, %tmp91
  %tmp111 = sub i64 %tmp92, %tmp109
  br i1 false, label %bb112, label %bb113

bb112:                                            
  unreachable

bb113:                                            
  %tmp114 = trunc i64 %tmp111 to i32
  br label %bb115

bb115:                                            
  %tmp116 = phi i64 [ %tmp122, %bb121 ], [ 0, %bb113 ]
  %tmp117 = phi i32 [ %tmp123, %bb121 ], [ 0, %bb113 ]
  %tmp118 = trunc i64 %tmp116 to i32
  %tmp119 = icmp slt i32 %tmp118, %tmp114
  br i1 %tmp119, label %bb120, label %bb125

bb120:                                            
  br i1 undef, label %bb124, label %bb121

bb121:                                            
  %tmp122 = add i64 %tmp116, 1
  %tmp123 = add nsw i32 %tmp117, 1
  br i1 false, label %bb125, label %bb115

bb124:                                            
  br i1 false, label %bb126, label %bb125

bb125:                                            
  unreachable

bb126:                                            
  %tmp127 = add nsw i32 %tmp117, 1
  %tmp128 = sext i32 %tmp127 to i64
  %tmp129 = add i64 %tmp128, %tmp110
  %tmp130 = sub i64 %tmp111, %tmp128
  tail call fastcc void @blarg()
  br i1 false, label %bb132, label %bb131

bb131:                                            
  unreachable

bb132:                                            
  %tmp133 = trunc i64 %tmp130 to i32
  br label %bb134

bb134:                                            
  %tmp135 = phi i64 [ %tmp141, %bb140 ], [ 0, %bb132 ]
  %tmp136 = phi i32 [ %tmp142, %bb140 ], [ 0, %bb132 ]
  %tmp137 = trunc i64 %tmp135 to i32
  %tmp138 = icmp slt i32 %tmp137, %tmp133
  br i1 %tmp138, label %bb139, label %bb144

bb139:                                            
  br i1 false, label %bb143, label %bb140

bb140:                                            
  %tmp141 = add i64 %tmp135, 1
  %tmp142 = add nsw i32 %tmp136, 1
  br i1 false, label %bb144, label %bb134

bb143:                                            
  br i1 false, label %bb145, label %bb144

bb144:                                            
  br label %bb247

bb145:                                            
  %tmp146 = add nsw i32 %tmp136, 1
  %tmp147 = sext i32 %tmp146 to i64
  %tmp148 = add i64 %tmp147, %tmp129
  %tmp149 = sub i64 %tmp130, %tmp147
  switch i32 0, label %bb152 [
    i32 0, label %bb150
    i32 16, label %bb150
    i32 32, label %bb150
    i32 48, label %bb150
    i32 64, label %bb150
    i32 256, label %bb150
    i32 4096, label %bb150
  ]

bb150:                                            
  %tmp151 = trunc i64 %tmp149 to i32
  br label %bb153

bb152:                                            
  unreachable

bb153:                                            
  %tmp154 = phi i64 [ %tmp161, %bb160 ], [ 0, %bb150 ]
  %tmp155 = phi i32 [ %tmp162, %bb160 ], [ 0, %bb150 ]
  %tmp156 = trunc i64 %tmp154 to i32
  %tmp157 = icmp slt i32 %tmp156, %tmp151
  br i1 %tmp157, label %bb158, label %bb166

bb158:                                            
  %tmp159 = add i64 %tmp154, %tmp148
  br i1 false, label %bb163, label %bb160

bb160:                                            
  %tmp161 = add i64 %tmp154, 1
  %tmp162 = add nsw i32 %tmp155, 1
  br i1 false, label %bb166, label %bb153

bb163:                                            
  %tmp164 = add i32 %tmp155, -1
  %tmp165 = icmp ult i32 %tmp164, 255
  br i1 %tmp165, label %bb167, label %bb166

bb166:                                            
  unreachable

bb167:                                            
  %tmp168 = add nsw i32 %tmp155, 1
  %tmp169 = sext i32 %tmp168 to i64
  %tmp170 = add i64 %tmp169, %tmp148
  %tmp171 = sub i64 %tmp149, %tmp169
  br i1 false, label %bb173, label %bb172

bb172:                                            
  unreachable

bb173:                                            
  %tmp174 = trunc i64 %tmp171 to i32
  br label %bb175

bb175:                                            
  %tmp176 = phi i64 [ %tmp183, %bb181 ], [ 0, %bb173 ]
  %tmp177 = phi i32 [ %tmp184, %bb181 ], [ 0, %bb173 ]
  %tmp178 = trunc i64 %tmp176 to i32
  %tmp179 = icmp slt i32 %tmp178, %tmp174
  br i1 %tmp179, label %bb180, label %bb186

bb180:                                            
  br i1 false, label %bb185, label %bb181

bb181:                                            
  %tmp182 = icmp eq i8 0, 0
  %tmp183 = add i64 %tmp176, 1
  %tmp184 = add nsw i32 %tmp177, 1
  br i1 %tmp182, label %bb186, label %bb175

bb185:                                            
  br i1 false, label %bb187, label %bb186

bb186:                                            
  unreachable

bb187:                                            
  %tmp188 = add nsw i32 %tmp177, 1
  %tmp189 = sext i32 %tmp188 to i64
  %tmp190 = sub i64 %tmp171, %tmp189
  br i1 false, label %bb192, label %bb191

bb191:                                            
  unreachable

bb192:                                            
  %tmp193 = trunc i64 %tmp190 to i32
  br label %bb194

bb194:                                            
  %tmp195 = phi i64 [ %tmp201, %bb200 ], [ 0, %bb192 ]
  %tmp196 = phi i32 [ %tmp202, %bb200 ], [ 0, %bb192 ]
  %tmp197 = trunc i64 %tmp195 to i32
  %tmp198 = icmp slt i32 %tmp197, %tmp193
  br i1 %tmp198, label %bb199, label %bb204

bb199:                                            
  br i1 false, label %bb203, label %bb200

bb200:                                            
  %tmp201 = add i64 %tmp195, 1
  %tmp202 = add nsw i32 %tmp196, 1
  br i1 false, label %bb204, label %bb194

bb203:                                            
  br i1 undef, label %bb205, label %bb204

bb204:                                            
  unreachable

bb205:                                            
  %tmp206 = add nsw i32 %tmp196, 1
  %tmp207 = sext i32 %tmp206 to i64
  %tmp208 = add i64 %tmp207, 0
  %tmp209 = sub i64 %tmp190, %tmp207
  br i1 %tmp13, label %bb210, label %bb211

bb210:                                            
  unreachable

bb211:                                            
  %tmp212 = trunc i64 %tmp209 to i32
  %tmp213 = icmp slt i32 0, %tmp212
  br i1 false, label %bb215, label %bb214

bb214:                                            
  unreachable

bb215:                                            
  %tmp216 = add i64 undef, %tmp208
  %tmp217 = sub i64 %tmp209, undef
  br i1 false, label %bb218, label %bb219

bb218:                                            
  br label %bb219

bb219:                                            
  %tmp220 = trunc i64 %tmp217 to i32
  br label %bb221

bb221:                                            
  %tmp222 = phi i64 [ %tmp231, %bb230 ], [ 0, %bb219 ]
  %tmp223 = phi i32 [ %tmp232, %bb230 ], [ 0, %bb219 ]
  %tmp224 = trunc i64 %tmp222 to i32
  %tmp225 = icmp slt i32 %tmp224, %tmp220
  br i1 %tmp225, label %bb226, label %bb234

bb226:                                            
  %tmp227 = add i64 %tmp222, %tmp216
  %tmp228 = getelementptr inbounds %struct.jim, %struct.jim* @global3, i64 0, i32 3, i64 %tmp227
  %tmp229 = load i8, i8* %tmp228, align 1
  br i1 false, label %bb233, label %bb230

bb230:                                            
  %tmp231 = add i64 %tmp222, 1
  %tmp232 = add nsw i32 %tmp223, 1
  br i1 undef, label %bb234, label %bb221

bb233:                                            
  br i1 undef, label %bb235, label %bb234

bb234:                                            
  br label %bb247

bb235:                                            
  %tmp236 = add nsw i32 %tmp223, 1
  %tmp237 = sext i32 %tmp236 to i64
  %tmp238 = sub i64 %tmp217, %tmp237
  br i1 %tmp66, label %bb239, label %bb240

bb239:                                            
  unreachable

bb240:                                            
  switch i32 0, label %bb244 [
    i32 0, label %bb241
    i32 1, label %bb241
    i32 4, label %bb241
    i32 6, label %bb241
    i32 9, label %bb241
  ]

bb241:                                            
  %tmp242 = trunc i64 %tmp238 to i32
  %tmp243 = icmp slt i32 0, %tmp242
  br i1 false, label %bb246, label %bb245

bb244:                                            
  unreachable

bb245:                                            
  unreachable

bb246:                                            
  unreachable

bb247:                                            
  ret void
}

declare void @zot(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind
