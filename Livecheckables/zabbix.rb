class Zabbix
  # As of writing, the Zabbix SourceForge repository is missing the latest
  # version (4.4.8), so we have to check for the newest version on the Zabbix
  # CDN index page instead. Unfortunately, the versions are separated into
  # folders for a given major/minor version, so this will quietly stop being
  # a proper check sometime in the future and need to be updated.
  livecheck :url   => "https://cdn.zabbix.com/zabbix/sources/stable/4.4/",
            :regex => /href=.+?zabbix-(\d+(?:\.\d+)+)\.t/
end
