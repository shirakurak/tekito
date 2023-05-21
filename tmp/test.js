// puppeteerを使用する
// `npm install puppeteer`
// `npm list puppeteer`
const puppeteer = require('puppeteer');

(async () => {
  console.log("ページを開きます");

  // const browser = await puppeteer.launch({ headless: "new" });
  const browser = await puppeteer.launch({ headless: false });  // 実際に開く場合
  const page = await browser.newPage();
  await page.goto('https://shirakurak.github.io/');
  console.log("開きました");

  await page.evaluate(() => {
    localStorage.setItem('token', 'abc');
  });

  console.log("localStrageの内容を取得します");
  const localStrageData = await page.evaluate(() => {
    const json = {};
    for (let i = 0; i < localStorage.length; i++) {
      const key = localStorage.key(i);
      json[key] = localStorage.getItem(key);
    }
    return json;
  });

  console.log(localStrageData);

  await browser.close();

})();
