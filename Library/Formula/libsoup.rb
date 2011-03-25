require 'formula'

class Libsoup < Formula
  url 'http://ftp.acc.umu.se/pub/gnome/sources/libsoup/2.33/libsoup-2.33.90.tar.bz2'
  homepage 'http://www.gnome.org/'
  md5 '967b0934866be9668a15b64e4f5ff23d'

  depends_on 'pkg-config' => :build
  depends_on 'libxml2'
  depends_on 'gnutls'
  depends_on 'sqlite'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--without-gnome", "--disable-tls-check"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
