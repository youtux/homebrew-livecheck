class Flyway
  livecheck do
    url "https://flywaydb.org/"
    regex(/Get Started with Flyway\s+([0-9\.]+) </m)
  end
end
