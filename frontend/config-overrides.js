const webpack = require('webpack');
const path = require('path');

module.exports = function override(config) {
  // Do stuff with the webpack config...
  const fallback = config.resolve.fallback || {};
  Object.assign(fallback, {
    crypto: require.resolve('crypto-browserify'),
    stream: require.resolve('stream-browserify'),
    path: require.resolve('path-browserify'),
    fs: false,
    vm: require.resolve('vm-browserify'),
    buffer: require.resolve('buffer/'),
  });
  config.resolve.fallback = fallback;

  // Add alias for @multiversx/sdk-core/out issue resolution
  config.resolve.alias = {
    ...config.resolve.alias,
    '@multiversx/sdk-core/out/transaction': path.resolve(__dirname, 'src/mocks/multiversxMocks.js'),
    '@multiversx/sdk-core/out/signature': path.resolve(__dirname, 'src/mocks/multiversxMocks.js'),
    'process/browser': path.resolve(__dirname, 'src/mocks/processBrowser.js'),
  };

  config.plugins = (config.plugins || []).concat([
    new webpack.ProvidePlugin({
      process: 'process/browser',
      Buffer: ['buffer', 'Buffer'],
    }),
    // Fix "process is not defined" error
    new webpack.DefinePlugin({
      'process.env': JSON.stringify(process.env),
    }),
  ]);

  return config;
}; 