class Dsh
  livecheck do
    url "https://www.netfort.gr.jp/~dancer/software/downloads/"
    regex(/href=.*?dsh-([0-9.]+)\.t/i)
  end
end
