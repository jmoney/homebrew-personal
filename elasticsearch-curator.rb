require 'formula'

class ElasticsearchCurator < Formula
  homepage 'https://github.com/elasticsearch/curator/blob/master/README.md'
  url 'https://github.com/elasticsearch/curator/archive/v2.0.2.tar.gz'
  sha1 '2d66740d4200902f8dc008986961e8f2f520f029'

  depends_on :python

  def install
    system "python", "setup.py", "install", "--prefix=#{prefix}", "--single-version-externally-managed", "--record=install.txt"
  end
end
