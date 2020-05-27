class Autogen
  livecheck do
    url "https://ftp.gnu.org/gnu/autogen/"
    regex(%r{href="rel([0-9\.]+)/})
  end
end
