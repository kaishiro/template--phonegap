# Requires
require 'redcarpet'

# Core Configuration
config[:environment] = :development
config[:build_dir] = '../build/www'
config[:css_dir] = 'css'
config[:js_dir] = 'js'
config[:images_dir] = 'img'
#config[:fonts_dir] = 'fonts'
config[:helpers_dir] = 'helpers'
config[:helpers_filename_glob] = '**.rb'
config[:index_file] = 'index.html'
config[:layout] = 'layout.erb'
config[:layouts_dir] = 'layouts'
config[:partials_dir] = 'partials'
config[:markdown_engine] = :redcarpet
config[:relative_links] = true
config[:strip_index_file] = true
config[:trailing_slash] = true
config[:source] = 'source'

# Development Configuration
configure :development do
    set :debug_assets, true
end

# Production Configuration
configure :build do
    activate :minify_css
    activate :minify_javascript
    activate :asset_hash
end

# Extensions
activate :directory_indexes
activate :automatic_image_sizes
activate :livereload

