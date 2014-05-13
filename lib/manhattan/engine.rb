module Manhattan
  class Engine < ::Rails::Engine
    initializer 'Manhattan precompile hook', :group => :all do |app|
      app.config.assets.precompile += ['ie.css']
    end
  end
end