class GitlabRunner
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
