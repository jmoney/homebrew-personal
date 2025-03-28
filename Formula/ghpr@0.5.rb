# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GhprAT05 < Formula
  desc "Creates a pull request on GitHub setting the PR title to JIRA issue title"
  homepage "https://jmoney.dev/create-pr-from-jira"
  version "0.5"
  license "Apache 2.0"

  on_macos do
    on_intel do
      url "https://github.com/jmoney/create-pr-from-jira/releases/download/0.5/ghpr_0.5_darwin_amd64.tar.gz"
      sha256 "684a6f5a855d937534cadd918084cd90ee52a903ca5b1d43f864c2622aaaa0c6"

      def install
        bin.install "ghpr"
      end
    end
    on_arm do
      url "https://github.com/jmoney/create-pr-from-jira/releases/download/0.5/ghpr_0.5_darwin_arm64.tar.gz"
      sha256 "972c54c79f7d238d2a5f9c7fc711f3a8d9b919f25b3b357534941df31baadf13"

      def install
        bin.install "ghpr"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jmoney/create-pr-from-jira/releases/download/0.5/ghpr_0.5_linux_amd64.tar.gz"
        sha256 "4905c65a8963e10443280f470b133a6a044e327565c08e5f5f241e5bb9a52058"

        def install
          bin.install "ghpr"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jmoney/create-pr-from-jira/releases/download/0.5/ghpr_0.5_linux_arm64.tar.gz"
        sha256 "a79ea1d7bacaa5df26d1cd6460efe26cab3c2863701c731b5639ae55e08b58f2"

        def install
          bin.install "ghpr"
        end
      end
    end
  end

  test do
    system "#{bin}/ghpr -h"
  end
end
