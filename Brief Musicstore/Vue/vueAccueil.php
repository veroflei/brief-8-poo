<?php $this->titre = "MusicStore "; ?>

<?php foreach ($produits as $produit):
    ?>
    <article>
        <header>
            <a href="<?= "index.php?action=produit&id=" . $produit['id_produit'] ?>">
                <h1 class="titreProduit"><?= $produit['titre'] ?></h1>
            </a>         
        </header>
        
        
        <p><?= $produit['categorie'] ?></p>
        
        <p><?= $produit['couleur'] ?></p>
      
       
    </article> 
    <hr />
<?php endforeach; ?>
