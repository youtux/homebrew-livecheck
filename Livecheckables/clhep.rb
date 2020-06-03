class Clhep
  livecheck do
    url "https://proj-clhep.web.cern.ch/proj-clhep/"
    regex(%r{atest release.*?<b>([0-9.]+)</b>}m)
  end
end
