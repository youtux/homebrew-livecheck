class Gtkx
  livecheck do
    url :stable
    regex(/gtk\+[._-]v?(2\.([0-8]\d*?)?[02468](?:\.\d+)*?)\.t/i)
  end
end
