class Disktype
  livecheck do
    url :head
    regex(/release_(\d+)/i)
  end
end
