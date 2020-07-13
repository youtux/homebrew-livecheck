class Ant
  livecheck do
    url "https://downloads.apache.org/ant/binaries/"
    regex(/href=.*?apache-ant[._-]v?(\d+(?:\.\d+)+)(?:-bin)?\.t/i)
  end
end
