// webpack.config.js
var path = require('path');

module.exports = {
  entry: "./app.jsx",
  output: {
      path: path.resolve(__dirname, 'app', 'assets', 'javascripts'),
      filename: "bundle.js"

  },
  resolve: {
  extensions: ['.js', '.jsx', '*']
},
  devtool: 'source-map'
};
