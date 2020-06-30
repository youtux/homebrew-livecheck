class Disktype
  livecheck do
    url :head
    regex(/release_(\d+)/)
  end
end
