const express = require('express')
const app = express()

app.get('/serviceA', (req,res) => res.send('Service A is working'))

app.listen(8100, () => console.log('Example app is listening'))
