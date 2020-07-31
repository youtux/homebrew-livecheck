class AircrackNg
  livecheck do
    url :homepage
    regex(/href=.*?aircrack-ng[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
