class Crystal
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
