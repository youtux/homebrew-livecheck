class MitScheme
  livecheck do
    url "https://ftp.gnu.org/gnu/mit-scheme/stable.pkg/?C=M&O=D"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?[ '">]}i)
  end
end
