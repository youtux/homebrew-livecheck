require_relative "formula"

class Formulary
  class << self
    # extended to load the Livecheckable version of a formula
    def load_formula(name, path, contents, namespace)
      mod = Module.new
      const_set(namespace, mod)
      mod.module_eval(contents, path)

      livecheckable_path = LIVECHECKABLES_PATH / path.basename
      if File.exist?(livecheckable_path)
        puts "Loading #{LIVECHECKABLES_PATH / path.basename}" if ARGV.debug?
        mod.module_eval(livecheckable_path.read, livecheckable_path)
      end

      class_name = class_s(name)

      begin
        mod.const_get(class_name)
      rescue NameError => e
        raise FormulaUnavailableError, name, e.backtrace
      end
    end
  end
end
