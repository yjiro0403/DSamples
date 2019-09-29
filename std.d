import std.stdio;

void main()
{
    stderr.writeln("saki");
    
    stdout.writeln("Hello");

    write("input : ");

    char[] hoge = readln().dup;

    writeln(hoge);
}