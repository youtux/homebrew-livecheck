class Libvirt
  livecheck do
    url "https://libvirt.org/sources/"
    regex(/href="libvirt-([\d.]+)\.t/)
  end
end
