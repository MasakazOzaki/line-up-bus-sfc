require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/count.rb'
require 'date'

get '/' do
  get_count()
  erb :index
end

get '/plus1' do
  get_count()
  count(StarCount)
  redirect '/'
end

get '/plus2' do
  count(SkyCount)
  redirect '/'
end

get '/plus3' do
  count(SeatCount)
  redirect '/'
end

get '/plus4' do
  count(DeskCount)
  redirect '/'
end

get '/plus5' do
  count(TableCount)
  redirect '/'
end

get '/shonandai' do
  get_scount()
  erb :shonandai
end


get '/shonandai/plus1' do
  get_count()
  count(ShonandaiStarCount)
  redirect '/shonandai'
end

get '/shonandai/plus2' do
  get_count()
  count(ShonandaiSkyCount)
  redirect '/shonandai'
end

get '/shonandai/plus3' do
  get_count()
  count(ShonandaiSeatCount)
  redirect '/shonandai'
end

get '/shonandai/plus4' do
  get_count
  count(ShonandaiDeskCount)
  redirect '/shonandai'
end

get '/shonandai/plus5' do
  get_count()
  count(ShonandaiTableCount)
  redirect '/shonandai'
end

def count(c)
  c.create()
end

def whatbus(c1,c2,c3,c4,c5)
  line_length = [c1, c2, c3, c4, c5]
  return line_length.index(line_length.max)
end

def get_count()
  date = (DateTime.now())
  date = date - Rational(10, 24*60)
  @count1 = StarCount.where("created_at > ?", date).count
  @count2 = SkyCount.where("created_at > ?", date).count
  @count3 = SeatCount.where("created_at > ?", date).count
  @count4 = DeskCount.where("created_at > ?", date).count
  @count5 = TableCount.where("created_at > ?", date).count
  
  @line = whatbus(@count1, @count2, @count3, @count4, @count5)
end

def get_scount()
  date = (DateTime.now())
  date = date - Rational(10, 24*60)
  
  @scount1 = ShonandaiStarCount.where("created_at > ?", date).count
  @scount2 = ShonandaiSkyCount.where("created_at > ?", date).count
  @scount3 = ShonandaiSeatCount.where("created_at > ?", date).count
  @scount4 = ShonandaiDeskCount.where("created_at > ?", date).count
  @scount5 = ShonandaiTableCount.where("created_at > ?", date).count
  
  @sline = whatbus(@scount1, @scount2, @scount3, @scount4, @scount5)
end
# post '/plus2' do
#   count = Count.first
#   count.number = count.number + 2
#   count.save
#   redirect '/'
# end

# post '/plus3' do
#   count = Count.first
#   count.number = count.number + 3
#   count.save
#   redirect '/'
# end

# post '/plus4' do
#   count = Count.first
#   count.number = count.number + 4
#   count.save
#   redirect '/'
# end

# post '/plus5' do
#   count = Count.first
#   count.number = count.number + 5
#   count.save
#   redirect '/'
# end

# post '/plus6' do
#   count = Count.first
#   count.number = count.number + 6
#   count.save
#   redirect '/'
# end

# post '/plus7' do
#   count = Count.first
#   count.number = count.number + 7
#   count.save
#   redirect '/'
# end

