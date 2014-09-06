namespace 'build' do
	task '000'.to_sym do
		puts `git pull`
		puts `gem build war.gemspec`
		puts `gem uninstall war -v 0.0.0`
		puts `gem install war-0.0.0.gem`
		if ENV['PUSH_ALL']
			`git add -A`
			`git commit -m "rake build:000"`
		else
			puts `git add war-0.0.0.gem`
			puts `git commit war-0.0.0.gem -m "rake build:000"`
		end
		puts `git push` 
	end
end
