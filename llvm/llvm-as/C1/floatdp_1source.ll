

@varhalf = global half 0.0
@varfloat = global float 0.0
@vardouble = global double 0.0

declare float @fabsf(float) readonly
declare double @fabs(double) readonly

declare float @llvm.sqrt.f32(float %Val)
declare double @llvm.sqrt.f64(double %Val)

declare float @ceilf(float) readonly
declare double @ceil(double) readonly

declare float @floorf(float) readonly
declare double @floor(double) readonly

declare float @truncf(float) readonly
declare double @trunc(double) readonly

declare float @rintf(float) readonly
declare double @rint(double) readonly

declare float @nearbyintf(float) readonly
declare double @nearbyint(double) readonly

define void @simple_float() {

  %val1 = load volatile float, float* @varfloat

  %valabs = call float @fabsf(float %val1)
  store volatile float %valabs, float* @varfloat


  %valneg = fsub float -0.0, %val1
  store volatile float %valneg, float* @varfloat


  %valsqrt = call float @llvm.sqrt.f32(float %val1)
  store volatile float %valsqrt, float* @varfloat


  %valceil = call float @ceilf(float %val1)
  store volatile float %valceil, float* @varfloat


  %valfloor = call float @floorf(float %val1)
  store volatile float %valfloor, float* @varfloat


  %valtrunc = call float @truncf(float %val1)
  store volatile float %valtrunc, float* @varfloat


  %valrint = call float @rintf(float %val1)
  store volatile float %valrint, float* @varfloat


  %valnearbyint = call float @nearbyintf(float %val1)
  store volatile float %valnearbyint, float* @varfloat


  ret void
}

define void @simple_double() {

  %val1 = load volatile double, double* @vardouble

  %valabs = call double @fabs(double %val1)
  store volatile double %valabs, double* @vardouble


  %valneg = fsub double -0.0, %val1
  store volatile double %valneg, double* @vardouble


  %valsqrt = call double @llvm.sqrt.f64(double %val1)
  store volatile double %valsqrt, double* @vardouble


  %valceil = call double @ceil(double %val1)
  store volatile double %valceil, double* @vardouble


  %valfloor = call double @floor(double %val1)
  store volatile double %valfloor, double* @vardouble


  %valtrunc = call double @trunc(double %val1)
  store volatile double %valtrunc, double* @vardouble


  %valrint = call double @rint(double %val1)
  store volatile double %valrint, double* @vardouble


  %valnearbyint = call double @nearbyint(double %val1)
  store volatile double %valnearbyint, double* @vardouble


  ret void
}

define void @converts() {


  %val16 = load volatile half, half* @varhalf
  %val32 = load volatile float, float* @varfloat
  %val64 = load volatile double, double* @vardouble

  %val16to32 = fpext half %val16 to float
  store volatile float %val16to32, float* @varfloat


  %val16to64 = fpext half %val16 to double
  store volatile double %val16to64, double* @vardouble


  %val32to16 = fptrunc float %val32 to half
  store volatile half %val32to16, half* @varhalf


  %val32to64 = fpext float %val32 to double
  store volatile double %val32to64, double* @vardouble


  %val64to16 = fptrunc double %val64 to half
  store volatile half %val64to16, half* @varhalf


  %val64to32 = fptrunc double %val64 to float
  store volatile float %val64to32, float* @varfloat


  ret void
}
