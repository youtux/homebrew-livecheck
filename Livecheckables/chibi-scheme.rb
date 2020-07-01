class ChibiScheme
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
