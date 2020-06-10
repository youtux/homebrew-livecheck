class Wwwoffle
  livecheck do
    url :homepage
    regex(/The absolute latest version is version ([a-z0-9.]+)\./)
  end
end
