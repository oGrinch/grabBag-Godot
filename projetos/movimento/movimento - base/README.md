# Movimento básico em Godot 4.

Demonstra movimentação básica de personagem usando `CharacterBody2D`, com fricção e limite de colisão. 
É ideal para jogos no estilo "top-down", mas carece de animação e outras funções. O código está devidamente
comentado para quaisquer conveniências.

## 🎮 Descrição

O jogador pode se mover em quatro direções (cima, baixo, esquerda, direita) usando as teclas direcionais.  
A movimentação possui fricção, fazendo o personagem desacelerar suavemente quando nenhuma tecla é pressionada.

O personagem está limitado fisicamente às colisões da sala. Ele não irá sair, contanto que as colisões estejam
devidamente programadas.

Dispõe também de um código limpo e sem animações, apenas para fins didáticos.

## 🧠 Tecnologias usadas

- [Godot Engine 4.x](https://godotengine.org/)
- GDScript

## ✅ Funcionalidades

- Movimento com velocidade máxima constante
- Desaceleração automática, fricção
- Restrições de movimento por colisão

## 📦 Como rodar

1. Baixe o [Godot 4](https://godotengine.org/download/)
2. Clone este repositório
3. Abra o projeto com o Godot
4. Rode a cena principal
