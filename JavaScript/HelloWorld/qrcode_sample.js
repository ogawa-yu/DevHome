var qrcode = require('qrcode-console');

function writeStride() {
    console.log("\n\n\n\n") // 端末が認識しやすいように、間を開ける
}

writeStride();

qrcode.generate('Hello QR Code'); // QRコードを生成

writeStride();

