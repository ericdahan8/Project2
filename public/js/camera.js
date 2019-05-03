// Require the client

const Clarifai = require('clarifai');

// initialize with your api key. This will also work in your browser via http://browserify.org/

const app = new Clarifai.App({
 apiKey: '0e3c7332ea1c461fb29b8804a6aa0eef'
});

app.models.initModel({id: "3e5c3c5da6204f869d6efe680d170133", version: "0e3c7332ea1c461fb29b8804a6aa0eef"})
.then(generalModel => {
  return generalModel.predict("https://samples.clarifai.com/metro-north.jpg");
})
.then(response => {
  var concepts = response['outputs'][0]['data']['concepts']
  console.log(concepts);
})
.catch(error => {
    console.log(error.data);
});