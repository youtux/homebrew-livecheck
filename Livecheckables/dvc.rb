class Dvc
  livecheck do
    url "https://github.com/iterative/dvc.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
