'use strict';

const cameraButton = document.getElementById('camera');
const resultDivided = document.getElementById('result-area');
const tweetDivided = document.getElementById('tweet-area');

cameraButton.onclick = () => {
  console.log('ボタンが押されました');
  // 計算結果表示エリアの作成
  // ツイートエリアの作成
}

const answers = [
  '割引はありませんでした。',
  'すごい',
  'しゅごい',
  'すご太郎',
  'すごしゃち',
  'すごフクロウ',
  'すごさめ'
];

function sum(arr) {
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}

// test code
console.log(sum([1, 2]));
console.assert(sum([1, 2]) == 3);
