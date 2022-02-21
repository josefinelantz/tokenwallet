module.exports = function override (config, env) {
    console.log('override')
    let loaders = config.resolve
    loaders.fallback = {
        "fs": false,
        "os": false,
        "url": false,
        "tls": false,
        "net": false,
        "assert": false,
        "http": require.resolve("stream-http"),
        "https": false,
        // "zlib": require.resolve("browserify-zlib") ,
        // "path": require.resolve("path-browserify"),
        "stream": require.resolve("stream-browserify"),
        
        "util": require.resolve("util/"),
        "crypto": require.resolve("crypto-browserify")
    }
    
    return config
}