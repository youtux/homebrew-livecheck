class Ucommon
  livecheck do
    url :stable
    regex(/href=.*?ucommon[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
