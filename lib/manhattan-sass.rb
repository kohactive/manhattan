require "bourbon"
require "neat"
require "manhattan-sass/version"

unless defined?(Sass)
  require 'sass'
end

module Manhattan
  if defined?(Rails) && defined?(Rails::Engine)
    require "manhattan-sass/engine"
  else
    Sass.load_paths << File.expand_path("../../app/assets/stylesheets", __FILE__)
  end
end