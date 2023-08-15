require 'formula'

class JmoneyDotfiles < Formula
  homepage 'https://www.github.com/jmoney/dotfiles'
  url 'https://github.com/jmoney/dotfiles/archive/v1.2.5.tar.gz'
  sha256 'c386de3963a6db132d94b5edf80b873bce0282dd18a4756a8492e9e03bf88711'

  head 'https://github.com/jmoney/dotfiles.git'

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
