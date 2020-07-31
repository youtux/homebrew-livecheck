class Guile
  livecheck do
    url "https://ftp.gnu.org/gnu/guile/"
    regex(/href=.*?guile[._-]v?([\d.]+\.[\d.]+\.[\d.]+)\.t/i)
  end
end
