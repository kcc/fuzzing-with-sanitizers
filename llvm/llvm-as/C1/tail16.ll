


define float @h()  {
entry:
  %call = tail call float bitcast (float (...)* @g to float ()*)() 
  ret float %call





}


declare float @g(...) 




