class Grok
  livecheck do
    url :head
    regex(/^v?(\d+\.\d{,3}(\.\d+)+)$/)
  end
end
