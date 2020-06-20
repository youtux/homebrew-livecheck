class Rpm2cpio
  livecheck do
    url "https://svnweb.freebsd.org/ports/head/archivers/rpm2cpio/Makefile?view=co"
    regex(/^PORTVERSION=\s*?v?(\d+(?:\.\d+)+)$/i)
  end
end
