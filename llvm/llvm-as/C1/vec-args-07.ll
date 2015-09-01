




declare { <2 x double>, <2 x double>, <2 x double>, <2 x double>,
          <2 x double>, <2 x double>, <2 x double>, <2 x double> } @bar1()

define <2 x double> @f1() {




  %mret = call { <2 x double>, <2 x double>,
                 <2 x double>, <2 x double>,
                 <2 x double>, <2 x double>,
                 <2 x double>, <2 x double> } @bar1()
  %ret = extractvalue { <2 x double>, <2 x double>,
                        <2 x double>, <2 x double>,
                        <2 x double>, <2 x double>,
                        <2 x double>, <2 x double> } %mret, 7
  ret <2 x double> %ret
}


declare { <2 x double>, <2 x double>, <2 x double>, <2 x double>,
          <2 x double>, <2 x double>, <2 x double>, <2 x double>,
          <2 x double> } @bar2()

define <2 x double> @f2() {





  %mret = call { <2 x double>, <2 x double>,
                 <2 x double>, <2 x double>,
                 <2 x double>, <2 x double>,
                 <2 x double>, <2 x double>,
                 <2 x double> } @bar2()
  %ret = extractvalue { <2 x double>, <2 x double>,
                        <2 x double>, <2 x double>,
                        <2 x double>, <2 x double>,
                        <2 x double>, <2 x double>,
                        <2 x double> } %mret, 8
  ret <2 x double> %ret
}
