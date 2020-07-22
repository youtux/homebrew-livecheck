class Codemod
  livecheck do
    url :stable
    regex(/href=.*?codemod-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
