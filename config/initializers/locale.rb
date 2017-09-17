# Rails will also search for translation files inside folders at /config/locales
I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

# Configuration for the gem rails-i18n. Only translation files from the locales specified bellow
# will be loaded.
I18n.available_locales = ['pt-BR', :en]

# The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
I18n.default_locale = 'pt-BR'
