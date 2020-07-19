class Elinks
  livecheck do
    url :head
    regex(/^elinks-(\d+(?:\.\d+)+)$/i)
  end
end
