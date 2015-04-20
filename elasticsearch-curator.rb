require 'formula'

class ElasticsearchCurator < Formula
  homepage 'https://github.com/elasticsearch/curator/blob/master/README.md'
  url 'https://github.com/elasticsearch/curator/archive/v3.0.3.tar.gz'
  sha1 'a83a13f01aaa77051b272a43664846727179ab2c'

  depends_on :python

  def install
    system "python", "setup.py", "install", "--prefix=#{prefix}", "--single-version-externally-managed", "--record=install.txt"
  end
end
