class Pipenv
  livecheck do
    url :stable
    regex(%r{/pipenv[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
