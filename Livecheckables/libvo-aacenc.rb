class LibvoAacenc
  livecheck do
    url "https://sourceforge.net/projects/opencore-amr/rss"
    regex(%r{url=.*?/vo-aacenc-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
