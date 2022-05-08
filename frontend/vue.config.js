module.exports = {
  publicPath: '/',
  configureWebpack: {
    performance: {
      maxAssetSize: 2700000,
      maxEntrypointSize: 7000000,
    }
  }
}