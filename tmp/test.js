// puppeteerを使用する
// `npm install puppeteer`
// `npm list puppeteer`
const puppeteer = require('puppeteer');
const config = require('./config');

(async () => {
  // const browser = await puppeteer.launch({ headless: "new" });
  const browser = await puppeteer.launch({ headless: false });  // 実際に開く場合
  const page = await browser.newPage();
  await page.goto(config.url);

  await page.evaluate(() => {
    localStorage.setItem('token', 'abc');
    localStorage.setItem('name', 'John');
    localStorage.setItem('email', 'john@example.com');
  });

  console.log("localStrageの内容を取得します");
  
  let localStrageData = null;

  if (config.type == 'all') {
    localStrageData = await page.evaluate(() => {
      const json = {};
      for (let i = 0; i < localStorage.length; i++) {
        const key = localStorage.key(i);
        json[key] = localStorage.getItem(key);
      }
      return json;
    });
  } else if (config.type == 'token') {
    console.log("no!");
  }
  
  // const localStrageData = await page.evaluate(() => {
  //   const json = {};
  //   for (let i = 0; i < localStorage.length; i++) {
  //     const key = localStorage.key(i);
  //     json[key] = localStorage.getItem(key);
  //   }
  //   return json;
  // });

  console.log(localStrageData);

  await browser.close();

})();
