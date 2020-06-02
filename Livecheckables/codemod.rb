class Codemod
  livecheck do
    url "https://pypi.org/simple/codemod/"
    regex(%r{href=".*?/codemod-([0-9.]+)\.t})
  end
end
