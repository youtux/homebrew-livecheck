class Grok
  livecheck do
    url :head
    regex(/^v?(\d+\.\d{,3}(\.\d+)+)$/i)
  end
end
