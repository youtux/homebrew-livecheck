class KubernetesCli
  livecheck do
    url :head
    regex(/^v([\d.]+)$/)
  end
end
