namespace 'build' do
	task '000'.to_sym do
		puts `git pull`
		puts `gem build card_war.gemspec`
		puts `gem install card_war-0.0.0.gem`
		if ENV['PUSH_ALL']
			`git add -A`
			`git commit -m "rake build:000"`
		else
			puts `git add card_war-0.0.0.gem`
			puts `git commit card_war-0.0.0.gem -m "rake build:000"`
		end
		puts `git push` 
	end
end
