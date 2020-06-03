class Sundials
  livecheck do
    url "https://computation.llnl.gov/projects/sundials/sundials-software"
    regex(%r{href=".*?/sundials-([0-9.]+)\.t})
  end
end
