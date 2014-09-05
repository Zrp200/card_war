Gem::Specification.new do |war|
    war.name = "war"
    war.version = "0.0.0"
    war.author = "Zachary Perlmutter"
    war.email = %q(zrp200@gmail.com)
    war.add_runtime_dependency "card_deck", "~> 0.0.0.1"
    war.summary = "The card game of war"
    war.files = %w(lib/war.rb)
    war.extra_rdoc_files = %w(README.md)
    war.license = "MIT"
    war.executables << 'war'
end
