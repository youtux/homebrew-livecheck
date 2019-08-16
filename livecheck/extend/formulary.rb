require_relative "formula"

module Formulary
  class << self
    # extended to load the Livecheckable version of a formula

     def livecheckable_path(path)
       if (opt1 = Pathname.new(path).realpath.dirname.dirname / "Livecheckables" / path.basename).exist?
         opt1
       elsif (opt2 = Pathname.new(__FILE__).realpath.dirname / "../../Livecheckables" / path.basename ).exist?
         opt2
       end
     end

    def load_formula(name, path, contents, namespace)
      mod = Module.new
      const_set(namespace, mod)
      mod.module_eval(contents, path)

      livecheckable_path = livecheckable_path(path)
      if File.exist?(livecheckable_path)
        puts "Loading #{livecheckable_path}" if ARGV.debug?
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
