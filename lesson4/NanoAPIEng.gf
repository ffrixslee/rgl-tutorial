--# -path=../lesson1

resource NanoAPIEng = open NanoRGLEng in {
  oper
    mkNP = overload {

      -- mkNP : Det -> N -> NP = \n ->

      mkNP : N -> Adj -> NP = \n,adj ->
       let emptyDet : Det = lin Det {s = [] ; num = Sg} ;
      --      adjectives : Adj = lin Adj {s= []} ;
        in DetN emptyDet adj n

    } ;


    mkN = overload {
      
      mkN : Str -> Str -> N = 
        \man,men -> lin N {s = table {Sg => man ; Pl => men}} ;
      
      mkN : Str -> N = 
        \car -> noun car (car + "s") ;
    } ;


    -- mkN = overload {
      
    --   noun : Str -> Str -> {s : Number => Str} =
    --   \man,men -> {s = table {Sg => man ; Pl => men}} ;
      
    --   regNoun : Str -> {s : Number => Str} =
    --   \car -> noun car (car + "s") 
    -- } ;

    -- Your task: make an overloaded mkN with at least two instances
}
