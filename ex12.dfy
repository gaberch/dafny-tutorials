/*
Write a method that takes an integer array, which it requires to have at least one element, 
and returns an index to the maximum of the array's elements. 
Annotate the method with pre- and postconditions that state the intent of the method, 
and annotate its body with loop invariant to verify it.
*/

method FindMax(a: array<int>) returns (i: int)
   // Annotate this method with pre- and postconditions
   // that ensure it behaves as described.
   requires 0 < a.Length
   ensures 0 <= i < a.Length && forall k :: 0 <= k < a.Length ==> a[i] >= a[k]

{
   var count := 0;
   i := 0;

   while count < a.Length

        invariant 0 <= count <= a.Length
        invariant 0 <= i < a.Length 
        invariant forall k :: 0 <= k < count ==> a[i] >= a[k]
        decreases a.Length - count

   {
        if a[count] >= a[i] {i := count;}
        
        count := count + 1;
        
        

   }

   
}


method FindMaxi(a: array<int>) returns (max: int)
	requires 0 < a.Length
	ensures forall k :: 0 < k < a.Length ==> max >= a[k]
{
	var index := 0;
	max := a[0]; // assume first is max
	while index < a.Length
        
		invariant 0 <= index <= a.Length
		invariant forall k :: 0 <= k < index ==> max >= a[k]
        decreases a.Length - index
	{
		if a[index] >= max { max := a[index]; }
		index := index + 1;
	}
}
