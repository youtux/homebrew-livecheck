class Jenkins
  livecheck do
    url :head
    regex(/^jenkins-(\d+(?:\.\d+)+)$/i)
  end
end
