'use strict';

require('./index.html');

var Elm = require('./Main.elm');
var mountNode = document.getElementById('main');

var initialModel = undefined;
var app = Elm.Main.embed(mountNode, initialModel);
