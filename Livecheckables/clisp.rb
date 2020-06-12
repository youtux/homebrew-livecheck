class Clisp
  livecheck do
    url "https://ftp.gnu.org/gnu/clisp/release/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/}i)
  end
end
