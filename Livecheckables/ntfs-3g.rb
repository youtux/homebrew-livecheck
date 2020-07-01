class Ntfs3g
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
