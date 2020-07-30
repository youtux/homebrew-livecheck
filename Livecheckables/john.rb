class John
  livecheck do
    url :homepage
    regex(/href=.*?john[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
