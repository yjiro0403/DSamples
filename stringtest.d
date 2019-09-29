import std.stdio, std.string;
import std.uni;

// Must keep the original order of the items.
 // Slow implementation that shows the semantics.
 T[] noDupes(T)(in T[] s) {
      import std.algorithm: canFind;
      T[] result;
      foreach (T c; s)
          if (!result.canFind(c))
              result ~= c;
      return result;
 }

void main()
{
    string c = "abcdefghijklabcdefghijkl";
    //writeln(c.indexOf("abc",5));
    assert(c.lastIndexOfAny("edc") == 16);

    import std.algorithm.searching;
    writeln(c.canFind("def"));
}
