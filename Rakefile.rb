namespace 'build' do
	def process(version, tasknum)
		puts `git pull`
		puts `gem build card_war.gemspec`
		puts `gem install card_war-#{version}.gem`
		puts `git add card_war-#{version}.gem`
		puts `git commit card_war-#{version}.gem -m "rake build:#{tasknum}"`
		puts `git push` 
	end
	task '010'.to_sym do
		`git pull`
		`gem build card_war.gemspec && gem install card_war-0.1.0.gem`
		`git add card_war-0.1.0.gem && git commit card_war-0.1.0.gem -m "rake build:010"`
		`git push`
	end
	task '100'.to_sym do
		process "1.0.0", "100"
	end
end
