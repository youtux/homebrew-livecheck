class Nano
  livecheck do
    url "https://www.nano-editor.org/download.php"
    regex(/nano-([0-9.]+)\.t/i)
  end
end
