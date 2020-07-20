class LibvirtGlib
  livecheck do
    url "https://libvirt.org/sources/glib/"
    regex(/libvirt-glib-([\d.]+)\.t/i)
  end
end
