When("User insert account data") do
    @home.close_alert()
    @home.loadMovement()
    @movimentacao.addMovement('Novo Movimento', '250', 'Testes QA', 'Conta para movimentacao')
  end
  
  Then("the new movement should be displayed in history") do
    @home.valida_alert()
    expect(@home.alert.text).to have_content(MESSAGE_ASSERT['mov_add_success']) 
    expect(page).to have_content('Novo Movimento')
    @home.close_alert()
  end

  When("user updates an existent movement") do
    @home.close_alert()
    @home.loadExtrato()
    @extrato.click_edit_mov()
    @movimentacao.updateMovement('Updated Movement','Updated User')
    # binding.pry
  end
  
  Then("new updated movement should be displayed") do
    @home.valida_alert()
    expect(@home.alert.text).to have_content(MESSAGE_ASSERT['mov_updated_success']) 
    expect(page).to have_content('Updated Movement')
    @home.close_alert()
  end

  When("user removes an existent movement") do
    @home.close_alert()
    @home.loadExtrato()
    @extrato.delete_movement()
  end
  
  Then("deleted movement should not be displayed") do
    @home.valida_alert()
    expect(page).to have_no_content('Movimentacao 1, calculo saldo')
    expect(@home.alert.text).to have_content(MESSAGE_ASSERT['mov_delete_success']) 
  end