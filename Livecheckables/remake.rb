class Remake
  livecheck do
    url "https://sourceforge.net/projects/bashdb/files/remake/"
    regex(%r{href="/projects/bashdb/files/remake/([0-9.+\-a-z%B]+)/"})
  end
end
