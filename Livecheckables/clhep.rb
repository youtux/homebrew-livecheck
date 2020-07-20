class Clhep
  livecheck do
    url :homepage
    regex(%r{atest release.*?<b>([0-9.]+)</b>}im)
  end
end
