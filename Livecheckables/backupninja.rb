class Backupninja
  livecheck do
    url "https://sourcearchive.raspbian.org/main/b/backupninja/"
    regex(/href=.*?backupninja.v?(\d+(?:\.\d+)+)\.orig\.t/i)
  end
end
