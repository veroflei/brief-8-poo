<link rel="stylesheet" href="stylevuprod.css">
<?php $this->titre = "MusicStore - " . $produit['titre']; ?>

<article>
    <header>
        <h1 class="titreProduit"><?= $produit['titre'] ?></h1>
        
    </header>
    <img src="<?= 'images/'.$produit['photo'] ?>">
    
      
<p><?= $produit['categorie'] ?></p>
        <p><?= $produit['description'] ?></p>
        <p><?= $produit['couleur'] ?></p>
        <p><?= $produit['reference'] ?></p>
        <p><?= $produit['prix'] ?></p>
        <p><?= $produit['stock'] ?></p>

