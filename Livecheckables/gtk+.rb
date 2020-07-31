class Gtkx
  livecheck do
    url "https://download.gnome.org/sources/gtk+/"
    regex(/gtk\+[._-]v?(2\.([0-8]\d*?)?[02468](?:\.\d+)*?)\.t/i)
  end
end
