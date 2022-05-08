'use strict';

const cameraButton = document.getElementById('camera');
const resultDivided = document.getElementById('result-area');
const tweetDivided = document.getElementById('tweet-area');

cameraButton.onclick = () => {
  console.log('ボタンが押されました');

  // test data
  let arr0 = [1, 2];

  // 計算結果表示エリアの作成
  resultDivided.innerText = '';

  const header = document.createElement('h3');
  header.innerText = '計算結果';
  resultDivided.appendChild(header);

  const paragraph1 = document.createElement('p');
  const yen = sum(arr0);
  const result1 = yen + '円の割引です！';
  paragraph1.innerText = result1;
  resultDivided.appendChild(paragraph1);

  const paragraph2 = document.createElement('p');
  const result2 = answer(yen);
  paragraph2.innerText = result2;
  resultDivided.appendChild(paragraph2);

  // ツイートエリアの作成
  tweetDivided.innerText = '';
  const anchor = document.createElement('a');
  const hrefValue =
    'https://twitter.com/intent/tweet?button_hashtag=' +
    encodeURIComponent('今回の割引金額') +
    '&ref_src=twsrc%5Etfw';

  anchor.setAttribute('href', hrefValue);
  anchor.setAttribute('class', 'twitter-hashtag-button');
  anchor.setAttribute('data-text', result1 + result2);
  anchor.innerText = 'Tweet #今回の割引金額';

  tweetDivided.appendChild(anchor);

  const script = document.createElement('script');
  script.setAttribute('src', 'https://platform.twitter.com/widgets.js');
  tweetDivided.appendChild(script);

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
  } else if (sum < 10000) {
    return 'すごさめ';
  } else {
    return '判定不能';
  }
}

// test code
console.log(sum([1, 2]));
console.assert(sum([1, 2]) == 3);
