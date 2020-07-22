class AircrackNg
  livecheck do
    url :homepage
    regex(/href=.*?aircrack-ng-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
