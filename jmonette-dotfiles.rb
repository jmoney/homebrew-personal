require 'formula'

class JmonetteDotfiles < Formula
  head 'https://github.com/jmonette/dotfiles.git'
  homepage 'http://jmonette.github.io/dotfiles'
  url 'https://github.com/jmonette/dotfiles/archive/master.zip'
  version '0.1'
  sha1 'cf491de9d9fe30114a0475d07cbcf88288351270'

  def install
    ohai "#{prefix}"
#    system "./setup.sh"
  end
end
