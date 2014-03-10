require 'formula'

class Yaz < Formula
  homepage 'http://www.indexdata.com/yaz'
  url 'http://ftp.indexdata.dk/pub/yaz/yaz-5.0.19.tar.gz'
  sha1 '4f267920301e5af5ff2b95243098b75e2da0c9bc'

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
