class Ghostscript
  livecheck do
    url :head
    regex(/^ghostscript-(\d+(?:\.\d+)+)$/)
  end
end
