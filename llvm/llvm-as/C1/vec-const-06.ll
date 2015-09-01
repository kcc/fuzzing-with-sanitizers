




define <2 x double> @f1() {



  ret <2 x double> zeroinitializer
}


define <2 x double> @f2() {



  ret <2 x double> <double 0xffffffffffffffff, double 0xffffffffffffffff>
}


define <2 x double> @f3() {



  ret <2 x double> <double 0xff000000ffff0000, double 0x00ffffff00ffff00>
}


define <2 x double> @f4() {



  ret <2 x double> <double 0xff000000ffff0000, double undef>
}


define <2 x double> @f5() {



  ret <2 x double> <double 0xfe000000ffff0000, double 0x00ffffff00ffff00>
}
