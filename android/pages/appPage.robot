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

*** Keywords ***
Dado que o usuario esta na paginal inicial 
    Sleep    5
    Espera o elemento e verifica    ${Menu}

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

E criou um produto 

E teve entrada e saida de produtos