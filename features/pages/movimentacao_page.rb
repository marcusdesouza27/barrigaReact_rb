class MovimentacaoPage <SitePrism::Page
    element :mov_input_desc, '#descricao'
    element :mov_input_valor, 'input[placeholder="Valor"]'
    element :mov_input_envolvido, '#envolvido'
    element :input_dt_transacao, 'input[data-test="data-transacao"]'
    element :input_dt_pagamento, 'input[data-test="data-pagamento"]'
    element :select_account, 'select[data-test="conta"]'
    element :btn_status, 'button[data-test*="status"]'
    element :btn_submit, 'button[class*="btn-primary"]'
    element :btn_thumbs_up, 'i[class*="fa-thumbs-up"]'
    element :btn_thumbs_down, 'i[class*="fa-thumbs-down"]'

    def addMovement(desc, vlrReais, envolvido, conta)
        mov_input_desc.set(desc)
        mov_input_valor.set(vlrReais)
        mov_input_envolvido.set(envolvido)
        btn_status.click
        btn_submit.click
    end

    def updateMovement(desc, envolvido)
        sleep(3)
        mov_input_desc.set(desc)
        select_account.click
        btn_status.click
        mov_input_envolvido.set(envolvido)
        btn_submit.click
    end
end