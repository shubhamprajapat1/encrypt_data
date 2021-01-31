# EncryptData [![N|Solid](https://shubhamprajapat.herokuapp.com/assets/site-icon/favicon-32x32-ae92648776b6a7eb07d8a8fd866dcea4525f0a181fdb47a867926627d7667186.png)](https://nodesource.com/products/nsolid)

String encryption is a popular subject in all programming languages. A simple algorithm in ruby for string encryption.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'encrypt_data'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install encrypt_data

## Usage

```sh
  require 'encrypt_data'
  
    # simple text
    key = "Simple Key"
    # or hash format
    key = "98dcb07e1c202bc6a4cbbcc6bf3c4acd"
    @encrypt = EncryptData::Convert.new(key)
    
  # OR
  
    ENV['EncryptDataKey'] = 'PJqTYDe0Salp6X7PfBdgeiv7n'
    @encrypt = EncryptData::Convert.new
  
  text = 'I am ROR Developer.'
  ## encryption 
  encrypted_text = @encrypt.dump(text)
  # output >>  +PGqVe4Sakv6X7PfBgiv7n/tvqQm+AySRQTnC3f1K8A=\n
      
      ## decryption
      decrypted_text = @encrypt.load(encrypted_text)
      # output >> 'I am ROR Developer.'
```



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/shubhamprajapat1/encrypt_data. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

