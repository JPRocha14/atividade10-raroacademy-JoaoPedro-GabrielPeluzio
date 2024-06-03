*** Settings ***

Resource    ../base.robot
Resource    ../utils/commons.robot


*** Variables ***

${PAGINA_INICIAL}           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
${PRODUTO_CADASTRADO}       id=br.com.pztec.estoque:id/linha_parte1
${BTN_NEW}                  id=br.com.pztec.estoque:id/Button1
${BTN_MENU}                 id=br.com.pztec.estoque:id/Button3
${INPUT_DESCRIPTION}        id=br.com.pztec.estoque:id/txt_descricao
${INPUT_AMOUNT}             id=br.com.pztec.estoque:id/txt_quantidade
${INPUT_UNIT_VALUE}         id=br.com.pztec.estoque:id/txt_valunit
${BTN_SAVE}                 id=br.com.pztec.estoque:id/btn_gravar_assunto
${BTN_BACKUP}               id=br.com.pztec.estoque:id/btn_backup
${BTN_GENERATE_BACKUP}      id=br.com.pztec.estoque:id/btn_gerar
${CAIXA_TEXTO_ALERTA}       xpath=/hierarchy/android.widget.FrameLayout
${TITULO_ALERTA}            id=android:id/alertTitle
${MENSSAGEM_ALERTA}         id=android:id/message
${BTN_OK_ALERTA}            id=android:id/button1
${INFOS_BACKUP}             id=br.com.pztec.estoque:id/datafile
${BTN_SEND}                 id=br.com.pztec.estoque:id/btn_send
${MENSAGEM_BACKUP}          id=br.com.pztec.estoque:id/textView4
${NOME_ARQUIVO_BACKUP}      id=android:id/content_preview_filename
${TEXTO_SHARE_BACKUP}       id=android:id/chooser_row_text_option
${BTN_RESTORE}              id=br.com.pztec.estoque:id/btn_restore
${TITLE_RESTORE}            id=br.com.pztec.estoque:id/textView3
${TEXTO_RESTORE}            id=br.com.pztec.estoque:id/lbl_mensagem
${BTN_SELECT_RESTORE}       id=br.com.pztec.estoque:id/btn_procurar
${RESTORE_WAYS}             xpath=/hierarchy/android.widget.FrameLayout

*** Keywords ***

Dado que o cliente está na página inicial
    Wait Until Element Is Visible    ${PAGINA_INICIAL}

Quando ele clica no botão New para cadastrar produto
    Espera o elemento e clica nele   ${BTN_NEW}

E preenche os campos obrigatórios
    Espera o elemento e inputa um texto    ${INPUT_DESCRIPTION}    Descrição
    Espera o elemento e inputa um texto    ${INPUT_AMOUNT}         25
    Espera o elemento e inputa um texto    ${INPUT_UNIT_VALUE}     25 

E clica no botão Save
    Espera o elemento e clica nele    ${BTN_SAVE}

Então ele pode cadastrar um produto
    Espera o elemento e visualiza o conteúdo    ${PRODUTO_CADASTRADO}
    
E não preenche a Description
    Espera o elemento e visualiza o conteúdo    ${INPUT_DESCRIPTION}

 E preenche o Amount e o Unit value
    Espera o elemento e inputa um texto    ${INPUT_AMOUNT}         25
    Espera o elemento e inputa um texto    ${INPUT_UNIT_VALUE}     25

Então ele não pode cadastrar um produto
    Page Should Not Contain Element        ${PRODUTO_CADASTRADO}

E não preenche o Amount
    Espera o elemento e visualiza o conteúdo    ${INPUT_AMOUNT}

E preenche a Description e o Unit value
    Espera o elemento e inputa um texto    ${INPUT_DESCRIPTION}    Descrição
    Espera o elemento e inputa um texto    ${INPUT_UNIT_VALUE}     300

E não preenche o Unit value
    Espera o elemento e visualiza o conteúdo    ${INPUT_UNIT_VALUE}

E preenche a Description e o Amount
    Espera o elemento e inputa um texto    ${INPUT_DESCRIPTION}    Descrição
    Espera o elemento e inputa um texto    ${INPUT_AMOUNT}         25

Quando ele clica na opção de Menu
    Espera o elemento e clica nele    ${BTN_MENU}

E clica na opção de backup
    Espera o elemento e clica nele    ${BTN_BACKUP}

E clica para gerar um arquivo de backup
    Espera o elemento e clica nele    ${BTN_GENERATE_BACKUP}

Então o arquivo de backup é gerado
    Espera o elemento e verifica conteúdo                ${TITULO_ALERTA}       Operation completed!
    Espera o elemento e verifica conteúdo                ${MENSSAGEM_ALERTA}    Send
    Espera o elemento, verifica conteúdo e clica nele    ${BTN_OK_ALERTA}       OK
    Espera o elemento e verifica conteúdo                ${INFOS_BACKUP}        Send the backup file to the virtual drive. If you have problems with your device, your data can be restored. Attention, do not change the original file, at the risk of not being able to restore it again.

E o usuário pode exportar esse arquivo
    Espera o elemento e espera que ele esteja habilitado    ${BTN_SEND}

E clica na opção de restore
    Espera o elemento e clica nele    ${BTN_RESTORE}
E clica na opção de SELECT FILE 
    Espera o elemento e verifica conteúdo    ${TITLE_RESTORE}    Backup restore
    Espera o elemento e verifica conteúdo    ${TEXTO_RESTORE}    Attention: You should only perform this operation if you have changed your device or reinstalled the application.
    Espera o elemento e espera que ele esteja habilitado    ${BTN_SELECT_RESTORE}
    Espera o elemento e clica nele    ${BTN_SELECT_RESTORE}
Então ele pode selecionar arquivo a ser restaurado
    Espera o elemento e visualiza o conteúdo    ${RESTORE_WAYS}