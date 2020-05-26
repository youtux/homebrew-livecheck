class Etl
  livecheck do
    regex(%r{url=.+?/releases/.+?/ETL-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
