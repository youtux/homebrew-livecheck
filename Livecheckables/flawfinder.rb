class Flawfinder
  livecheck do
    url "https://www.dwheeler.com/flawfinder/"
    regex(/href="flawfinder-([0-9\.]+)\.t/)
  end
end
