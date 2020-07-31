class Codemod
  livecheck do
    url :stable
    regex(/href=.*?codemod[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
