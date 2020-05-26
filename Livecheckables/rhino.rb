class Rhino
  livecheck do
    url "https://github.com/mozilla/rhino/releases"
    regex(/Latest.*?Release">Rhino ([0-9\.]+)</m)
  end
end
