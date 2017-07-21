
require('./styles/main.scss')

let Elm = require('../elm/Main')
let app = Elm.Main.embed(document.getElementById('main'))

document.addEventListener('deviceready', () => {
  app.ports.deviceReady.send(null)
}, false)
