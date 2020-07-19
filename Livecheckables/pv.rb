class Pv
  livecheck do
    url :homepage
    regex(/pv-([0-9.]+)\.t/i)
  end
end
