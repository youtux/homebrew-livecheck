class Wwwoffle
  livecheck do
    url "https://www.gedanken.org.uk/software/wwwoffle"
    regex(/The absolute latest version is version ([a-z0-9\.]+)\./)
  end
end
