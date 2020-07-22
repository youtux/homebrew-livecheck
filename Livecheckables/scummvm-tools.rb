class ScummvmTools
  livecheck do
    url "https://www.scummvm.org/downloads/"
    regex(/href=.*?scummvm-tools-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
