class Black
  livecheck do
    url :stable
    regex(/black (\d+\.\d+(b\d+)?)/i)
  end
end
