class GitCrypt
  livecheck do
    url :homepage
    regex(/href=.*?git-crypt-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
