class Pod2man
  livecheck do
    url "https://archives.eyrie.org/software/perl/"
    regex(/href=.*?podlators-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
