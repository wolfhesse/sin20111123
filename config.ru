# frozen_string_literal: true

require 'rubygems'
require 'bundler'

Bundler.require

require './hi_controller'
run Sinatra::Application
