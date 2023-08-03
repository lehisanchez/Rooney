# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rubocop/rake_task"

RSpec::Core::RakeTask.new(:spec)

# RuboCop::RakeTask.new

RuboCop::RakeTask.new do |task|
  task.requires << "rubocop-performance"
  task.requires << "rubocop-rake"
  task.requires << "rubocop-rspec"
end

task default: %i[spec rubocop]
