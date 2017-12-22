$stdout.sync = $stderr.sync = true

RACK_ENV    = ENV['RACK_ENV'] ||= 'development'
LOG_TO_FILE = ENV['LOG_TO_FILE']

require 'bundler'

Bundler.require :default, RACK_ENV

require 'ostruct'
require 'logger'

module App
  Config = OpenStruct.new

  class << self
    def root
      @root ||= Pathname.new( File.dirname(__FILE__) ).join('..').expand_path
    end

    def env
      @env ||= RACK_ENV
    end

    attr_accessor :logger
  end

  self.logger = Logger.new(
    LOG_TO_FILE ? root.join('log', "#{env}.log") : STDOUT
  )

  initGlob = root.join('config/initializers/**/*.rb')
  Dir[ initGlob ].each { |initializer| require initializer }

  $LOAD_PATH.unshift root.join('lib')

  require to_s.gsub(/(\w)([A-Z])/, '\\1_\\2').downcase

  require root.join('config/routes') if defined?(::Rack)
end
