class KubernetesCli
  livecheck do
    url :head
    regex(/^v([\d.]+)$/i)
  end
end
