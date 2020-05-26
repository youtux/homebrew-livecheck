class CheckPostgres
  livecheck do
    url "https://bucardo.org/check_postgres/"
    regex(/latest version.*?([0-9\.]+)/)
  end
end
