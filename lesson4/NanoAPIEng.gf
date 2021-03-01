--# -path=../lesson1

resource NanoAPIEng = open NanoRGLEng in {
  oper
    mkNP = overload {

      mkNP : Det -> N -> NP = DetN ;

      mkNP : N -> Adj -> NP = \n ->
       let emptyDet : Det = lin Det {s = [] ; num = Sg} , adjectives : Adj = lin {s= []} ;
        in DetN emptyDet adjectives n

    } ;
    mkN = overload {
      
      noun : Str -> Str -> {s : Number => Str} =
      \man,men -> {s = table {Sg => man ; Pl => men}} ;
      
      regNoun : Str -> {s : Number => Str} =
      \car -> noun car (car + "s") 
    } ;

    -- Your task: make an overloaded mkN with at least two instances
}
