//x,y gyakuninatteru

import std.stdio, std.typecons, std.array;

//meiro no retu to gyo
const int N = 10;
const int M = 10;

const int INF = 100000000;

alias Tuple!(int, "x" , int, "y") P;

char[N][M] maze = ["#.######.#",
                   "......#..#",
                   ".#.##.##.#",
                   ".#........",
                   "##.##.####",
                   "....#....#",
                   ".#######.#",
                   "....#.....",
                   ".####.###.",
                   "....#....#"];

int d[N][M];

int sx = 1, sy = 0;
int gx = 9, gy = 8;

int[4] dx = [1,0,-1,0];
int[4] dy = [0,1,0,-1];

int bfs() {
    P[] que = [P(sx,sy)];

    //syokika
    foreach (int i; 0..N)
        foreach(int j; 0..M)
            d[i][j] = INF;

    d[sx][sy] = 0;

    while (que.length) {
        //que no sento wo toridasu
        P p = que[0];
        que.popFront();
        writeln (p);
        //syuryo syori
        if (p.x == gx && p.y == gy)
            break;

        // idousyori
        foreach (int i; 0..4) {
            int nx = p.x + dx[i], ny = p.y + dy[i];

            //idokanou? otozuretakotoaru?
            if(0 <= nx && nx < N && 0 <= ny && ny < M &&
               maze[nx][ny] != '#' && d[nx][ny] == INF){
                que ~= P(nx,ny);
                d[nx][ny] = d[p.x][p.y] + 1;
            }
        }
    }

    return d[gx][gy];
}


void main()
{
    writeln(bfs());
}
