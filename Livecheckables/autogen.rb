class Autogen
  livecheck do
    url "https://ftp.gnu.org/gnu/autogen/"
    regex(%r{href=.*?rel(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
