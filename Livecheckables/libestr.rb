class Libestr
  livecheck do
    url "https://libestr.adiscon.com/download/"
    regex(/href=.*?libestr-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
