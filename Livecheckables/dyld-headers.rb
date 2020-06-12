class DyldHeaders
  livecheck do
    url "https://opensource.apple.com/tarballs/dyld/"
    regex(/href=.*?dyld-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
