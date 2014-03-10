require 'formula'

class Yaz < Formula
  homepage 'http://www.indexdata.com/yaz'
  url 'http://ftp.indexdata.dk/pub/yaz/yaz-5.0.18.tar.gz'
  sha1 '2e273f38b90597298ecc9b254a92367158582aa6'

  depends_on 'pkg-config' => :build
  depends_on 'gnutls' => :optional
  depends_on 'icu4c'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--with-xml2"
                          "--with-icu=#{prefix}/opt/icu4c/lib"
    system "make install"
  end
end
