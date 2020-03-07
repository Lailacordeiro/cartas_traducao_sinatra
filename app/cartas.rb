require 'sinatra'
require_relative 'carta'

set :static, true
Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do
  @cartas = []
  @cartas << Carta.new(portugues:'Vermelho', ingles: 'Red')
  @cartas << Carta.new(portugues:'Amarelo', ingles: 'Yellow')
  @cartas << Carta.new(portugues:'Azul', ingles: 'Blue')
  @cartas << Carta.new(portugues:'Amor', ingles: 'Love')
  @cartas << Carta.new(portugues:'Carro', ingles: 'Car')
  erb :index
end
