class Telegraf
  livecheck do
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
