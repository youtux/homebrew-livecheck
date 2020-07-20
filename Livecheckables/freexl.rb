class Freexl
  livecheck do
    url :homepage
    regex(%r{current version is <b>([0-9.]+)</b>}i)
  end
end
