class Bashdb
  livecheck do
    url "https://sourceforge.net/projects/bashdb/files/bashdb/"
    regex(%r{href="/projects/bashdb/files/bashdb/([0-9.\-]+)/"})
  end
end
