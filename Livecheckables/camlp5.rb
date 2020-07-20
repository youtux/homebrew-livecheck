class Camlp5
  livecheck do
    url :homepage
    regex(%r{The current distributed version is <b>([0-9.]+)</b>}i)
  end
end
