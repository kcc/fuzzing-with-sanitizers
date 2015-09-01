








@i65_l = external global i65
@i65_s = external global i65
@i129_l = external global i129
@i129_s = external global i129

define void @i129_ls() nounwind  {
        %tmp = load i129, i129* @i129_l
        store i129 %tmp, i129* @i129_s
        ret void
}

define void @i65_ls() nounwind  {
        %tmp = load i65, i65* @i65_l
        store i65 %tmp, i65* @i65_s
        ret void
}
