class Pipenv
  livecheck do
    url :stable
    regex(%r{/pipenv-([0-9,.]+)\.t}i)
  end
end
