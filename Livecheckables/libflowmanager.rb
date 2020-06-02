class Libflowmanager
  livecheck do
    url "https://research.wand.net.nz/software/libflowmanager.php"
    regex(%r{latest version is.*?href=".*?/libflowmanager-([0-9.]+)\.t}m)
  end
end
