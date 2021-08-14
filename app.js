const express = require('express')
const router = express.Router()
const app = express()


router.get('/', async(req, res)=>{
    return res.status(200).send('Hello')
})

app.use(router)

app.listen(5000, ()=> {
    console.log('Servidor corriendo en el puerto 5000 ')
})