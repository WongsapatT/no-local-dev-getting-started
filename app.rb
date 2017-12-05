# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'


get "/" do
  erb :home
end


class Contact < ActiveRecord::Base
 # self.table_name = 'salesforce.contact'
  self.table_name = 'salesforce.Sales_Visit__C'
end


#class Salesvisit < ActiveRecord::Base
#  self.table_name = 'salesforce.Sales_Visit__C'
#end

get "/salesvisits" do
  @salesVisits = SalesVisit.all
  erb :salesvisit
end


get "/contacts" do
  #@contacts = Contact.all
  @salesVisits = Contact.all
  erb :index
end

get "/create" do
  dashboard_url = 'https://dashboard.heroku.com/'
  match = /(.*?)\.herokuapp\.com/.match(request.host)
  dashboard_url << "apps/#{match[1]}/resources" if match && match[1]
  redirect to(dashboard_url)
end
