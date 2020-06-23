const { environment } = require('@rails/webpacker')

module.exports = environment

const webpack = requier('webpack')

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugins({
    $: 'jquery/scr/jquery',
    jQuery: 'jquery/scr/jquery'
  })
)
