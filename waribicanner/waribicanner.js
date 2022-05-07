'use strict';

const cameraButton = document.getElementById('camera');
const resultDivided = document.getElementById('result-area');
const tweetDivided = document.getElementById('tweet-area');

cameraButton.onclick = () => {
  console.log('ボタンが押されました');

  // test data
  let arr0 = [1, 2];

  // 計算結果表示エリアの作成
  const header = document.createElement('h3');
  header.innerText = '計算結果';
  resultDivided.appendChild(header);

  const paragraph1 = document.createElement('p');
  const result1 = sum(arr0);
  paragraph1.innerText = result1 + '円の割引です！';
  resultDivided.appendChild(paragraph1);

  const paragraph2 = document.createElement('p');
  const result2 = answer(result1);
  paragraph2.innerText = result2;
  resultDivided.appendChild(paragraph2);

  // ツイートエリアの作成
  
}

function sum(arr) {
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}

function answer(sum) {
  if (sum <= 0) {
    return '割引はありませんでした。';
  } else if (sum < 100) {
    return 'すごい';
  } else if (sum < 200) {
    return 'しゅごい';
  } else if (sum < 500) {
    return 'すご太郎';
  } else if (sum < 1000) {
    return 'すごしゃち';
  } else if (sum < 5000) {
    return 'すごフクロウ';
  } else {
    return 'すごさめ';
  }
}

// test code
console.log(sum([1, 2]));
console.assert(sum([1, 2]) == 3);
