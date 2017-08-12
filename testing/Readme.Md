There were some serious steps involved in getting Catpix to work.
you need Tco gem which is easy to get it is used for colouring the terminal

you need Rmagic which is easy to get but it uses
Image magick, which proves to be a jerk.

Uninstall Image Magick 7 (if exists since it conflicts)

brew uninstall imagemagick && brew unlink imagemagick --force
Install Image Magick (version ImageMagick 6.9.9-5)

brew install imagemagick@6 && brew link --force imagemagick@6
Show version of Image Magick installed

Reinstall pkg-config http://www.rubydoc.info/gems/rmagick/frames#install

brew uninstall pkg-config
brew install pkg-config
brew unlink pkg-config
brew link pkg-config

Fix if error occurs Can't find MagickWand.h with:
Solution: mdfind MagickWand.h

Install RMagick gem (v2.16.0)
gem install rmagick -v 2.16.0   

Install Catpix gem
gem install catpix -v 0.2.0
