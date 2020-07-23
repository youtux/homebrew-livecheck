class Zsh
  livecheck do
    url "https://www.zsh.org/pub/"
    regex(/zsh-v?(\d+(?:\.\d+)+)\./i)
  end
end
