require 'formula'

class Tralics < Formula
  homepage 'http://www-sop.inria.fr/marelle/tralics/'
  url 'ftp://ftp-sop.inria.fr/marelle/tralics/src/tralics-src-2.15.1.tar.gz'
  sha1 '0b5a97bb04b40f51ea96c6856538bc3a76e0f9dc'

  def install
    system "cd src; make"
    bin.install "src/tralics"
  end

  test do
  end
end
