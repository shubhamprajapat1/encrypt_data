module EncryptData
  class Crypt
    class << self
      def encrypt(value, key)
        @key = key
        crypt(:encrypt, value)
      end

      def decrypt(value, key)
        @key = key
        crypt(:decrypt, value)
      end

      def encryption_key
        @master_key = ENV['EncryptDataKey'].nil? ? EncryptData.configuration.master_key : ENV['EncryptDataKey']
        @key || @master_key
      end

      ALGO = 'aes-256-cbc'.freeze
      def crypt(cipher_method, value)
        cipher = OpenSSL::Cipher.new(ALGO)
        cipher.send(cipher_method)
        cipher.pkcs5_keyivgen(encryption_key)
        result = cipher.update(value)
        result << cipher.final
      end
    end
  end
end