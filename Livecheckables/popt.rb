class Popt
  # The stable archive is found at http://ftp.rpm.org/popt/releases/popt-1.x/
  # but it's unclear whether this would be a reliable check in the long term.
  # We're simply checking the Git repository tags for the moment, as we
  # shouldn't encounter problems with this method.
  livecheck do
    url :homepage
    regex(/^(?:popt[._-])?v?(\d+(?:[._-]\d+)+)(?:-release)?$/i)
  end
end
