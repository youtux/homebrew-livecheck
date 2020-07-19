class Flyway
  livecheck do
    url :homepage
    regex(/Get Started with Flyway\s+([0-9.]+) </im)
  end
end
