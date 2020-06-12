class MariadbConnectorC
  livecheck do
    url "https://github.com/mariadb-corporation/mariadb-connector-c.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
