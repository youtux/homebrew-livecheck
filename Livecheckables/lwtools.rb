class Lwtools
  livecheck do
    url "http://lwtools.projects.l-w.ca"
    regex(%r{href=".*?/lwtools-([0-9.]+)\.t})
  end
end
