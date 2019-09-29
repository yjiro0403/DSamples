// おまじない。
import std.stdio;
import std.conv;
import std.string;
// おまじない
int main(char[][] args)
{
    // 入力を求める旨の内容を書き出す。
    write("input : ");
    // char[] 型(文字列型)の変数 hoge を定義する。
    char[] hoge;
    // 文字列型の変数 hoge に文字列を入力する。
    // .dupはおまじない
    hoge = readln().dup;
    // 行末の改行文字を取り除いて代入しなおす。
    // .dup/.idupはおまじない
    hoge = chomp(hoge.idup).dup;
    // 整数型の変数 fuga を定義する
    int fuga;
    // 文字列型の変数 hoge を整数に変換して、
    // 整数型の変数 fuga に代入する。
    // to!(文字列から変換したい型)(文字列)
    // とすることで、文字列から整数や実数に変換することが可能
    // idupはおまじない
    fuga = hoge.idup.to!(int);
    // 実数型の変数 piyo を定義する
    real piyo;
    // 文字列型の変数 hoge を実数に変換して、
    // 実数型の変数 piyo に代入する。
    piyo = to!(real)(hoge.idup);
    // それぞれ書き出してみる
    writeln(fuga);
    writeln(piyo);
    // おまじない
    return 0;
}