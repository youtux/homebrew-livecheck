class Autogen
  livecheck do
    url :stable
    regex(%r{href=.*?rel(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
