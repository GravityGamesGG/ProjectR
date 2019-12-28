const path = require("path");

module.exports = {
  outputDir: path.resolve(__dirname, "../../packages/projectr/UI/html"),
  filenameHashing: false,
  productionSourceMap: false,
  publicPath: "./"
}