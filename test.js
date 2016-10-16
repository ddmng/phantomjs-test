// Simple Javascript example
console.log('Loading a web page');
var page = require('webpage').create();
var requests = [
  { name: "google", "url": "http://www.google.it/" },
  { name: "repubblica", "url": "http://www.repubblica.it/" },
  { name: "ansa", "url": "http://www.ansa.it/" },
  { name: "facebook", "url": "http://www.facebook.com/" },
  { name: "twitter", "url": "http://www.twitter.com/@matteorenzi" },
  { name: "github", "url": "http://www.github.com/" }
];

requests.forEach(function(request){
  console.log("Loading " + request.name + " " + request.url)
  var page = require('webpage').create();
  page.open(request.url, function (status) {
    console.log("Status: " + status);
    if(status === "success") {
      page.render('pages/'+request.name+'.png');
    }
  })
});
//phantom.exit();
