class DosboxX
  livecheck do
    url :head
    regex(/^dosbox-x-v?(\d+(?:\.\d+)+)$/)
  end
end
