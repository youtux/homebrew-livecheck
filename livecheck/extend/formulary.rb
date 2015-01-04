class Formulary
  def self.load_livecheckable ref
    begin
      puts "Loading #{LIVECHECKABLES_PATH/ref}" if ARGV.debug?
      require LIVECHECKABLES_PATH / ref
    rescue LoadError
      opoo "#{Tty.blue}#{ref}#{Tty.reset} does not implement livecheck" if ARGV.verbose?
    end
  end

  def self.factory(ref, spec=:stable)
    r = loader_for(ref).get_formula(spec)
    load_livecheckable(r.name)
    r
  end
end