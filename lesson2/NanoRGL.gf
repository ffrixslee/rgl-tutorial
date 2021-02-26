abstract NanoRGL = {
  flags startcat = NP ;
  -- To have GF shell behave nicely: with startcat=NP,
  -- you can gt/gr and parse without specifying -cat=NP.
  -- See http://www.grammaticalframework.org/doc/gf-refman.html#flags-and-pragmas

  cat
    Det ;
    N ;
    NP ;
    Adj ;

  fun
    this_Det : Det ;
    many_Det : Det ;
    my_Det : Det ;
    num5_Det : Det ;
    dog_N : N ;
    big_Adj : Adj ;

    DetN : Det -> N -> NP ;
    AdjN : Det -> Adj -> N -> NP ;
}