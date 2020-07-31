class Jenkins
  livecheck do
    url :head
    regex(/^jenkins[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
