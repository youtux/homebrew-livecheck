class Libvirt
  livecheck :url   => "https://libvirt.org/sources/",
            :regex => /href="libvirt-([\d.]+)\.tar/
end
