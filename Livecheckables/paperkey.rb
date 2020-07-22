class Paperkey
  livecheck do
    url :homepage
    regex(/paperkey-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
