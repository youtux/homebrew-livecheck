class Paperkey
  livecheck do
    url :homepage
    regex(/paperkey-([0-9.]+)\.t/i)
  end
end
