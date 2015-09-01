

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"

define fastcc i32 @ascii2flt(i8* %str) nounwind {
entry:
	br label %bb2.i

bb2.i:		
	br i1 false, label %bb4.i, label %base2flt.exit

bb4.i:		
	br i1 false, label %bb11.i, label %bb4.i.bb2.i_crit_edge

bb4.i.bb2.i_crit_edge:		
	br label %bb2.i

bb11.i:		
	br label %bb11.i.base2flt.exit204_crit_edge

bb11.i.base2flt.exit204_crit_edge:		
	br label %base2flt.exit204

bb11.i.bb7.i197_crit_edge:		
	br label %bb7.i197

base2flt.exit:		
	br label %base2flt.exit.base2flt.exit204_crit_edge

base2flt.exit.base2flt.exit204_crit_edge:		
	br label %base2flt.exit204

base2flt.exit.bb7.i197_crit_edge:		
	br label %bb7.i197

bb10.i196:		
	br label %bb10.i196.base2flt.exit204_crit_edge

bb10.i196.base2flt.exit204_crit_edge:		
	br label %base2flt.exit204

bb10.i196.bb7.i197_crit_edge:		
	br label %bb7.i197

bb7.i197:		
	%.reg2mem.0 = phi i32 [ 0, %base2flt.exit.bb7.i197_crit_edge ], [ %.reg2mem.0, %bb10.i196.bb7.i197_crit_edge ], [ 0, %bb11.i.bb7.i197_crit_edge ]		
	br i1 undef, label %bb10.i196.base2flt.exit204_crit_edge, label %bb10.i196

base2flt.exit204:		
	br i1 false, label %base2flt.exit204.bb8_crit_edge, label %bb

base2flt.exit204.bb8_crit_edge:		
	br label %bb8

bb:		
	br i1 false, label %bb.bb18_crit_edge, label %bb1.i

bb.bb18_crit_edge:		
	br label %bb18

bb1.i:		
	br i1 false, label %bb1.i.bb7_crit_edge, label %bb1.i158

bb1.i.bb7_crit_edge.loopexit:		
	br label %bb1.i.bb7_crit_edge

bb1.i.bb7_crit_edge:		
	br label %bb7.preheader

bb1.i158:		
	br i1 false, label %bb1.i158.bb10.i179_crit_edge, label %bb1.i158.bb2.i164_crit_edge

bb1.i158.bb2.i164_crit_edge:		
	br label %bb2.i164

bb1.i158.bb10.i179_crit_edge:		
	br label %bb10.i179

bb2.i164:		
	br i1 false, label %bb4.i166, label %bb1.i.bb7_crit_edge.loopexit

bb4.i166:		
	br i1 false, label %bb4.i166.bb11.i172_crit_edge, label %bb4.i166.bb2.i164_crit_edge

bb4.i166.bb2.i164_crit_edge:		
	br label %bb2.i164

bb4.i166.bb11.i172_crit_edge:		
	br label %bb11.i172

bb11.i172:		
	br label %bb7.preheader

bb10.i179:		
	br i1 false, label %bb7.i180, label %bb10.i179.bb11.i172_crit_edge

bb10.i179.bb11.i172_crit_edge:		
	br label %bb11.i172

bb7.i180:		
	br i1 false, label %bb7.i180.bb7_crit_edge, label %bb9.i182

bb7.i180.bb7_crit_edge:		
	br label %bb7.preheader

bb7.preheader:		
	br label %bb7

bb9.i182:		
	br label %bb10.i179

bb7:		
	switch i8 0, label %bb4 [
		i8 0, label %bb7.bb8_crit_edge
		i8 46, label %bb7.bb8_crit_edge
	]

bb7.bb8_crit_edge:		
	br label %bb8

bb4:		
	br i1 false, label %bb18.loopexit1, label %bb1.i5

bb1.i5:		
	br i1 false, label %bb1.i5.mulflt.exit157_crit_edge, label %bb3.i147

bb1.i5.mulflt.exit157_crit_edge:		
	br label %mulflt.exit157

bb3.i147:		
	br i1 false, label %bb3.i147.mulflt.exit157_crit_edge, label %bb5.i148

bb3.i147.mulflt.exit157_crit_edge:		
	br label %mulflt.exit157

bb5.i148:		
	br i1 false, label %bb1.i5.mulflt.exit157_crit_edge, label %bb7.i149

bb7.i149:		
	br i1 false, label %bb8.i150, label %bb7.i149.bb12.i154_crit_edge

bb7.i149.bb12.i154_crit_edge:		
	br label %bb12.i154

bb8.i150:		
	br i1 false, label %bb3.i147.mulflt.exit157_crit_edge, label %bb10.i151

bb10.i151:		
	br label %bb12.i154

bb12.i154:		
	br label %mulflt.exit157

mulflt.exit157:		
	br i1 false, label %mulflt.exit157.base2flt.exit144_crit_edge, label %bb1.i115

mulflt.exit157.base2flt.exit144_crit_edge.loopexit:		
	br label %mulflt.exit157.base2flt.exit144_crit_edge

mulflt.exit157.base2flt.exit144_crit_edge:		
	br label %base2flt.exit144

bb1.i115:		
	br i1 false, label %bb1.i115.bb10.i136_crit_edge, label %bb1.i115.bb2.i121_crit_edge

bb1.i115.bb2.i121_crit_edge:		
	br label %bb2.i121

bb1.i115.bb10.i136_crit_edge:		
	br label %bb10.i136

bb2.i121:		
	br i1 false, label %bb4.i123, label %mulflt.exit157.base2flt.exit144_crit_edge.loopexit

bb4.i123:		
	br i1 false, label %bb4.i123.bb11.i129_crit_edge, label %bb4.i123.bb2.i121_crit_edge

bb4.i123.bb2.i121_crit_edge:		
	br label %bb2.i121

bb4.i123.bb11.i129_crit_edge:		
	br label %bb11.i129

bb11.i129:		
	br label %base2flt.exit144

bb10.i136:		
	br i1 false, label %bb7.i137, label %bb10.i136.bb11.i129_crit_edge

bb10.i136.bb11.i129_crit_edge:		
	br label %bb11.i129

bb7.i137:		
	br i1 false, label %bb7.i137.base2flt.exit144_crit_edge, label %bb9.i139

bb7.i137.base2flt.exit144_crit_edge:		
	br label %base2flt.exit144

bb9.i139:		
	br label %bb10.i136

base2flt.exit144:		
	br i1 false, label %base2flt.exit144.addflt.exit114_crit_edge, label %bb3.i105

base2flt.exit144.addflt.exit114_crit_edge:		
	br label %addflt.exit114

bb3.i105:		
	br i1 false, label %base2flt.exit144.addflt.exit114_crit_edge, label %bb5.i106

bb5.i106:		
	br i1 false, label %bb5.i106.bb9.i111_crit_edge, label %bb6.i107

bb5.i106.bb9.i111_crit_edge:		
	br label %bb9.i111

bb6.i107:		
	br i1 false, label %bb6.i107.addflt.exit114_crit_edge, label %bb8.i108

bb6.i107.addflt.exit114_crit_edge:		
	br label %addflt.exit114

bb8.i108:		
	br label %bb9.i111

bb9.i111:		
	br label %addflt.exit114

addflt.exit114:		
	br label %bb7

bb18.loopexit1:		
	ret i32 -1

bb18:		
	ret i32 0

bb8:		
	br i1 false, label %bb9, label %bb8.bb18_crit_edge

bb8.bb18_crit_edge:		
	br label %bb18

bb9:		
	br i1 false, label %bb.bb18_crit_edge, label %bb1.i13

bb1.i13:		
	br i1 false, label %bb1.i13.base2flt.exit102_crit_edge, label %bb1.i73

bb1.i13.base2flt.exit102_crit_edge.loopexit:		
	br label %bb1.i13.base2flt.exit102_crit_edge

bb1.i13.base2flt.exit102_crit_edge:		
	br label %base2flt.exit102

bb1.i73:		
	br i1 false, label %bb1.i73.bb10.i94_crit_edge, label %bb1.i73.bb2.i79_crit_edge

bb1.i73.bb2.i79_crit_edge:		
	br label %bb2.i79

bb1.i73.bb10.i94_crit_edge:		
	br label %bb10.i94

bb2.i79:		
	br i1 false, label %bb4.i81, label %bb1.i13.base2flt.exit102_crit_edge.loopexit

bb4.i81:		
	br i1 false, label %bb4.i81.bb11.i87_crit_edge, label %bb4.i81.bb2.i79_crit_edge

bb4.i81.bb2.i79_crit_edge:		
	br label %bb2.i79

bb4.i81.bb11.i87_crit_edge:		
	br label %bb11.i87

bb11.i87:		
	br label %base2flt.exit102

bb10.i94:		
	br i1 false, label %bb7.i95, label %bb10.i94.bb11.i87_crit_edge

bb10.i94.bb11.i87_crit_edge:		
	br label %bb11.i87

bb7.i95:		
	br i1 false, label %bb7.i95.base2flt.exit102_crit_edge, label %bb9.i97

bb7.i95.base2flt.exit102_crit_edge:		
	br label %base2flt.exit102

bb9.i97:		
	br label %bb10.i94

base2flt.exit102:		
	br i1 false, label %base2flt.exit102.mulflt.exit72_crit_edge, label %bb3.i62

base2flt.exit102.mulflt.exit72_crit_edge:		
	br label %mulflt.exit72

bb3.i62:		
	br i1 false, label %bb3.i62.mulflt.exit72_crit_edge, label %bb5.i63

bb3.i62.mulflt.exit72_crit_edge:		
	br label %mulflt.exit72

bb5.i63:		
	br i1 false, label %base2flt.exit102.mulflt.exit72_crit_edge, label %bb7.i64

bb7.i64:		
	br i1 false, label %bb8.i65, label %bb7.i64.bb12.i69_crit_edge

bb7.i64.bb12.i69_crit_edge:		
	br label %bb12.i69

bb8.i65:		
	br i1 false, label %bb3.i62.mulflt.exit72_crit_edge, label %bb10.i66

bb10.i66:		
	br label %bb12.i69

bb12.i69:		
	br label %mulflt.exit72

mulflt.exit72:		
	br i1 false, label %mulflt.exit72.bb10.i58_crit_edge, label %bb3.i50

mulflt.exit72.bb10.i58_crit_edge:		
	br label %bb10.i58

bb3.i50:		
	br i1 false, label %mulflt.exit72.bb10.i58_crit_edge, label %bb5.i51

bb5.i51:		
	br i1 false, label %bb5.i51.bb9.i56_crit_edge, label %bb6.i52

bb5.i51.bb9.i56_crit_edge:		
	br label %bb9.i56

bb6.i52:		
	br i1 false, label %bb6.i52.bb10.i58_crit_edge, label %bb8.i53

bb6.i52.bb10.i58_crit_edge:		
	br label %bb10.i58

bb8.i53:		
	br label %bb9.i56

bb9.i56:		
	br label %bb15.preheader

bb10.i58:		
	br label %bb15.preheader

bb15.preheader:		
	br label %bb15

bb15:		
	br i1 false, label %bb15.bb18.loopexit_crit_edge, label %bb12

bb15.bb18.loopexit_crit_edge:		
	br label %bb18.loopexit

bb12:		
	br i1 false, label %bb12.bb18.loopexit_crit_edge, label %bb1.i21

bb12.bb18.loopexit_crit_edge:		
	br label %bb18.loopexit

bb1.i21:		
	br i1 false, label %bb1.i21.mulflt.exit47_crit_edge, label %bb3.i37

bb1.i21.mulflt.exit47_crit_edge:		
	br label %mulflt.exit47

bb3.i37:		
	br i1 false, label %bb3.i37.mulflt.exit47_crit_edge, label %bb5.i38

bb3.i37.mulflt.exit47_crit_edge:		
	br label %mulflt.exit47

bb5.i38:		
	br i1 false, label %bb1.i21.mulflt.exit47_crit_edge, label %bb7.i39

bb7.i39:		
	br i1 false, label %bb8.i40, label %bb7.i39.bb12.i44_crit_edge

bb7.i39.bb12.i44_crit_edge:		
	br label %bb12.i44

bb8.i40:		
	br i1 false, label %bb3.i37.mulflt.exit47_crit_edge, label %bb10.i41

bb10.i41:		
	br label %bb12.i44

bb12.i44:		
	br label %mulflt.exit47

mulflt.exit47:		
	br i1 false, label %mulflt.exit47.base2flt.exit34_crit_edge, label %bb1.i15

mulflt.exit47.base2flt.exit34_crit_edge.loopexit:		
	br label %mulflt.exit47.base2flt.exit34_crit_edge

mulflt.exit47.base2flt.exit34_crit_edge:		
	br label %base2flt.exit34

bb1.i15:		
	br i1 false, label %bb1.i15.bb10.i31_crit_edge, label %bb1.i15.bb2.i20_crit_edge

bb1.i15.bb2.i20_crit_edge:		
	br label %bb2.i20

bb1.i15.bb10.i31_crit_edge:		
	br label %bb10.i31

bb2.i20:		
	br i1 false, label %bb4.i22, label %mulflt.exit47.base2flt.exit34_crit_edge.loopexit

bb4.i22:		
	br i1 false, label %bb4.i22.bb11.i28_crit_edge, label %bb4.i22.bb2.i20_crit_edge

bb4.i22.bb2.i20_crit_edge:		
	br label %bb2.i20

bb4.i22.bb11.i28_crit_edge:		
	br label %bb11.i28

bb11.i28:		
	br label %base2flt.exit34

bb10.i31:		
	br i1 false, label %bb7.i32, label %bb10.i31.bb11.i28_crit_edge

bb10.i31.bb11.i28_crit_edge:		
	br label %bb11.i28

bb7.i32:		
	br i1 false, label %bb7.i32.base2flt.exit34_crit_edge, label %bb9.i33

bb7.i32.base2flt.exit34_crit_edge:		
	br label %base2flt.exit34

bb9.i33:		
	br label %bb10.i31

base2flt.exit34:		
	br i1 false, label %base2flt.exit34.mulflt.exit_crit_edge, label %bb3.i9

base2flt.exit34.mulflt.exit_crit_edge:		
	br label %mulflt.exit

bb3.i9:		
	br i1 false, label %bb3.i9.mulflt.exit_crit_edge, label %bb5.i10

bb3.i9.mulflt.exit_crit_edge:		
	br label %mulflt.exit

bb5.i10:		
	br i1 false, label %base2flt.exit34.mulflt.exit_crit_edge, label %bb7.i

bb7.i:		
	br i1 false, label %bb8.i11, label %bb7.i.bb12.i_crit_edge

bb7.i.bb12.i_crit_edge:		
	br label %bb12.i

bb8.i11:		
	br i1 false, label %bb3.i9.mulflt.exit_crit_edge, label %bb10.i12

bb10.i12:		
	br label %bb12.i

bb12.i:		
	br label %mulflt.exit

mulflt.exit:		
	br i1 false, label %mulflt.exit.addflt.exit_crit_edge, label %bb3.i

mulflt.exit.addflt.exit_crit_edge:		
	br label %addflt.exit

bb3.i:		
	br i1 false, label %mulflt.exit.addflt.exit_crit_edge, label %bb5.i

bb5.i:		
	br i1 false, label %bb5.i.bb9.i_crit_edge, label %bb6.i

bb5.i.bb9.i_crit_edge:		
	br label %bb9.i

bb6.i:		
	br i1 false, label %bb6.i.addflt.exit_crit_edge, label %bb8.i

bb6.i.addflt.exit_crit_edge:		
	br label %addflt.exit

bb8.i:		
	br label %bb9.i

bb9.i:		
	br label %addflt.exit

addflt.exit:		
	br label %bb15

bb18.loopexit:		
	ret i32 0
}
