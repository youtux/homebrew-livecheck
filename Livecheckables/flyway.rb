class Flyway
  livecheck do
    url :homepage
    regex(/Get Started with Flyway\s+v?(\d+(?:\.\d+)+) </im)
  end
end
