class Disktype
  livecheck do
    url :head
    regex(/release[._-]v?(\d+)/i)
  end
end
