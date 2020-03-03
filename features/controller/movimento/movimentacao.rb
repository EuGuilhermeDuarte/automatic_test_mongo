class MovimentacaoFinanceiraMongo
  def initialize()
    @db = Database.new('dev_movimento')
  end

  def find(query)
    @db.find('movimentacao_financeira', query)
  end
end