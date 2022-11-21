require 'rails_helper'
RSpec.describe Project, type: :model do
  context "validations tests" do #I believe that this line is explaining the general scope of what is being tested
    it "ensures the description is present" do #This is explaining that the test is for ensuring that the project has a title/description
      project = Project.new(description: "Content of the description") #This line is creating a new project object with no value for the title
      expect(project.valid?).to eq(false) #This line is saying that the test expects a call to the project's valid method to return false
    end
    
    it "should be able to save project" do  #This is explaining that the test is for saving the project
      project = Project.new(title: "Title", description: "Some description content goes here") #This line is creating a new project object with values for title and description
      expect(project.save).to eq(true) #This line is saying that the test expects a call to the project's save method to return true
4
    end
  end
  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
         before(:each) do
            Project.create(params)
            Project.create(params)
            Project.create(params)
         end

         it "should return all projects" do
            expect(Project.count).to eq(3)
         end
  end
end