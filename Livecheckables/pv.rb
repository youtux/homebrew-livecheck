class Pv
  livecheck do
    url "https://www.ivarch.com/programs/pv.shtml"
    regex(/pv-([0-9.]+)\.t/)
  end
end
