import std.stdio, std.array, std.algorithm;

void main()
{
    auto app = appender!(int[]);

    auto a = [0,1,2,3,4,5,6];

    app.put(a);
    
    app.data[1..3].bringToFront(app.data[4..6]);

    assert(app.data == [0,4,5,3,1,2,6]);

    app ~= [7,8];
    assert(app.data == [0,4,5,3,1,2,6,7,8]);

    auto app2 = Appender!string("ab");
    auto app3 = Appender!string();

    //app2.put('a');
    app2.put("ab");
    //app2.opOpAssign(app3);

    writeln(app2.data);
}