class NagiosPlugins
  livecheck do
    url "https://nagios-plugins.org/download/"
    regex(/href=.*?nagios-plugins[._-]v?([\d.]+)\.t/i)
  end
end
