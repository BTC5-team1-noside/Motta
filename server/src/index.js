const express = require('express');
const knex = require('./knex');
const app = express();
const cors = require('cors');
// const NOTES_TABLE = 'notes';

PORT = process.env.PORT || 3000;

app.use(
  cors({
    origin: 'http://localhost:5173', //flutterのデフォルトポート番号、指定方法確認
    credentials: true, //レスポンスヘッダーにAccess-Control-Allow-Credentials追加
    optionsSuccessStatus: 200, //レスポンスstatusを200に設定
  })
);

app.get('/api', (req, res) => {
  console.log('サーバー来てる？？');
  res.send({ id: 1, value: 'サーバーきてる？' });
});

app.listen(PORT, () => {
  console.log(PORT, 'で実行中');
});
