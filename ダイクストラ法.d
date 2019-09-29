int cost[MAX_V][MAX_V];
int d[MAX_V];
bool used[MAX_V];
int V;

void dijstra(int s){
    fill(d, d+V, INF); //INFume
    fill(used, false);
    d[s] = 0;

    while(1){
        int v = -1;
        for(int u = 0; u< V; u++)
            if(!used[u] && (v == -1 || d[u] < d[v])) v = u;

        if(v == -1) break;

        used[v] = true;

        for(int u = 0; u< V; u++)
            d[u] = min(d[u], d[v]+cost[v][u]);
    }
}

//berumanford
struct edge {int from, to, cost;};

edge es[MAX_E];
int E;

//s”Ô–Ú‚Ì’¸“_‚©‚çŠe’¸“_‚Ö‚ÌÅ’ZŒo˜H
void shortest_path(int s){
    for (int i =0; i < V; i++) d[i] = INF;

    d[s] = 0;
    while(1){
        bool update = false;
        for(int i=0; i< E; i++){
            edge e = es[i];
            if(d[e.from] != INF && d[e.to] > d[e.from] + e.cost){
                d[e.to] = d[e.from]+e.cost;
                update = true;
            }
        }
        if(!update) break;
    }
}

