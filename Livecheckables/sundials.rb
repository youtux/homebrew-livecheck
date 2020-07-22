class Sundials
  livecheck do
    url "https://computation.llnl.gov/projects/sundials/sundials-software"
    regex(/href=.*?sundials-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
