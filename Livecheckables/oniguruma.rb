class Oniguruma
  livecheck do
    url "https://github.com/kkos/oniguruma.git"
    regex(/^v?(\d+(?:\.\d+)+(?:.(?:mark|rev)\d+)?)$/i)
  end
end
