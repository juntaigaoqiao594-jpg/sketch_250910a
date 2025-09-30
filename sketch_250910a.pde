// ボールのx座標と速さ
float x = 0;
float speed = 3;

void setup() {
  size(400, 200);
}

void draw() {
  // 背景を白に塗り直す
  background(255);
  
  // ボールを描こう（yは画面中央）
  ellipse(x, height / 2, 30, 30);
  
  // x座標を更新して、右に動かそう
  x = x + speed  ;
  
  // 画面の端で跳ね返る（条件分岐）
  if (x > width || x < 0) {
    speed = -speed;  // 速さの向きを反転
  }
  
  // ヒント: widthは画面の横幅、xはボールの位置
}
