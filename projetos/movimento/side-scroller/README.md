# Movimento lateral básico (side-scroller) em Godot 4.

Demonstra movimentação básica de personagem 2D em **side-scroller**, usando `CharacterBody2D`, com fricção, gravidade e pulo.  
Ideal para jogos de plataforma, mas ainda cru — sem animações ou refinamentos visuais. O código é simples, direto, e comentado com carinho.

## 🎮 Descrição

O jogador pode se mover **para a esquerda e direita** usando as teclas direcionais, além de **conseguir pular** 
com a tecla direcional para cima (`ui_up`).  

A gravidade mantém o personagem no chão, e a fricção garante uma desaceleração suave ao soltar as teclas.

E desde que o chão e as bordas estejam devidamente configurados, o personagem respeitará as colisões, se movendo apenas
na área delimitada, e pisando firme no chãi.

Não há animações ou outras trivialidades. É código limpo, direto ao ponto, apenas para fins essenciais de imediato.

## 🧠 Tecnologias usadas

- [Godot Engine 4.x](https://godotengine.org/)
- GDScript

## ✅ Funcionalidades

- Movimento lateral com velocidade máxima constante  
- Fricção para desaceleração suave  
- Gravidade e sistema de pulo básico  
- Restrições físicas por colisão

## 📦 Como rodar

1. Baixe o [Godot 4](https://godotengine.org/download/)  
2. Clone este repositório  
3. Abra o projeto com o Godot  
4. Rode a cena principal
