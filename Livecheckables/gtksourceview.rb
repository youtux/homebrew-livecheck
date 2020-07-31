class Gtksourceview
  livecheck do
    url "https://download.gnome.org/sources/gtksourceview/"
    regex(/gtksourceview[._-]v?(2\.([0-8]\d*?)?[02468](?:\.\d+)*?)\.t/i)
  end
end
