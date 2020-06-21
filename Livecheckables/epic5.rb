class Epic5
  livecheck do
    url :head
    regex(/^epic5-(\d+(?:\.\d+)+)$/i)
  end
end
