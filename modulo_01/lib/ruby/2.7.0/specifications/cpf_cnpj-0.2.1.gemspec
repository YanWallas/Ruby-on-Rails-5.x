# -*- encoding: utf-8 -*-
# stub: cpf_cnpj 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "cpf_cnpj".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nando Vieira".freeze]
  s.date = "2014-12-07"
  s.description = "Validate, generate and format CPF/CNPJ numbers. Include command-line tools.".freeze
  s.email = ["fnando.vieira@gmail.com".freeze]
  s.executables = ["cnpj".freeze, "cpf".freeze]
  s.files = ["bin/cnpj".freeze, "bin/cpf".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Validate, generate and format CPF/CNPJ numbers. Include command-line tools.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry-meta>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<pry-meta>.freeze, [">= 0"])
  end
end
