const { environment } = require("@rails/webpacker");
const env = require("@rails/webpacker/package/env");

// enabling js in Ruby app
const webpack = require("webpack");

environment.plugins.append(
  "Provide",
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    Popper: ["popper.js", "default"],
  })
);

module.exports = environment;
