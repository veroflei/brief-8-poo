<!doctype html>
<html lang="fr">
    <head>
        <meta charset="UTF-8" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="Contenu/style.css" />
</head>
       
     <div id="global">
            <header>
                <a href="index.php"><h1 id="titreBlog">MusicStore ACCUEIL</h1></a>
                <h2> Bienvenue sur MusicStore.</h2>
            </header>
            <body>

            <div class="card" style="width: 18rem;">
  <div class="card-body">
  <div id="contenu">
                <?= $contenu ?>
            </div> <!-- #contenu -->
     </div>
</div>
            <footer id="piedBlog">
                Site réalisé avec PHP, HTML5 et CSS.
            </footer>
        </div> <!-- #global -->
    </body>
</html>