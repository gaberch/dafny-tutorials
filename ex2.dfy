/*
Using a precondition, change Abs to say it can only be called on negative values. 
Simplify the body of Abs into just one return statement and make sure the method still verifies.
*/


method Abs(x: int) returns (y: int)
   // Add a precondition here.
   requires x < 0
   ensures 0 <= y && y == -x
{
     return -x;
}
