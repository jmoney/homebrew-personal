require 'formula'

class Jmoney8080Dotfiles < Formula
  homepage 'http://jmoney8080.github.io/dotfiles'
  url 'https://github.com/jmoney8080/dotfiles/archive/v1.0.3.tar.gz'
  sha256 'f5e1d7c931a37aaff3d0785ca9c874cd1c9bd8a99e07d61b422a65a0d7918ef6'

  head 'https://github.com/jmoney8080/dotfiles.git'

  depends_on 'coreutils' => :recommended
  depends_on 'zsh'
  depends_on 'maven'
  depends_on 'emacs'

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

    ohai "#{prefix}/ssh"
    prefix.install 'ssh'

    ohai "#{prefix}/setup.sh"
    inreplace 'setup.sh', '${HOME}/Library/dotfiles', "#{prefix}"
    prefix.install 'setup.sh'
  end

  def caveats; <<-EOS
    There are two ways for using these dotfiles.
      1) Have symlinks in #{ENV["HOME"]} point to the appropriate files in #{prefix}
      2) Configure zsh, emacs, and git to point to the appropriate directories.

    Preference is (1) however configuration is left up to the user.
    EOS
  end
end
