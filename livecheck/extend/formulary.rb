require_relative "formula"

class Formulary
  class << self
    # extended to load the Livecheckable version of a formula
    alias_method :orig_factory, :factory
    def factory(ref, spec = :stable)
      formula = orig_factory(ref, spec)
      livecheckable_path = LIVECHECKABLES_PATH / formula.path.basename

      if File.exist?(livecheckable_path)
        puts "Loading #{LIVECHECKABLES_PATH/ref}" if ARGV.debug?
        Formulae.module_eval(livecheckable_path.read, livecheckable_path)
      else
        opoo "#{Tty.blue}#{ref}#{Tty.reset} does not implement livecheck" if ARGV.verbose?
      end
      formula
    end
  end
end