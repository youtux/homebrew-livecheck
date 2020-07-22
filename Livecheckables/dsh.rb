class Dsh
  livecheck do
    url "https://www.netfort.gr.jp/~dancer/software/downloads/"
    regex(/href=.*?dsh-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
