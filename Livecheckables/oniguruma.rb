class Oniguruma
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+(?:.(?:mark|rev)\d+)?)$/i)
  end
end
