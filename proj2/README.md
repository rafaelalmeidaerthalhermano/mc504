MC504 - SISTEMAS OPERACIONAIS
PROJETO 2

COMO EXECUTAR O PROJETO

Baixar a imagem do Linux em <http://www.ic.unicamp.br/~islene/2s2013-mc514/system-call/mc504-linux.tar.xz>.

Extrair o arquivo compactado usando o comando
    tar xJvf mc504-linux.tar.xz

Abrir o arquivo syscall_32.tlb localizado em linux-3.12/arch/x86/syscalls/ e incluir uma linha no final do arquivo contendo:
    351 i386 mycall sys_mycall

Abrir o arquivo syscalls.h localizado em linux-3.12/include/linux/ e incluir uma linha após a linha relacionada ao finit_module contendo:
    asmlinkage long sys_finit_module(int fd, const char _user *uargs, int flags);
    asmlinkage long sys_mycall(unsigned int pid);

Copiar o arquivo mycall.c para a pasta linux-3.12/arch/x86/kernel/.

Abrir o arquivo Makefile localizado em linux-3.12/arch/x86/kernel/ e incluir uma linha no final do arquivo contendo:
    obj-y += mycall.o

No diretório linux-3.12/, execute:
    make

Copiar o arquivo de teste para a pasta onde está o arquivo mc504.img.

Compilar o arquivo de teste para um sistema Linux de 32 bits (i386). Pode ser usado o compilador online <http://www.onlinecompiler.net/ccplusplus>.

Salvar o arquivo compilado com o nome ex-mycall e colocá-lo na mesma pasta onde está mc504.img.

Iniciar o QEMU com o comando:
    qemu-system-x86_64 -enable-kvm -hda mc504.img -kernel linux-3.12/arch/i386/boot/bzImage -append "ro root=/dev/hda" -hdb ex-mycall

Fazer login no sistema do QEMU com:
    usuário: root
    senha:   root

Após logar, executar os comandos:
    cat /dev/hdb > ex-mycall
    chmod +x ex-mycall
    ./ex-mycall

