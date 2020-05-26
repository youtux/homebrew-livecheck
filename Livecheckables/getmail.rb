class Getmail
  livecheck do
    url "http://pyropus.ca/software/getmail/"
    regex(/getmail-(\d+(?:\.\d+)*)\.t/)
  end
end
