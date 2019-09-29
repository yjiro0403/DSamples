void solve(){
    for(int i; i< N; i++){
        for(int j = 0; j <= W;j++) {
            dp[i+1][j] = max(dp[i+1][j], dp[i][j]);
            if(j+w[i] <= W)
                dp[i+1][j+w[i]] = max(dp[i+1][j+w[i]],dp[i][j]+v[i]);
        }
    }
}