const PATH = `${process.cwd()}/tsconfig.json`;

const fs = require("fs");
const TsConfig = require(PATH);

// emotion 使用時の ts2322 エラーを消す
TsConfig.jsxImportSource = "@emotion/react";
// 本体のコンパイルに stories は関係ないため、除外する
TsConfig.exclude = ["**/stories"];

// インデント 2 で json を出力
fs.writeFileSync(PATH, JSON.stringify(TsConfig, null, 2));