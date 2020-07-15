class Mercurial
  livecheck do
    url "https://www.mercurial-scm.org/release/"
    regex(/href=.*?mercurial-([0-9.]+)\.t/)
  end
end
