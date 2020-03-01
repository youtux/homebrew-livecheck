class Zabbix
  livecheck :url   => "https://www.zabbix.com/download_sources",
            :regex => %r{href="https://sourceforge\.net/projects/zabbix/files/ZABBIX%20Latest%20Stable/([0-9,\.]+)/zabbix-.*\.tar\.gz/download}
end
