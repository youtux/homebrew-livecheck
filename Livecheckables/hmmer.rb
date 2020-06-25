class Hmmer
  livecheck do
    url "http://eddylab.org/software/hmmer/"
    regex(/href=.*?hmmer-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
