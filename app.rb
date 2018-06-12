require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @user_name = params[:name]
  "#{@user_name.reverse}"
end

get '/square/:number' do
  
  x = (params[:number].to_i)*(params[:number].to_i)
  "#{x}"
  
end

get '/say/:number/:phrase' do
  @number=params[:number]
  @phrase=params[:phrase]
  
  "#{@phrase}" * "#{@number}".to_i

end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1=params[:word1]
  @word2=params[:word2]
  @word3=params[:word3]
  @word4=params[:word4]
  @word5=params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
end

get '/:operation/:number1/:number2'
if "add" == params[:operation]
  a = (params[:number_1].to_i)+(params[:number_1].to_i)
  "#{a}"
  elsif "subtract" == params[:operation]
  b = (params[:number_1].to_i)-(params[:number_1].to_i)
  "#{b}"
  elsif "multiply" == params[:operation]
  c = (params[:number_1].to_i)*(params[:number_1].to_i)
  "#{c}"
else "divide" == params[:operation]
  d = (params[:number_1].to_i)+(params[:number_1].to_i)
  "#{d}"
end

