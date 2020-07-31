class Elinks
  livecheck do
    url :head
    regex(/^elinks[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
