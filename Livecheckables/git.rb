class Git
  livecheck do
    url "https://www.kernel.org/pub/software/scm/git/"
    regex(/git-(\d+(?:\.\d+)+)\.t/)
  end
end
