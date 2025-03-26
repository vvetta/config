# My Vim config
В качестве основного редактора кода я использую **Vim**! <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/1200px-Vimlogo.svg.png" width="50" height="50">

## Как поставить мой Vim конфиг.
1. Первое что вы должны сделать - это поставить менеджер плагинов [VimPlug](https://github.com/junegunn/vim-plug). Это можно сделать следующей командой: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`.
2. Далее необходимо клонировать этот репозиторий и скопировать из него `.vimrc` файл в папку вашего пользователя: `cp
   .vimrc ~/`.
3. После этого заходим в Vim и пишем следующую команду `:PlugInstall`, которая установить все необходимые плагины за
   вас.
4. Осталось только перезайти в Vim и все плагины уже будут установлены. Установка конфига Vim завершена. 

## Основные возможности.
1. Комментирование кода

    - Закомментировать выделенный код:
    Перейдите в визуальный режим (`Esc` + `Shift` + `V`), выделите нужную область и нажмите `,` + `cc`

    - Раскомментировать:
    Выделите область и нажмите `,` + `cu`

2. Плавная прокрутка

    - Прокрутка вниз: `Ctrl` + `D`

    - Прокрутка вверх: `Ctrl` + `U`

3. Дерево файлов <img width="200" height="300" alt="image" src="https://github.com/user-attachments/assets/cbbcb833-c42d-463e-8ffc-235dc2cc23e6" />

    
    - Открыть/закрыть: `Ctrl` + `T`
