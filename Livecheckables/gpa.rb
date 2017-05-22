class Gpa
  livecheck :url => "https://gnupg.org/ftp/gcrypt/gpa/",
            :regex => /href="gpa-(\d+\.\d+(\.\d+)?)/
end
