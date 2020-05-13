# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3'
gem 'sass-rails', '>= 6'
gem 'sqlite3', '~> 1.4'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
# 論理削除するためのgem
gem 'paranoia'
# 画像ファイルをアップロード
gem 'refile', require: 'refile/rails', github: 'manfe/refile'
# 画像のリサイズ機能
gem 'refile-mini_magick'
# BootstrapでSassを使うgem
gem 'bootstrap-sass', '~> 3.4.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # binding.pryを挿入して、処理の経緯を把握できる
  gem 'pry-rails'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  # 生Rubyに関わる構文規則チェック
  gem 'rubocop', require: false
  # Railsに関わる構文規則チェック
  gem 'rubocop-rails'
  # パフォーマンスに関わる構文規則チェック
  gem 'rubocop-performance'
  # コミット時に自動でrubocopを動作してくれる
  gem 'pre-commit', require: false
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
