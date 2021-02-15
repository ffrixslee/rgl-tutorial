concrete NanoRGLGer of NanoRGL = {

  lincat
    Det = {s : Str ; num : Number} ;
    N = {s : Number => Str} ;
    NP = {s : Str} ;
    Adj =  {s : Str} ;

  lin
    this_Det = {s = "dieser" ; num = Sg} ;
    many_Det = {s = "viele " ; num = Pl} ;
    big_Adj = {s = "großer"} ;
    dog_N = regNoun "Hund" ;
    my_Det = {s = "mein" ; num = Sg} ;
    num5_Det = {s = "5" ; num = Pl} ;

    -- : Det -> N -> NP ;
    DetN det adj noun = {s = det.s ++ adj.s ++ noun.s ! det.num} ;
    AdjN det adj noun = {s = adj.s ++ noun.s ! det.num};

  param
    Number = Sg | Pl ;

  oper
    noun : Str -> Str -> {s : Number => Str} =
      \man,men -> {s = table {Sg => man ; Pl => men}} ;
    regNoun : Str -> {s : Number => Str} =
      \car -> noun car (car + "s") ;
}
