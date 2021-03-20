require "encrypt_data/version"
require "encrypt_data/configuration"
require "encrypt_data/crypt"
require 'base64'
require 'openssl'

module EncryptData
  class Error < StandardError; end
  class Convert < Crypt

    def initialize(key = nil)
      @key = key unless key.nil?
    end

    def load(value)
      begin
        return if value.nil?
        Marshal.load(
          Crypt.decrypt(
            Base64.decode64(value), @key))
      rescue Exception => e
        puts "\e[31m#{e.message}\e[0m"
      end
    end

    def dump(value)
      begin
        Base64.encode64(
          Crypt.encrypt(
            Marshal.dump(value), @key))
      rescue Exception => e
        puts "\e[31m#{e.message}\e[0m"
      end
    end
  end

  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
