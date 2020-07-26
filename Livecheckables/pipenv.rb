class Pipenv
  livecheck do
    url :stable
    regex(%r{/pipenv-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
