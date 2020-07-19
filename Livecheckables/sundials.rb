class Sundials
  livecheck do
    url "https://computation.llnl.gov/projects/sundials/sundials-software"
    regex(/href=.*?sundials-([0-9.]+)\.t/i)
  end
end
