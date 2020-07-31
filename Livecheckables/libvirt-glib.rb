class LibvirtGlib
  livecheck do
    url "https://libvirt.org/sources/glib/"
    regex(/libvirt-glib[._-]v?([\d.]+)\.t/i)
  end
end
