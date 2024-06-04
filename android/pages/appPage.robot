*** Settings ***

Resource    ../base.robot
Resource    ../utils/commons.robot

*** Variables ***
${Menu}    id=br.com.pztec.estoque:id/Button3
${Data_export}    id=br.com.pztec.estoque:id/btn_exportar
${Data_import}    id=br.com.pztec.estoque:id/btn_importar
${Report}    id=br.com.pztec.estoque:id/btn_relatorios
${Data_export_gerar}    id=br.com.pztec.estoque:id/btn_gerar
${Data_export_data_file_prod}    id=br.com.pztec.estoque:id/datafileprod
${Data_export_data_file_ent}    id=br.com.pztec.estoque:id/datafileent
${Data_export_data_file_sai}    id=br.com.pztec.estoque:id/datafilesai
${Data_export_data_file_grupo}    id=br.com.pztec.estoque:id/datafilegrupo
${Data_export_data_btn_prod}    id=br.com.pztec.estoque:id/btn_prod
${Data_export_data_btn_ent}    id=br.com.pztec.estoque:id/btn_ent
${Data_export_data_btn_sai}    id=br.com.pztec.estoque:id/btn_sai
${Data_export_data_btn_grupo}    id=br.com.pztec.estoque:id/btn_grupo
${Data_import_produtos}    id=br.com.pztec.estoque:id/btn_produtos
${Data_import_entradas}    id=br.com.pztec.estoque:id/btn_entradas
${Data_import_saidas}    id=br.com.pztec.estoque:id/btn_saidas
${Data_import_grupos}    id=br.com.pztec.estoque:id/btn_grupos
${Report_inventario}    id=br.com.pztec.estoque:id/inventario
${Report_entrada}    id=br.com.pztec.estoque:id/relentrada
${Report_saida}    id=br.com.pztec.estoque:id/relsaida
${Report_data_1}    id=br.com.pztec.estoque:id/data1
${Report_data_2}    id=br.com.pztec.estoque:id/data2
${Report_gerar}    id=br.com.pztec.estoque:id/btn_gerar
${Report_abrir}    id=br.com.pztec.estoque:id/btn_abrir
${Report_email}    id=br.com.pztec.estoque:id/btn_email
${Data_export_alert}    id=android:id/alertTitle
${Data_export_ok}    id=android:id/button1
${Data_import_estoque}    id=new UiSelector().text("Estoque")
${Data_import_alerta}    id=android:id/alertTitle
${Report_datafile}    id=br.com.pztec.estoque:id/datafile
${Report_fileName}    id=android:id/content_preview_filename
${Report_Erro}    id=android:id/message
#JP
${PAGINA_INICIAL}           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
${BTN_EDITAR_PRODUTO}       id=br.com.pztec.estoque:id/editar
${BTN_DELETE}               id=br.com.pztec.estoque:id/deletar
${AMOUNT_INCREASE}          id=br.com.pztec.estoque:id/entrada
${INPUT_AMOUNT_INCREASE}    id=br.com.pztec.estoque:id/txt_qtdentrada
${AMOUNT_DECREASE}          id=br.com.pztec.estoque:id/saida
${INPUT_AMOUNT_DECREASE}    id=br.com.pztec.estoque:id/txt_qtdsaida
${BTN_SALVAR_AMOUNT}        id=br.com.pztec.estoque:id/btn_salvar
${VALUE_AMOUNT}             id=br.com.pztec.estoque:id/txt_quantidade
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
${BTN_ESTOQUE}              xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Estoque"]
${BTN_APP_BACKUP}           xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="APP_20240603.bkp"]
${ALERTA_RESTORE}           xpath=/hierarchy/android.widget.FrameLayout




*** Keywords ***

Dado que o cliente está na página inicial
    Verifica elemento    ${PAGINA_INICIAL}

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

Então ele pode aumentar a quantidade desse produto
    Espera o elemento e clica nele         ${AMOUNT_INCREASE}
    Espera o elemento e inputa um texto    ${INPUT_AMOUNT_INCREASE}    3
    Espera o elemento e clica nele         ${BTN_SALVAR_AMOUNT}

Então ele pode dimimuir a quantidade desse produto
    Espera o elemento e clica nele         ${AMOUNT_DECREASE}
    Espera o elemento e inputa um texto    ${INPUT_AMOUNT_DECREASE}    3
    Espera o elemento e clica nele         ${BTN_SALVAR_AMOUNT}

E a quantidade do produto será aumentada
    Espera o elemento e visualiza o conteúdo    ${PRODUTO_CADASTRADO}
    Espera o elemento e verifica conteúdo       ${VALUE_AMOUNT}    28

E a quantidade do produto será reduzida
    Espera o elemento e visualiza o conteúdo    ${PRODUTO_CADASTRADO}
    Espera o elemento e verifica conteúdo       ${VALUE_AMOUNT}    22

E a quantidade dele é 25
    Espera o elemento e verifica conteúdo    ${VALUE_AMOUNT}    25

E ele clica na opção de editar o produto
    Espera o elemento e clica nele    ${BTN_EDITAR_PRODUTO}

Então ele pode editar as informações do produto
    Espera o elemento, dá um clear e inputa o novo texto    ${INPUT_DESCRIPTION}    TEXTO EDITADO
    Espera o elemento, dá um clear e inputa o novo texto    ${INPUT_AMOUNT}         270
    Espera o elemento, dá um clear e inputa o novo texto    ${INPUT_UNIT_VALUE}     15
    Espera o elemento e clica nele                          ${BTN_SAVE}
    Espera o elemento e visualiza o conteúdo                ${PRODUTO_CADASTRADO}

E ele clica na opção de excluir produto
    Espera o elemento e clica nele         ${BTN_DELETE}

E confirma a operação
    Espera o elemento e verifica conteúdo                ${TITULO_ALERTA}       Message
    Espera o elemento e verifica conteúdo                ${MENSSAGEM_ALERTA}    Delete?
    Espera o elemento, verifica conteúdo e clica nele    ${BTN_OK_ALERTA}    YES
Então o produto é excluído
    Page Should Not Contain Element                      ${PRODUTO_CADASTRADO}

Cadastrar vários produtos
    [Arguments]    ${descricao}    ${qntd}    ${value}
    Dado que o cliente está na página inicial
    Quando ele clica no botão New para cadastrar produto
    Espera o elemento e visualiza o conteúdo    ${INPUT_DESCRIPTION}
    Espera o elemento e inputa um texto    ${INPUT_DESCRIPTION}    ${descricao}
    Espera o elemento e inputa um texto    ${INPUT_AMOUNT}    ${qntd} 
    Espera o elemento e inputa um texto    ${INPUT_UNIT_VALUE}    ${value} 
    Espera o elemento e clica nele    ${BTN_SAVE}
    Espera o elemento e visualiza o conteúdo    ${BTN_MENU}
    Espera o elemento e verifica conteúdo    //android.widget.TextView[@text='${descricao}']    ${descricao}

#Gabriel
Dado que o usuario esta na paginal inicial 
    Verifica elemento    ${Menu}

E que o usuario clicou no botao menu 
    Espera o elemento e clica    ${Menu}

E que escolheu a funcionalidade export
    Espera o elemento e clica    ${Data_export}

Entao ele pode verificar e utilizar a funcionalidades
    Espera o elemento e verifica o texto    ${Data_export_gerar}    'DATA EXPORT'    
    Espera o elemento e verifica o texto    ${Data_export_data_btn_prod}    'SEND'  
    Espera o elemento e verifica o texto    ${Data_export_data_btn_ent}    'SEND'  
    Espera o elemento e verifica o texto    ${Data_export_data_btn_sai}    'SEND'  
    Espera o elemento e verifica o texto    ${Data_export_data_btn_grupo}    'SEND'  

 E clicou no botao de gerar um export
    Espera o elemento e clica    ${Data_export_gerar}


Entao ele criou um arquivo
    Espera o elemento e verifica o texto    ${Data_export_alert}    'Operation completed!'
    Espera o elemento e clica    ${Data_export_ok}

E clicou no botao de enviar     
    Espera o elemento e clica    ${Data_export_data_btn_prod} 
    Go Back    
    Espera o elemento e clica   ${Data_export_data_btn_ent}  
    Go Back    
    Espera o elemento e clica    ${Data_export_data_btn_sai}  
    Go Back  
    Espera o elemento e clica    ${Data_export_data_btn_grupo}
    Go Back   
    

Entao ele enviou um arquivo
    Espera o elemento e verifica o texto    ${Data_export_data_btn_prod}    'SEND'  
    Espera o elemento e verifica o texto    ${Data_export_data_btn_ent}    'SEND'  
    Espera o elemento e verifica o texto    ${Data_export_data_btn_sai}    'SEND'  
    Espera o elemento e verifica o texto    ${Data_export_data_btn_grupo}    'SEND' 

E clicou no botao de gerar export
    Espera o elemento e clica    ${Data_export_gerar}
    Espera o elemento e verifica o texto    ${Data_export_alert}    'Operation completed!'
    Espera o elemento e clica    ${Data_export_ok}
    Espera o elemento e verifica o texto    ${Data_export_data_file_prod}   'products.csv'
    Espera o elemento e verifica o texto    ${Data_export_data_file_ent}    'stockentries.csv'
    Espera o elemento e verifica o texto    ${Data_export_data_file_sai}    'stockouts.csv'
    Espera o elemento e verifica o texto    ${Data_export_data_file_grupo}    'group.csv'

E clica na opção de estoque
    Espera o elemento e clica nele    ${BTN_ESTOQUE}

E clica na opção de realizar o backup do arquivo baixado
    Espera o elemento e clica nele    ${BTN_APP_BACKUP}

Então deve ser possível realizar a restauração
    Espera o elemento e visualiza o conteúdo    ${ALERTA_RESTORE}

E criou um produto e teve entrada e saida de produtos  
    E criou um produto
E que escolheu a funcionalidade import
    Espera o elemento e clica    ${Data_import}
    
Entao ele pode escolher o que quer importar 
    Espera o elemento, verifica conteúdo e clica nele    ${Data_import_produtos}    'PRODUCT RESTORE'  
    Espera o elemento e verifica o texto    ${Data_import_alerta}    '/storage/emulated/0/Estoque'
    Go Back
    Espera o elemento, verifica conteúdo e clica nele    ${Data_import_entradas}    'STOCK ENTRIES RESTORE' 
    Espera o elemento e verifica o texto    ${Data_import_alerta}    '/storage/emulated/0/Estoque'
    Go Back
    Espera o elemento, verifica conteúdo e clica nele    ${Data_import_saidas}    'STOCK OUTS RESTORE' 
    Espera o elemento e verifica o texto    ${Data_import_alerta}    '/storage/emulated/0/Estoque'
    Go Back
    Espera o elemento, verifica conteúdo e clica nele    ${Data_import_grupos}    'PRODUCT GROUP' 
    Espera o elemento e verifica o texto    ${Data_import_alerta}    '/storage/emulated/0/Estoque'
    Go Back

 E que escolheu a funcionalidade Report
   Espera o elemento e clica    ${Report}
 Entao ele pode reportar o inventario
    Espera o elemento, verifica conteúdo e clica nele    ${Report_inventario}    'REPORT INVENTORY'
    Espera o elemento e clica    ${Report_gerar}
    Espera o elemento e verifica o texto    ${Report_datafile}    'inventory.pdf generated in'
    Espera o elemento e clica    ${Report_abrir}
    Go Back
    Espera o elemento e clica    ${Report_email}
    Espera o elemento e verifica o texto    ${Report_fileName}    'inventory.pdf'

Entao ele pode reportar as entradas caso tenha preenchido as datas
    Espera o elemento, verifica conteúdo e clica nele    ${Report_entrada}    'STOCK ENTRIES'
    Espera o elemento e clica nele    ${Report_data_1}
    Espera o elemento e clica    ${Data_export_ok}
    Espera o elemento e clica    ${Report_data_2}
    Espera o elemento e clica    ${Data_export_ok}
    Espera o elemento e clica    ${Report_gerar}
    Espera o elemento e verifica o texto    ${Report_datafile}    'stockentries.pdf generated in'
    Espera o elemento e clica    ${Report_abrir}
    Go Back
    Espera o elemento e clica    ${Report_email}
    Espera o elemento e verifica o texto    ${Report_fileName}    'stockentries.pdf'
Entao ele pode reportar as saidas caso tenha preenchido as datas
    Espera o elemento, verifica conteúdo e clica nele    ${Report_saida}    'STOCK OUTS'
    Espera o elemento e clica nele    ${Report_data_1}
    Espera o elemento e clica    ${Data_export_ok}
    Espera o elemento e clica    ${Report_data_2}
    Espera o elemento e clica    ${Data_export_ok}
    Espera o elemento e clica    ${Report_gerar}
    Espera o elemento e verifica o texto    ${Report_datafile}    'stockouts.pdf generated in'
    Espera o elemento e clica    ${Report_abrir}
    Go Back
    Espera o elemento e clica    ${Report_email}
    Espera o elemento e verifica o texto    ${Report_fileName}    'stockouts.pdf'

Entao ele nao pode reportar as entradas caso nao tenha preenchido as datas
    Espera o elemento, verifica conteúdo e clica nele    ${Report_entrada}    'STOCK ENTRIES'
    Espera o elemento e clica    ${Report_gerar}
    Espera o elemento e verifica o texto    ${Report_Erro}    'Please select a date range.'
Entao ele nao pode reportar as saidas caso nao tenha preenchido as datas
    Espera o elemento, verifica conteúdo e clica nele    ${Report_saida}    'STOCK OUTS'
    Espera o elemento e clica    ${Report_gerar}
    Espera o elemento e verifica o texto    ${Report_Erro}    'Please select a date range.'

