require 'directory'


describe 'Student Directory' do 
let (:student) {{:name =>'name', :cohort => 'cohort'}}

	context 'upon opening' do
		it 'starts with no students' do		
			expect(students).to be_empty
		end
	end
end
	context 'formats form header' do
		it 'prints form by starting with header' do
			expect (self).to receive(:puts).with("Welcome to student directory the TDD version") 
		print_welcome
		end
	end
		it 'prompts input of student name'
			expect(self).to receive(:puts).with('Please enter first name')
			expect(self).to receive(:gets).and_return(student[:name])
			expect(get_name).to eq student[:name] 
		end 
		it 'asks for student\'s cohort'	
		expect(self).to receive(:puts).with('Please enter the student\s cohort')
		expect(self).to receive(:gets).and_return(student[:cohort])	
		expect(get_cohort).to eq student[:cohort]	 

end




