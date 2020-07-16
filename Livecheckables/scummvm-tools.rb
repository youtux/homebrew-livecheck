class ScummvmTools
  livecheck do
    url "https://www.scummvm.org/downloads/"
    regex(/href=.*?scummvm-tools-([0-9.]+)\.t/)
  end
end
