class Backupninja
  livecheck do
    url "https://sourcearchive.raspbian.org/main/b/backupninja/"
    regex(/href=.*?backupninja[._-]v?(\d+(?:\.\d+)+)\.orig\.t/i)
  end
end
