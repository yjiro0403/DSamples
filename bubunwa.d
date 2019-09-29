import std.stdio;
import std.algorithm;
import std.array;
import std.conv;

int[] a;
int k;

bool dfs(int i, int sum) {
    if (i == a.length)
        return sum == k;

    if(dfs(i+1,sum))
        return true;

    if(dfs(i+1,sum+a[i]))
        return true;
    
    return false;
}

void main()
{
    string[] input = readln().split;
    k = input[0].to!int;
    
    a = readln().split.map!(to!int).array;
     
    if(dfs(0,0))
        writeln("true");
    else
        writeln("false");
}