class GitCrypt
  livecheck do
    url "https://github.com/AGWA/git-crypt.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
