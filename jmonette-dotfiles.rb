require 'formula'

class JmonetteDotfiles < Formula
  homepage 'http://jmonette.github.io/dotfiles'
  url 'https://github.com/jmonette/dotfiles/archive/master.zip'
  version '0.1'
  sha1 '2b4b3ee75a3ca1221c44f1f87f2a4ca60a1ea391'

  def install
    system "./setup.sh"
  end
end
