<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>POSTのサンプル</title>
  </head>
  <body bgcolor="gray">

<?php
if($_SERVER['SERVER_NAME'] == "localhost") {
	//ローカルの接続設定
	$mysqli = new mysqli('localhost', 'root', '', 'comments');
} else {
	//XREAサーバの接続設定
	$mysqli = new mysqli('localhost', 'miyu724', 'comments', 'miyu724');
}
if ($mysqli->connect_error){
  print("接続失敗：" . $mysqli->connect_error);
  exit();
}
?>

<?php

//プリペアドステートメントを作成　ユーザ入力を使用する箇所は?にしておく
$stmt = $mysqli->prepare("INSERT INTO datas2 (name, message) VALUES (?, ?)");
//$_POST["name"]に名前が、$_POST["message"]に本文が格納されているとする。
//?の位置に値を割り当てる
// タグを消去
$stmt->bind_param('ss', $_POST["name"],$_POST["comment"]);
//実行
$stmt->execute();
//}
?>
    <?php
      //commentがPOSTされているなら
      if(isset($_POST["name"])&&isset($_POST["comment"])){
        //エスケープしてから表示
        $name = htmlspecialchars($_POST["name"]);
        $comment = htmlspecialchars($_POST["comment"]);
         print(" ${name} のコメントは「 ${comment} 」です。");
      } 
    ?>

    <h1 align="center">ぬちゃんねる</h1>
    <hr>
                <?php
//datasテーブルから日付の降順でデータを取得
$result = $mysqli->query("SELECT * FROM datas2 ORDER BY created DESC");
if($result){
  //1行ずつ取り出し
  while($row = $result->fetch_object()){
    //エスケープして表示
    $name = htmlspecialchars($row->name);
    $message = htmlspecialchars($row->message);
    $created = htmlspecialchars($row->created);
    print("<ins>名前 : $name : $created<br></ins>");
    echo nl2br($message);
    print("<br>");
  }
}
?>
<br>
      <fieldset>
        <p>名前:</p>
        <form method="POST" action="post2.php">
          <input name="name" value="本当にあった怖い名無し" />
          
          <p>コメント</p>
          <p><textarea rows="10" cols="50" input name="comment" ></textarea></p>
                    <input type="submit" value="書き込む" />
        </form>
        </fieldset>

    <?php
//      }
    ?>
    <a href="http://localhost/post2.php" target="_top">Topへ</a>
    <?php
$mysqli->close();
?>
   
  </body>
</html>