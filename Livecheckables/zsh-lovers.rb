class ZshLovers
  livecheck do
    url "https://deb.grml.org/pool/main/z/zsh-lovers/"
    regex(/href=.*?zsh-lovers[._-]v?(\d+(?:\.\d+)+)[._-]all/i)
  end
end
