import std.stdio, std.random;

void main()
{
int[] a = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ];

    /*
foreach (e; randomSample(a, 5))
{
    writeln(e);
}
      */

    writeln(randomSample(a, 5));
    
}