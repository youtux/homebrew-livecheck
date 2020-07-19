class Groonga
  livecheck do
    url :homepage
    regex(%r{>([0-9.]+)</a> is the latest release}i)
  end
end
