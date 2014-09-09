Gem::Specification.new do |war|
    war.name = "card_war"
    war.homepage = "https://github.com/zrp200/card_war"
    war.description = "Allows you to play the card game war. No user interaction needed."
    war.version = "0.1.0"
    war.author = "Zachary Perlmutter"
    war.email = %q(zrp200@gmail.com)
    war.add_runtime_dependency "card_deck", "~> 0.1", ">= 0.1.0"
    war.summary = "The card game of war"
    war.files = %w(lib/card_war.rb)
    war.extra_rdoc_files = %w(README.md)
    war.license = "MIT"
    war.executables << 'card_war'
end
