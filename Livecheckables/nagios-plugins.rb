class NagiosPlugins
  livecheck do
    url "https://nagios-plugins.org/download/"
    regex(/href=.*?nagios-plugins-([\d.]+)\.t/i)
  end
end
