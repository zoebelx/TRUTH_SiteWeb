#!/usr/bin/env bash
# Télécharge les images du site Wix d'origine dans assets/
cd "$(dirname "$0")/assets" || exit 1
curl -fsSL -o "logo.png" "https://static.wixstatic.com/media/da4901_5d538d2b466b424b8239852984273c10~mv2.png" || echo "Échec : logo.png"
curl -fsSL -o "banniere.jpg" "https://static.wixstatic.com/media/da4901_f55ea54db2d34ea28f39c9c62a79efdf~mv2.jpg" || echo "Échec : banniere.jpg"
curl -fsSL -o "banniere-recadree.png" "https://static.wixstatic.com/media/da4901_ba464b208d314cfbb231ef2672bbff6a~mv2.png" || echo "Échec : banniere-recadree.png"
curl -fsSL -o "jeu.jpg" "https://static.wixstatic.com/media/da4901_01feb621f9524100bc85ecf3e17c3024~mv2.jpg" || echo "Échec : jeu.jpg"
curl -fsSL -o "logo-pied.png" "https://static.wixstatic.com/media/da4901_9cbdce36f55e4c5288f49362bb396e1c~mv2.png" || echo "Échec : logo-pied.png"
curl -fsSL -o "nature.jpg" "https://static.wixstatic.com/media/db440e70fa604bda90d756b1b66cc50b.jpg" || echo "Échec : nature.jpg"
curl -fsSL -o "sauryanne.png" "https://static.wixstatic.com/media/da4901_dc156b4f836344d7b85ea5c65d7b1d66~mv2.png" || echo "Échec : sauryanne.png"
curl -fsSL -o "ellie.png" "https://static.wixstatic.com/media/da4901_4ea511dacc254764bb31247e0dbd3951~mv2.png" || echo "Échec : ellie.png"
curl -fsSL -o "zoe.png" "https://static.wixstatic.com/media/da4901_da13d35a55f64553ba4e4d0a7026f302~mv2.png" || echo "Échec : zoe.png"
curl -fsSL -o "jan.png" "https://static.wixstatic.com/media/da4901_22e978a921734bbda536cc2edeb7697e~mv2.png" || echo "Échec : jan.png"
