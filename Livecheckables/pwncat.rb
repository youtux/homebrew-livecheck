class Pwncat
  livecheck do
    url "https://pypi.org/project/pwncat"
    regex(/href=.*?pwncat-(\d+(?:\.\d+)+)\.t/i)
  end
end
