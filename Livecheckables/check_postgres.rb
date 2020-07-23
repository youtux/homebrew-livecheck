class CheckPostgres
  livecheck do
    url "https://bucardo.org/check_postgres/"
    regex(/latest version.*?v?(\d+(?:\.\d+)+)/i)
  end
end
