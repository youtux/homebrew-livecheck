class Superlu
  livecheck do
    url :homepage
    regex(/href=.*?superlu_v?(\d+(?:\.\d+)+)\.t/i)
  end
end
