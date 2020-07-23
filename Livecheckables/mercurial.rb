class Mercurial
  livecheck do
    url "https://www.mercurial-scm.org/release/"
    regex(/href=.*?mercurial-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
