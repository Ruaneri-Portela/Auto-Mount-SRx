# Auto-Mount-SRx
🇺🇸

Script to auto mount CD/DVD/BD Driver

This is a simple script to check if there is a DVD/CD/BD type disc in the bay, it performs one task when it detects the disk and another when it removes it

It was created as a purpose for me to be able to share my optical media through samba and minidlna so that I can access them on my computer and networked cell phones that do not have optical readers.

Its simple operation, place the script anywhere on the system... I recommend in /usr/local/bin/mount-srx.sh , from "sudo chmod +x /usr/local/bin/mount-srx.sh" and after that configure an entry in SystemD I recommend "/etc/systemd/system/check-srx.service" , put the .service there and issue the following commands "sudo systemctl daemon-reload" to reload the daemon, "sudo systemctl enable check -srx.service" to start the service on boot and "sudo systemctl start check-srx.service" to run now!

Useful for computers without an interface, they can be used as low cost home servers :-D and for you to use your backup disks on the Plug-and-Play network!

--------------------------------------------
🇧🇷

Script para montar automaticamente o driver de CD/DVD/BD

Esse e um script simples para verificar se existe um disco tipo DVD/CD/BD na baia, ele executa uma tarefa ao detectar o disco e outra ao remove-lo

Foi criado como finalidade de eu poder compartilhar minhas midias opticas através do samba e do minidlna para eu poder acessa-lás em meu computador e celulares em rede que não dispõem de leitoras opticas.

Seu funcionamento simples, coloque o script em qualquer lugar no sistema... recomendo em /usr/local/bin/mount-srx.sh , de "sudo chmod +x /usr/local/bin/mount-srx.sh" e após isso configure uma entrada no SystemD recomendo "/etc/systemd/system/check-srx.service" , coloque o .service lá e de os seguites comandos "sudo systemctl daemon-reload" para recarregar o daemon, "sudo systemctl enable check-srx.service" para iniciar o serviço no boot e "sudo systemctl start check-srx.service" para executar agora!

Util para computadores sem inteface, podem ser usados como servidores domesticos de baixo custo :-D e para você usar seus discos de backup na rede Plug-and-Play!
