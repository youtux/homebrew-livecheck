class Beast
  livecheck do
    url :head
    regex(/^(?:beast[._-]release[._-])?v?(\d+(?:[._]\d+)+)$/i)
  end
end
