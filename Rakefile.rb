namespace 'build' do
	task '000'.to_sym do
		puts `gem build war.gemspec`
		puts `git add war-0.0.0.gem`
		puts `git commit war-0.0.0.gem -m "rake build:000"`
		puts `git push`
	end
end