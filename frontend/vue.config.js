module.exports = {
  publicPath: '/frontend',
  configureWebpack: {
    performance: {
      maxAssetSize: 2700000,
      maxEntrypointSize: 7000000,
    }
  }
}