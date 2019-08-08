/*
Change your test method from Exercise 4 to capture the value of max to a variable, 
and then do the checks from Exercise 4 using the variable. 
Dafny will reject this program because you are calling max from real code. 
Fix this problem using a function method.
*/

function method max(a: int, b: int): int 
{
   if a >= b then a else b
}
method Testing() {
  var res := max(5,6);
  assert res == 6;
}
