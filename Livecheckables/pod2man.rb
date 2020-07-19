class Pod2man
  livecheck do
    url "https://archives.eyrie.org/software/perl/"
    regex(/href=.*?podlators-([0-9.]+)\.t/i)
  end
end
