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
  @operation=params[:operation]
  @number1=params[:number1]
  @number2=params[:number2]
  
  add= "#{@number2}" (@operation) "#{@number1}"
  
  "#{add}"
  
end

