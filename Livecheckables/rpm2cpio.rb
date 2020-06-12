class Rpm2cpio
  livecheck do
    url "https://svnweb.freebsd.org/ports/head/archivers/rpm2cpio/Makefile?view=markup"
    regex(%r{PORTVERSION=\s*v?(\d+(?:\.\d+)+)</td>}i)
  end
end
