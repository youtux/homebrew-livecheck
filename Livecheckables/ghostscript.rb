class Ghostscript
  livecheck do
    url :head
    regex(/^ghostscript-(\d+(?:\.\d+)+)$/i)
  end
end
