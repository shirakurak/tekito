'use strict';
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

console.log(sum([1, 2]));
console.assert(sum([1, 2]) == 3);
