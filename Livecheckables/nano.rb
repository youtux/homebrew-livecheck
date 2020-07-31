class Nano
  livecheck do
    url "https://www.nano-editor.org/download.php"
    regex(/nano[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
