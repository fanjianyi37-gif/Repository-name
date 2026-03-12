/**
 * 自动扫描 assets/images/照片/ 生成 photos-config.js
 * 运行: node js/build-photos.js
 */
var fs = require('fs');
var path = require('path');
var dir = path.join(__dirname, '../assets/images/照片');
var out = path.join(__dirname, 'photos-config.js');
var ext = /\.(jpg|jpeg|png|webp|gif)$/i;
var files = [];
try {
  files = fs.readdirSync(dir).filter(function(f) { return ext.test(f); }).sort();
} catch (e) {
  console.log('照片文件夹不存在');
  process.exit(1);
}
var content = 'var PHOTOS = ' + JSON.stringify(files, null, 2) + ';\n';
fs.writeFileSync(out, content);
console.log('已更新', files.length, '张照片');
