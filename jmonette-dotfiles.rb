require 'formula'

class JmonetteDotfiles < Formula
  head 'https://github.com/jmonette/dotfiles.git'
  homepage 'http://jmonette.github.io/dotfiles'
  url 'https://github.com/jmonette/dotfiles/archive/master.zip'
  version '0.1'
  sha1 '7ab41220a0d2da4ea7ddd5077a52bf588730ac16'

  depends_on 'coreutils' => :recommended

  def install
    ohai "#{prefix}/zsh"
    inreplace 'zsh/zshrc', '${HOME}/Library/dotfiles', "#{prefix}"
    prefix.install 'zsh'

    ohai "#{prefix}/emacs"
    prefix.install 'emacs'

    ohai "#{prefix}/git"
    prefix.install 'git'

    ohai "#{prefix}/maven"
    prefix.install 'maven'

    ohai "#{prefix}/setup.sh"
    inreplace 'setup.sh', '`brew --prefix`', "#{prefix}"
    prefix.install 'setup.sh'
  end

  def caveats; <<-EOS.undent
    There are two ways for using these dotfiles.
      1) Have symlinks in #{ENV["HOME"]} point to the appropriate files in #{prefix}
      2) Configure zsh, emacs, and git to point to the appropriate directories.

    Preference is (1) however configuration is left up to the user.
    EOS
  end
end
