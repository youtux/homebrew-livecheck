class Mawk
  livecheck do
    url "https://invisible-mirror.net/archives/mawk/?C=M&O=D"
    regex(/href=.*?mawk-(\d+(?:\.\d+)+(?:-\d+)?)\.t/i)
  end
end
