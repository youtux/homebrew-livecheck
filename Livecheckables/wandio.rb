class Wandio
  livecheck do
    url "https://research.wand.net.nz/software/libwandio.php"
    regex(%r{href=".*?/wandio-([0-9.]+)\.t})
  end
end
