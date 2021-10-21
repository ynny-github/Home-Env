import React from "react";
import ReactDOM from "react-dom";
import App from "./App";
// 使い所が分からない
// import reportWebVitals from "./reportWebVitals";

// 単体で検証するときだけ動く
if (process.env.REACT_APP_STAGE === "unit") {
  import("./mocks/browser").then((res) => {
    res.worker.start();
  });
}

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById("root")
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
// reportWebVitals();