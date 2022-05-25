module.exports = {
  pages: {
    index: {
      entry: "src/main.js",
      title: "SHOP"
    }
  },
  publicPath: '/',
  configureWebpack: {
    performance: {
      maxAssetSize: 2700000,
      maxEntrypointSize: 7000000,
    }
  }
}