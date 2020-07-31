class Ghostscript
  livecheck do
    url :head
    regex(/^ghostscript[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
