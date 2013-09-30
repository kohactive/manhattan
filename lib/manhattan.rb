require "bourbon"
require "neat"
require "manhattan/version"

unless defined?(Sass)
  require 'sass'
end

module Manhattan
  if defined?(Rails) && defined?(Rails::Engine)
    require "manhattan/engine"
  else
    Sass.load_paths << File.expand_path("../../app/assets/stylesheets", __FILE__)
  end
end