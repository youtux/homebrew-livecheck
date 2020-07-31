class Superlu
  livecheck do
    url :homepage
    regex(/href=.*?superlu[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
