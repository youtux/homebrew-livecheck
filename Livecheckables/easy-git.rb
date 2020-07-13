class EasyGit
  livecheck do
    url "https://people.gnome.org/~newren/eg/download/"
    regex(%r{href=.*?(\d+(?:\.\d+)+)/eg["' >]}i)
  end
end
