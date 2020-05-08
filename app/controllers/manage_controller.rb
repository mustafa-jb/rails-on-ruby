class ManageController < ApplicationController
  def index
    @liste=["mustafa,jabbar,salman,yaman"]
    @id=params['id']
    @name=params['name']
    # render('home.html.erb')
  end
  def home
    # redirect_to(:controller=>"manage",:action=>"index" ,:id=>"10",:name=>"mustafa")
    # render('home.html.erb')
  end
end
