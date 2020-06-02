class Linkerd
  livecheck do
    url "https://github.com/linkerd/linkerd2/releases"
    regex(%r{href="/linkerd/linkerd2/tree/stable-([0-9.]+)"})
  end
end
