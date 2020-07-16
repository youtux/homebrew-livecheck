class Codemod
  livecheck do
    url :stable
    regex(/href=.*?codemod-([0-9.]+)\.t/)
  end
end
