







@struct_fp128 = global {fp128} zeroinitializer

define inreg {fp128} @ret_struct_fp128() nounwind {
entry:
        %0 = load volatile {fp128}, {fp128}* @struct_fp128
        ret {fp128} %0
}





















