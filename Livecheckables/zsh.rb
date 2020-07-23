class Zsh
  livecheck do
    url "https://www.zsh.org/pub/"
    regex(/href=.*?zsh[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
