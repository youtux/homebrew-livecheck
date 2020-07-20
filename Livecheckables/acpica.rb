class Acpica
  livecheck do
    url "https://acpica.org/downloads"
    regex(/current release of ACPICA is version <strong>([0-9.]+) </i)
  end
end
