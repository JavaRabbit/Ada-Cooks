require 'rails_helper'

# RSpec.describe Recipe, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end


#  this is a test of the recipe route that it will get "recipe#index"
# this test did not work due to Rspec 2.x  changing to 3.x, see
# http://stackoverflow.com/questions/6296235/undefined-method-get-for-rspeccoreexamplegroupnested-10x00000106db51f


# describe "GET #index" do
#   it "renders the :index view" do
#     get :index
#     response.should render_template :index
#   end
# end

describe RecipesController, :type => :controller do
  it "renders the :index view" do
     get :index
    response.should render_template :index
  end

end
