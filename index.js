const express = require('express');
// const session = require('express-session')

const PORT = 3000;
const HOST = '0.0.0.0';

var path = require('path');
const app = express();

app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');
app.use('/public', express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname,'/views'));


app.get('/',(req,res)=>{
    // res.send('Hello World para docker testes agora');
    res.render('index');
});

app.listen(PORT, HOST, ()=> {
    console.log(`Servidor rodando na porta ${PORT} no host ${HOST}`)
})