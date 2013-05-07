require 'formula'

class JmonetteDotfiles < Formula
  head 'https://github.com/jmonette/dotfiles.git'
  homepage 'http://jmonette.github.io/dotfiles'
  url 'https://github.com/jmonette/dotfiles/archive/master.zip'
  version '0.1'
  sha1 'cf491de9d9fe30114a0475d07cbcf88288351270'

  def install
    ohai "#{prefix}/maven"
    prefix.install 'maven'

    ohai "#{prefix}/git"
    prefix.install 'git'

    ohai "#{prefix}/emacs"
    prefix.install 'emacs'

    ohai "#{prefix}/ssh"
    prefix.install 'ssh'

    ohai "#{prefix}/zsh"
    inreplace 'zsh/zshrc-mac', '${HOME}/Library/dotfiles', "#{prefix}"
    prefix.install 'zsh'

    if File.exists?("#{ENV["HOME"]}/.zshrc") || File.symlink?("#{ENV["HOME"]}/.zshrc")
      opoo ("#{ENV["HOME"]}/.zshrc already exits!!!"
    end
  end
end
