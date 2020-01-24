require 'rails_helper'

describe "Dogs API", type: :request do
  it "gets a list of Dogs" do
    # Create a new dog in the Test Database (not the same one as development)
    Dog.create(name: 'Felix', age: 2, size: 'medium', enjoys: 'Walks in the park')
    get '/dogs'
    json = JSON.parse(response.body)
    expect(response).to have_http_status(:ok)
    expect(json.length).to eq 1
  end

  it "creates a dog" do
     dog_params = {
       dog: {
         name: 'Felix',
         age: 3,
         size: 'medium',
         enjoys: 'Long naps on the couch, and a warm fire.'
       }
     }

     post '/dogs', params: dog_params
     expect(response).to have_http_status(:ok)
     new_dog = Dog.first
     expect(new_dog.name).to eq('Felix')
   end

   it "removes dog from table" do
       dog = Dog.create(name: 'Felix', age: 2, size: 'medium', enjoys: 'Walks in the park')
       expect { delete "/dogs/#{dog.id}" }.to change { Dog.count }.by(-1)
   end

   it "updates a dog" do
          dog = Dog.create(name: 'Felix', age: 2, size: 'medium', enjoys: 'Walks in the park')
       dog_params = {
         dog: {
           name: 'Felix',
           age: 3,
           size: 'medium',
           enjoys: 'Long naps on the couch, and a warm fire.'
         }
       }

       put "/dogs/#{dog.id}", params: dog_params
       dog.reload
       expect(dog.age).to eq 3
   end

   it "shows a dog" do
       dog = Dog.create(name: 'Felix', age: 2, size: 'medium', enjoys: 'Walks in the park')
       get "/dogs/#{dog.id}"
   end

   it "a new dog is added" do
       dog = Dog.new(name: 'Felix', age: 2, size: 'medium', enjoys: 'Walks in the park')
       get "/dogs/#{dog.id}"
   end
end

RSpec.describe Dog, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
