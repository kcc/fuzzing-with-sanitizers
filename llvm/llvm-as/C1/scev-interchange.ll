

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
	%"struct.DataOutBase::GmvFlags" = type { i32 }
	%"struct.FE_DGPNonparametric<3>" = type { [1156 x i8], i32, %"struct.PolynomialSpace<1>" }
	%"struct.FiniteElementData<1>" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
	%struct.Line = type { [2 x i32] }
	%"struct.PolynomialSpace<1>" = type { %"struct.std::vector<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >", i32, %"struct.std::vector<int,std::allocator<int> >", %"struct.std::vector<int,std::allocator<int> >" }
	%"struct.Polynomials::Polynomial<double>" = type { %struct.Subscriptor, %"struct.std::vector<double,std::allocator<double> >" }
	%struct.Subscriptor = type { i32 (...)**, i32, %"struct.std::type_info"* }
	%"struct.TableBase<2,double>" = type { %struct.Subscriptor, double*, i32, %"struct.TableIndices<2>" }
	%"struct.TableIndices<2>" = type { %struct.Line }
	%"struct.std::_Bit_const_iterator" = type { %"struct.std::_Bit_iterator_base" }
	%"struct.std::_Bit_iterator_base" = type { i64*, i32 }
	%"struct.std::_Bvector_base<std::allocator<bool> >" = type { %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl" }
	%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl" = type { %"struct.std::_Bit_const_iterator", %"struct.std::_Bit_const_iterator", i64* }
	%"struct.std::_Vector_base<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >" = type { %"struct.std::_Vector_base<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >::_Vector_impl" }
	%"struct.std::_Vector_base<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >::_Vector_impl" = type { %"struct.Polynomials::Polynomial<double>"*, %"struct.Polynomials::Polynomial<double>"*, %"struct.Polynomials::Polynomial<double>"* }
	%"struct.std::_Vector_base<double,std::allocator<double> >" = type { %"struct.std::_Vector_base<double,std::allocator<double> >::_Vector_impl" }
	%"struct.std::_Vector_base<double,std::allocator<double> >::_Vector_impl" = type { double*, double*, double* }
	%"struct.std::_Vector_base<int,std::allocator<int> >" = type { %"struct.std::_Vector_base<int,std::allocator<int> >::_Vector_impl" }
	%"struct.std::_Vector_base<int,std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
	%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >,std::allocator<std::vector<bool, std::allocator<bool> > > >" = type { %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >,std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl" }
	%"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >,std::allocator<std::vector<bool, std::allocator<bool> > > >::_Vector_impl" = type { %"struct.std::vector<bool,std::allocator<bool> >"*, %"struct.std::vector<bool,std::allocator<bool> >"*, %"struct.std::vector<bool,std::allocator<bool> >"* }
	%"struct.std::type_info" = type { i32 (...)**, i8* }
	%"struct.std::vector<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >" = type { %"struct.std::_Vector_base<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >" }
	%"struct.std::vector<bool,std::allocator<bool> >" = type { %"struct.std::_Bvector_base<std::allocator<bool> >" }
	%"struct.std::vector<double,std::allocator<double> >" = type { %"struct.std::_Vector_base<double,std::allocator<double> >" }
	%"struct.std::vector<int,std::allocator<int> >" = type { %"struct.std::_Vector_base<int,std::allocator<int> >" }
	%"struct.std::vector<std::vector<bool, std::allocator<bool> >,std::allocator<std::vector<bool, std::allocator<bool> > > >" = type { %"struct.std::_Vector_base<std::vector<bool, std::allocator<bool> >,std::allocator<std::vector<bool, std::allocator<bool> > > >" }

declare void @_Unwind_Resume(i8*)

declare i8* @_Znwm(i64)

declare fastcc void @_ZNSt6vectorIjSaIjEEaSERKS1_(%"struct.std::vector<int,std::allocator<int> >"*, %"struct.std::vector<int,std::allocator<int> >"*)

declare fastcc void @_ZN9TableBaseILi2EdE6reinitERK12TableIndicesILi2EE(%"struct.TableBase<2,double>"* nocapture, i32, i32)

declare fastcc void @_ZNSt6vectorIbSaIbEEC1EmRKbRKS0_(%"struct.std::vector<bool,std::allocator<bool> >"* nocapture, i64, i8* nocapture)

declare fastcc void @_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2EmRKS1_RKS2_(%"struct.std::vector<std::vector<bool, std::allocator<bool> >,std::allocator<std::vector<bool, std::allocator<bool> > > >"* nocapture, i64, %"struct.std::vector<bool,std::allocator<bool> >"* nocapture)

declare fastcc void @_ZNSt6vectorIN11Polynomials10PolynomialIdEESaIS2_EED1Ev(%"struct.std::vector<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >"* nocapture)

declare fastcc void @_ZN24TensorProductPolynomialsILi3EEC2IN11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS6_EE(%"struct.PolynomialSpace<1>"* nocapture, %"struct.std::vector<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >"* nocapture)

declare fastcc void @_ZN7FE_PolyI24TensorProductPolynomialsILi3EELi3EEC2EjRKS1_RK17FiniteElementDataILi3EERKSt6vectorIbSaIbEERKS9_ISB_SaISB_EE(%"struct.FE_DGPNonparametric<3>"*, i32, %"struct.PolynomialSpace<1>"* nocapture, %"struct.FiniteElementData<1>"* nocapture, %"struct.std::vector<bool,std::allocator<bool> >"* nocapture, %"struct.std::vector<std::vector<bool, std::allocator<bool> >,std::allocator<std::vector<bool, std::allocator<bool> > > >"* nocapture)

declare fastcc void @_ZN11FE_Q_Helper12_GLOBAL__N_116invert_numberingERKSt6vectorIjSaIjEE(%"struct.std::vector<int,std::allocator<int> >"* noalias nocapture sret, %"struct.std::vector<int,std::allocator<int> >"* nocapture)

declare fastcc void @_ZN4FE_QILi3EE14get_dpo_vectorEj(%"struct.std::vector<int,std::allocator<int> >"* noalias nocapture sret, i32)

define fastcc void @_ZN4FE_QILi3EEC1Ej(i32 %degree) personality i32 (...)* @__gxx_personality_v0 {
entry:
	invoke fastcc void @_ZNSt6vectorIbSaIbEEC1EmRKbRKS0_(%"struct.std::vector<bool,std::allocator<bool> >"* undef, i64 1, i8* undef)
			to label %invcont.i unwind label %lpad.i

invcont.i:		
	invoke fastcc void @_ZN4FE_QILi3EE14get_dpo_vectorEj(%"struct.std::vector<int,std::allocator<int> >"* noalias sret undef, i32 %degree)
			to label %invcont1.i unwind label %lpad120.i

invcont1.i:		
	invoke fastcc void @_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2EmRKS1_RKS2_(%"struct.std::vector<std::vector<bool, std::allocator<bool> >,std::allocator<std::vector<bool, std::allocator<bool> > > >"* undef, i64 undef, %"struct.std::vector<bool,std::allocator<bool> >"* undef)
			to label %invcont3.i unwind label %lpad124.i

invcont3.i:		
	invoke fastcc void @_ZN4FE_QILi3EE14get_dpo_vectorEj(%"struct.std::vector<int,std::allocator<int> >"* noalias sret undef, i32 %degree)
			to label %invcont4.i unwind label %lpad128.i

invcont4.i:		
	invoke fastcc void @_ZNSt6vectorIbSaIbEEC1EmRKbRKS0_(%"struct.std::vector<bool,std::allocator<bool> >"* undef, i64 undef, i8* undef)
			to label %invcont6.i unwind label %lpad132.i

invcont6.i:		
	invoke fastcc void @_ZN4FE_QILi3EE14get_dpo_vectorEj(%"struct.std::vector<int,std::allocator<int> >"* noalias sret undef, i32 %degree)
			to label %invcont7.i unwind label %lpad136.i

invcont7.i:		
	invoke fastcc void @_ZN11Polynomials19LagrangeEquidistant23generate_complete_basisEj(%"struct.std::vector<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >"* noalias sret undef, i32 %degree)
			to label %invcont9.i unwind label %lpad140.i

invcont9.i:		
	invoke fastcc void @_ZN24TensorProductPolynomialsILi3EEC2IN11Polynomials10PolynomialIdEEEERKSt6vectorIT_SaIS6_EE(%"struct.PolynomialSpace<1>"* undef, %"struct.std::vector<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >"* undef)
			to label %invcont10.i unwind label %lpad144.i

invcont10.i:		
	invoke fastcc void @_ZN7FE_PolyI24TensorProductPolynomialsILi3EELi3EEC2EjRKS1_RK17FiniteElementDataILi3EERKSt6vectorIbSaIbEERKS9_ISB_SaISB_EE(%"struct.FE_DGPNonparametric<3>"* undef, i32 %degree, %"struct.PolynomialSpace<1>"* undef, %"struct.FiniteElementData<1>"* undef, %"struct.std::vector<bool,std::allocator<bool> >"* undef, %"struct.std::vector<std::vector<bool, std::allocator<bool> >,std::allocator<std::vector<bool, std::allocator<bool> > > >"* undef)
			to label %bb14.i unwind label %lpad148.i

bb14.i:		
	br i1 false, label %bb3.i164.i, label %bb.i.i.i.i160.i

bb.i.i.i.i160.i:		
	unreachable

bb3.i164.i:		
	br i1 undef, label %bb10.i168.i, label %bb.i.i.i20.i166.i

bb.i.i.i20.i166.i:		
	unreachable

bb10.i168.i:		
	invoke fastcc void @_ZNSt6vectorIN11Polynomials10PolynomialIdEESaIS2_EED1Ev(%"struct.std::vector<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >"* undef)
			to label %bb21.i unwind label %lpad144.i

bb21.i:		
	invoke fastcc void @_ZNSt6vectorIN11Polynomials10PolynomialIdEESaIS2_EED1Ev(%"struct.std::vector<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >"* undef)
			to label %bb28.i unwind label %lpad140.i

bb28.i:		
	br i1 undef, label %bb35.i, label %bb.i.i.i175.i

bb.i.i.i175.i:		
	br label %bb35.i

bb35.i:		
	br i1 undef, label %bb42.i, label %bb.i.i.i205.i

bb.i.i.i205.i:		
	unreachable

bb42.i:		
	br i1 undef, label %bb47.i, label %bb.i.i.i213.i

bb.i.i.i213.i:		
	unreachable

bb47.i:		
	br i1 undef, label %bb59.i, label %bb.i.i.i247.i

bb.i.i.i247.i:		
	unreachable

bb59.i:		
	br i1 undef, label %bb66.i, label %bb.i.i.i255.i

bb.i.i.i255.i:		
	unreachable

bb66.i:		
	br i1 undef, label %bb71.i, label %bb.i.i.i262.i

bb.i.i.i262.i:		
	br label %bb71.i

bb71.i:		
	%tmp11.i.i29.i.i.i.i.i.i = invoke i8* @_Znwm(i64 12)
			to label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i.i.i unwind label %lpad.i.i.i.i.i.i		

lpad.i.i.i.i.i.i:		
        %exn.i.i.i.i.i.i = landingpad {i8*, i32}
                 cleanup
	unreachable

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i.i.i:		
	br i1 undef, label %_ZNSt6vectorIjSaIjEED1Ev.exit.i.i, label %bb.i.i.i.i94.i

bb.i.i.i.i94.i:		
	unreachable

_ZNSt6vectorIjSaIjEED1Ev.exit.i.i:		
	%tmp11.i.i29.i.i.i.i5.i.i = invoke i8* @_Znwm(i64 undef)
			to label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i12.i.i unwind label %lpad.i.i.i.i8.i.i		

lpad.i.i.i.i8.i.i:		
        %exn.i.i.i.i8.i.i = landingpad {i8*, i32}
                 cleanup
	invoke void @_Unwind_Resume(i8* undef)
			to label %.noexc.i9.i.i unwind label %lpad.i19.i.i

.noexc.i9.i.i:		
	unreachable

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i12.i.i:		
	br i1 undef, label %bb50.i.i.i, label %bb.i.i.i.i.i.i.i.i.i.i

bb.i.i.i.i.i.i.i.i.i.i:		
	br i1 undef, label %bb50.i.i.i, label %bb.i.i.i.i.i.i.i.i.i.i

bb50.i.i.i:		
	invoke fastcc void @_ZN11FE_Q_Helper12_GLOBAL__N_116invert_numberingERKSt6vectorIjSaIjEE(%"struct.std::vector<int,std::allocator<int> >"* noalias sret undef, %"struct.std::vector<int,std::allocator<int> >"* undef)
			to label %bb83.i unwind label %lpad188.i

lpad.i19.i.i:		
        %exn.i19.i.i = landingpad {i8*, i32}
                 cleanup
	unreachable

bb83.i:		
	br i1 undef, label %invcont84.i, label %bb.i.i.i221.i

bb.i.i.i221.i:		
	unreachable

invcont84.i:		
	%tmp11.i.i29.i.i.i.i.i = invoke i8* @_Znwm(i64 undef)
			to label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i.i unwind label %lpad.i.i.i.i315.i		

lpad.i.i.i.i315.i:		
        %exn.i.i.i.i315.i = landingpad {i8*, i32}
                 cleanup
	invoke void @_Unwind_Resume(i8* undef)
			to label %.noexc.i316.i unwind label %lpad.i352.i

.noexc.i316.i:		
	unreachable

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i.i:		
	br i1 undef, label %bb50.i.i, label %bb.i.i.i.i.i.i.i.i320.i

bb.i.i.i.i.i.i.i.i320.i:		
	br i1 undef, label %bb50.i.i, label %bb.i.i.i.i.i.i.i.i320.i

bb50.i.i:		
	invoke fastcc void @_ZN11FE_Q_Helper12_GLOBAL__N_116invert_numberingERKSt6vectorIjSaIjEE(%"struct.std::vector<int,std::allocator<int> >"* noalias sret undef, %"struct.std::vector<int,std::allocator<int> >"* undef)
			to label %invcont86.i unwind label %lpad200.i

lpad.i352.i:		
        %exn.i352.i = landingpad {i8*, i32}
                 cleanup
	unreachable

invcont86.i:		
	invoke fastcc void @_ZNSt6vectorIjSaIjEEaSERKS1_(%"struct.std::vector<int,std::allocator<int> >"* undef, %"struct.std::vector<int,std::allocator<int> >"* undef)
			to label %.noexc380.i unwind label %lpad204.i

.noexc380.i:		
	br i1 undef, label %bb100.i, label %bb.i.i.i198.i

bb.i.i.i198.i:		
	unreachable

bb100.i:		
	br i1 undef, label %invcont101.i, label %bb.i.i.i190.i

bb.i.i.i190.i:		
	unreachable

invcont101.i:		
	invoke fastcc void @_ZN9TableBaseILi2EdE6reinitERK12TableIndicesILi2EE(%"struct.TableBase<2,double>"* undef, i32 undef, i32 undef)
			to label %_ZN10FullMatrixIdEC1Ejj.exit.i.i unwind label %lpad.i.i.i.i.i

lpad.i.i.i.i.i:		
        %exn.i.i.i.i.i = landingpad {i8*, i32}
                 cleanup
	unreachable

_ZN10FullMatrixIdEC1Ejj.exit.i.i:		
	invoke fastcc void @_ZN9TableBaseILi2EdE6reinitERK12TableIndicesILi2EE(%"struct.TableBase<2,double>"* undef, i32 undef, i32 undef)
			to label %_ZN10FullMatrixIdEC1Ejj.exit28.i.i unwind label %lpad.i.i.i27.i.i

lpad.i.i.i27.i.i:		
        %exn.i.i.i27.i.i = landingpad {i8*, i32}
                 cleanup
	invoke void @_Unwind_Resume(i8* undef)
			to label %.noexc.i.i unwind label %lpad.i.i

.noexc.i.i:		
	unreachable

_ZN10FullMatrixIdEC1Ejj.exit28.i.i:		
	br i1 undef, label %bb58.i.i, label %bb.i.i.i304.i.i

bb.i.i.i304.i.i:		
	unreachable

bb58.i.i:		
	br i1 false, label %bb.i191.i, label %bb.i.i.i297.i.i

bb.i.i.i297.i.i:		
	unreachable

lpad.i.i:		
        %exn.i.i = landingpad {i8*, i32}
                 cleanup
	unreachable

bb.i191.i:		
	invoke fastcc void @_ZN9TableBaseILi2EdE6reinitERK12TableIndicesILi2EE(%"struct.TableBase<2,double>"* undef, i32 undef, i32 undef)
			to label %.noexc232.i unwind label %lpad196.i

.noexc232.i:		
	br i1 undef, label %bb29.loopexit.i.i, label %bb.i191.i

bb7.i215.i:		
	br i1 undef, label %bb16.preheader.i.i, label %bb8.i.i

bb8.i.i:		
	%tmp60.i.i = add i32 %0, 1		
	br label %bb9.i216.i

bb9.i216.i:		
	%0 = phi i32 [ 0, %bb29.loopexit.i.i ], [ %tmp60.i.i, %bb8.i.i ]		
	br i1 undef, label %bb7.i215.i, label %bb16.preheader.i.i

bb15.i.i:		
	%j1.0212.i.i = phi i32 [ %1, %bb15.i.i ], [ 0, %bb16.preheader.i.i ]		
	%tmp6.i.i195.i.i = load i32, i32* undef, align 4		
	%tmp231.i.i = mul i32 %0, %tmp6.i.i195.i.i		
	%tmp13.i197.i.i = add i32 %j1.0212.i.i, %tmp231.i.i		
	%1 = add i32 %j1.0212.i.i, 1		
	br i1 undef, label %bb15.i.i, label %bb17.i.i

bb17.i.i:		
	br label %bb16.preheader.i.i

bb16.preheader.i.i:		
	br i1 undef, label %bb17.i.i, label %bb15.i.i

bb29.loopexit.i.i:		
	br label %bb9.i216.i

lpad.i:		
        %exn.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad120.i:		
        %exn120.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad124.i:		
        %exn124.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad128.i:		
        %exn128.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad132.i:		
        %exn132.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad136.i:		
        %exn136.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad140.i:		
        %exn140.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad144.i:		
        %exn144.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad148.i:		
        %exn148.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad188.i:		
        %exn188.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad196.i:		
        %exn196 = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad200.i:		
        %exn200.i = landingpad {i8*, i32}
                 cleanup
	unreachable

lpad204.i:		
        %exn204.i = landingpad {i8*, i32}
                 cleanup
	unreachable
}

declare fastcc void @_ZN11Polynomials19LagrangeEquidistant23generate_complete_basisEj(%"struct.std::vector<Polynomials::Polynomial<double>,std::allocator<Polynomials::Polynomial<double> > >"* noalias nocapture sret, i32)

declare i32 @__gxx_personality_v0(...)
