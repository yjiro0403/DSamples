import std.stdio;

const int MAX_N = 10;
int memo[MAX_N + 1];

int fib(int n){
    if (n <= 1)
        return n;
    if (memo[n] != 0)
        return memo[n];
    return memo[n] = fib(n-1)+fib(n-2);
}

void main()
{
    writeln(fib(10));
}