class Pipenv
  livecheck do
    url :stable
    regex(/href=.*?pipenv[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
