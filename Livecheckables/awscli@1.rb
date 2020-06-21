class AwscliAT1
  livecheck do
    url :stable
    regex(/^v?(1(?:\.\d+)+)$/i)
  end
end
