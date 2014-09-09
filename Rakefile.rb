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
	task '010'.to_sym do
		`git pull`
		`gem build card_war.gemspec && gem install card_war-0.1.0.gem`
		`git add card_war-0.1.0.gem && git commit card_war-0.1.0.gem -m "rake build:010"`
		`git push`
	end
end
