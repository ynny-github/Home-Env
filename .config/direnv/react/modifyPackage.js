const PATH = `${process.cwd()}/package.json`;

const fs = require("fs");
const packageJson = require(PATH);

// bable や webpack の設定変更に必須
packageJson.start = "REACT_APP_STAGE=unit react-app-rewired start"
packageJson["start-IoL"] = "REACT_APP_STAGE=integrated_on_local react-app-rewired start"
packageJson.build = "react-app-rewired build"
packageJson.test = "react-app-rewired test"
packageJson.eject = "react-app-rewired eject"

// パッケージが消えてしまう現象を防ぐため、パッケージを新たに追加するとき、一旦リンクを解除する。
packageJson.scripts.preinstall =
  "command -v link-module-alias && link-module-alias clean || true";
packageJson.scripts.postinstall = "link-module-alias";
// storybook から babel-loader を使用しやすいように、link-module-alias でシンボリックリンクを作成している
// この babel-loader は react-scripts が使用していて、
packageJson._moduleAliases = {
  "babel-loader": "node_modules/react-scripts/node_modules/babel-loader",
};

// インデント 2 で json を出力
fs.writeFileSync(PATH, JSON.stringify(packageJson, null, 2));