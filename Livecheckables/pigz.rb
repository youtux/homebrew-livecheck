class Pigz
  livecheck do
    url "https://zlib.net/pigz/"
    regex(/href="pigz-([0-9.]+)\.t/)
  end
end
