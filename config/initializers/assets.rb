# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.precompile += %w( login_stylesheet.css )
Rails.application.config.assets.precompile += %w( font-awesome.css )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( bootstrap-theme.min.css )
Rails.application.config.assets.precompile += %w( font.awesome.min.css )
Rails.application.config.assets.precompile += %w( jquery.fancybox.css )
Rails.application.config.assets.precompile += %w( estilos_register.css )

Rails.application.config.assets.precompile += %w( font-awesome.css )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( bootstrap-theme.min.css )
Rails.application.config.assets.precompile += %w( font.awesome.min.css )

Rails.application.config.assets.precompile += %w(bootstrap-hover-dropdown.js)
Rails.application.config.assets.precompile += %w(bootstrap.min.js)
Rails.application.config.assets.precompile += %w(cable.js,front.js)
Rails.application.config.assets.precompile += %w(gmaps.init.js)
Rails.application.config.assets.precompile += %w(gmaps.js)
Rails.application.config.assets.precompile += %w(jquery-1.11.0.min.js)
Rails.application.config.assets.precompile += %w(jquery.cookie.js)
Rails.application.config.assets.precompile += %w(jquery.parallax-1.1.3.js)
Rails.application.config.assets.precompile += %w(owl.carousel.min.js)
Rails.application.config.assets.precompile += %w(owl.carousel.js)
Rails.application.config.assets.precompile += %w(espond.min.js)
Rails.application.config.assets.precompile += %w(waypoints.min.js)

Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets

# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
