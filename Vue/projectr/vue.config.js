const path = require("path");

module.exports = {
  outputDir: path.resolve(__dirname, "../../packages/projectr/client/html"),
  filenameHashing: false,
  productionSourceMap: false,
  publicPath: "./"
}