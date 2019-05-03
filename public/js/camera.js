// Require the client

const Clarifai = require('clarifai');

// initialize with your api key. This will also work in your browser via http://browserify.org/

const app = new Clarifai.App({
 apiKey: '0e3c7332ea1c461fb29b8804a6aa0eef'
});

process.nextTick = setImmediate;
});