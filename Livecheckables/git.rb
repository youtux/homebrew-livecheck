class Git
  livecheck do
    url "https://www.kernel.org/pub/software/scm/git/"
    regex(/git[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
