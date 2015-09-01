


define ptx_device void @t1(float* byval %x) {


  ret void
}



define ptx_device void @t2(double* byval %x) {


  ret void
}



%struct.float2 = type { float, float }
define ptx_device void @t3(%struct.float2* byval %x) {


  ret void
}
