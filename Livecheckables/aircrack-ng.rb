class AircrackNg
  livecheck do
    url :homepage
    regex(/href=.*?aircrack-ng-([0-9.]+)\.t/)
  end
end
