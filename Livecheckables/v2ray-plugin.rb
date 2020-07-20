class V2rayPlugin
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
