// puppeteerを使用する
// `npm install puppeteer`
// `npm list puppeteer`
const puppeteer = require('puppeteer');

(async () => {
  console.log("ページを開きます");

  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://shirakurak.github.io/')
  await browser.close();

  console.log("開きました")
})();
