class LibvirtGlib
  livecheck do
    url "https://libvirt.org/sources/glib/"
    regex(/href=.*?libvirt-glib[._-]v?([\d.]+)\.t/i)
  end
end
