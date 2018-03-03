# frozen_string_literal: true

task default: %w[lint test]
task :test do
  sh 'bundle exec rspec --pattern=\'./spec/**/*.spec.rb\''
end

task :rubocop do
  sh 'rubocop --fail-level=E'
end

task :lint do
  sh 'rubocop --fail-level=C -a'
end

task :game do
  require_relative 'ruby_rpg/index.rb'
end
