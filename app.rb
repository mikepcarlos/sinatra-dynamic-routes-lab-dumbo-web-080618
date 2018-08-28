require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    num = @number.to_i
    @phrase = params[:phrase]
    spaced = @phrase + ' '
    spaced * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 + ' ' + @word2 + ' ' + @word3 + ' ' + @word4 + ' ' + @word5 + '.'
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      result1 = @number1 + @number2
      result1.to_s
    elsif @operation == "subtract"
      result2 = @number1 - @number2
      result2.to_s
    elsif @operation == "multiply"
      result3 = @number1 * @number2
      result3.to_s
    else
      result4 = @number1 / @number2
      result4.to_s
    end
  end

end
