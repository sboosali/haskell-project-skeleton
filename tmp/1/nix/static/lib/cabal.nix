##################################################
{}:

##################################################
rec {

  bool = b:

      if b then "True" else "False";

  int  = builtins.toString;

  path = builtins.toString;

}
##################################################