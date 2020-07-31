class Emacs
  livecheck do
    url :head
    regex(/emacs[._-]v?(\d+\.\d+)$/i)
  end
end
