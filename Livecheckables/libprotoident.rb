class Libprotoident
  livecheck do
    url "https://research.wand.net.nz/software/libprotoident.php"
    regex(%r{latest version is.*?href=".*?/libprotoident-([0-9\.]+)\.t}m)
  end
end
