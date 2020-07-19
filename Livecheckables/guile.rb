class Guile
  livecheck do
    url "https://ftp.gnu.org/gnu/guile/"
    regex(/href=.*?guile-([\d.]+\.[\d.]+\.[\d.]+)\.t/i)
  end
end
