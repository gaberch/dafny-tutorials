method Max(a: int, b:int) returns (c: int)
  // What postcondition should go here, so that the function operates as expected?
  // Hint: there are many ways to write this.
  ensures c >= a  && c >= b
{
  if a >= b
    {return a;}
  else
    {return b;}
}