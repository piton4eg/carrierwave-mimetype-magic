# CarrierWave::MimetypeMagic
[![Gem Version](https://badge.fury.io/rb/carrierwave-mimetype-magic.svg)](https://badge.fury.io/rb/carrierwave-mimetype-magic)

By default, carrierwave uses the uploaded file's extension to guess the content type.  Sometimes you'd prefer to actually look at the file and set the content type based on that, so users can't upload php files as *i\_am\_lying.jpg* and have the server try to process them as images.

This gem checks the file when it's first uploaded, sets the content type as appropriate and, if the filename's original extension doesn't match the content type, renames it so it does.

## Installation

Add this line to your application's Gemfile:

    gem 'carrierwave-mimetype-magic'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install carrierwave-mimetype-magic

## Usage

Just include the module in your uploader:

    class ImageUploader < CarrierWave::Uploader::Base
      include CarrierWave::MimetypeMagic
    end

And now uploaded files' content\_type will be set appropriately, and uploads will automatically be renamed before being passed on to the processors. Given a jpeg file named *test\_1.pdf*, the file will be renamed *test\_1.jpg* before being passed off to normal carrierwave processing.

## History

Originally based on the [carrierwave-mymetype-fu](https://github.com/deviantech/carrierwave-mimetype-fu) (that based on [carrierwave-magic](https://github.com/glebtv/carrierwave-magic)) gem, but using [mimemagic](https://github.com/minad/mimemagic) rather than MimetypeFu, that works incorrect with MS files.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
