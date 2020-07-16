class Etl
  livecheck do
    url :stable
    regex(%r{url=.*?/releases/.+?/ETL-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
