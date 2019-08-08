method Max(a: int, b:int) returns (c: int)
  // What postcondition should go here, so that the function operates as expected?
  // Hint: there are many ways to write this.
  ensures c >= a  && c >= b
  ensures a >= b ==> c == a
  ensures a < b ==> c == b
{
  if a >= b
    {return a;}
  else
    {return b;}
}
method Testing() {
  var x,y := 1,2;
  var res := Max(x,y);
  assert res >= x;
  assert res == y;
}