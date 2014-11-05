require 'formula'

class Saxoncli < Formula
  homepage 'http://jmonette.github.io/saxoncli'
  url 'https://github.com/jmonette/saxoncli/archive/v0.2.1.tar.gz'
  sha1 '3c8b087534e33ba7158c7580685262cfc0c46ee1'

  head 'https://github.com/jmonette/saxoncli.git'

  def install
    ohai "Bin installing saxoncli"
    bin.install "bin/saxoncli"

    ohai "Lib installing Saxon-HE-9.4.0.7.jar"
    lib.install "lib/Saxon-HE-9.4.0.7.jar"
  end
end
