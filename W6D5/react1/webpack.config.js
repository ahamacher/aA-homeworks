module.exports = {
  entry: "./congrats.jsx",
  output: {
    filename: './bundle.js',
  },
  module: {
    rules: [
      {
        exclude: /(node_modules)/,
        use: {
          test: [/\.jsx?$/],
          loader: 'babel-loader',
          query: {
            presets: ['@babel/env', '@babel/react']
          }
        },
      }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: ['.js', '.jsx', '*']
  }
};
