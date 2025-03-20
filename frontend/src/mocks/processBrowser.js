// Mock implementation for process/browser
module.exports = {
  nextTick: function nextTick(fn) {
    setTimeout(fn, 0);
  },
  title: 'browser',
  browser: true,
  env: {
    NODE_ENV: 'development'
  },
  argv: [],
  version: '',
  versions: {}
}; 