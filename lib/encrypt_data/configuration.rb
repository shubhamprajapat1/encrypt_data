module EncryptData
  class Configuration
    attr_accessor :master_key

    def initialize
      @master_key = nil
    end
  end
end
