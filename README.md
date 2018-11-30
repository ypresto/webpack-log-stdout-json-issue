webpack-log-stdout-json-issue
=============================

https://github.com/webpack-contrib/webpack-log/issues/15
https://github.com/s-panferov/awesome-typescript-loader/issues/461

`webpack --json` will output JSON text to STDOUT.
But `awesome-typescript-loader` which uses `webpack-log` writes info messages to STDOUT, so actual JSON data follows that messages.

```json
ℹ ｢atl｣: Using typescript@3.2.1 from typescript
ℹ ｢atl｣: Using tsconfig.json from /Users/yuya/github/webpack-log-stdout-json-issue/tsconfig.json
ℹ ｢atl｣: Checking started in a separate process...
ℹ ｢atl｣: Time: 401ms
{
  "errors": [],
  "warnings": [
    "configuration\nThe 'mode' option has not been set, webpack will fallback to 'production' for this value. Set 'mode' option to 'development' or 'production' to enable defaults for each environment.\nYou can also set it to 'none' to disable any default behavior. Learn more: https://webpack.js.org/concepts/mode/"
  ],
  "version": "4.26.1",
```

For reproduction, run `generate-json.sh` and corrupted `stats.json` will be written.
