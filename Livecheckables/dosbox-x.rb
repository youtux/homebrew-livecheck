class DosboxX
  livecheck do
    url :head
    regex(/^dosbox-x[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
