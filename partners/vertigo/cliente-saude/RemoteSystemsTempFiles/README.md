#Exemplo de Acesso a Serviços REST

Como o serviço está hospedado num HTTPS, o WSO2 ESB precisa ter registrado o certificado na JVM.

Neste caso, execute o .sh (não, não fiz .bat :) )
```
vertigo/cliente-saude/BuscadorRol/extras

sh addCertificateJVM.sh

```

E depois, adicione o Certificado no barramento: [https://docs.wso2.com/display/ESB490/Import+Certificates+for+Keystores]

Se você ainda tiver problemas, faça apenas isto:
```
sh bin/wso2server.sh -Djsse.enableSNIExtension=false
```
Pronto!


