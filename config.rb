###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Live reload
activate :livereload

# directories
set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end

# Deployment
activate :deploy do |deploy|
  deploy.method = :ftp
  deploy.host = "74.220.207.165"
  deploy.user = "kauaicre"
  deploy.password = "Rounder1#"
  deploy.path = "/public_html/"
end