class Popt
  # Until rpm.org releases a new version beyond 1.16, it's unclear whether
  # checking the rpm.org archive index (http://ftp.rpm.org/mirror/popt/) would
  # give us the latest version. As of writing this, there's a 1.18 release
  # candidate at: http://ftp.rpm.org/releases/testing/popt-1.18-rc1.tar.gz
  # Checking the Git repo seems like a safe bet until we see how this plays out.
  livecheck do
    url :homepage
    regex(/^(?:popt)?[._-]v?(\d+(?:[._-]\d+)+)(?:-release)?$/i)
  end
end
