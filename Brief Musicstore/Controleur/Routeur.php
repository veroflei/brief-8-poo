<?php

require_once 'Controleur/ControleurAccueil.php';
require_once 'Controleur/ControleurProduit.php';
require_once 'Vue/Vue.php';
class Routeur {

    private $ctrlAccueil;
    private $ctrlProduit;

    public function __construct() {
        $this->ctrlAccueil = new ControleurAccueil();
        $this->ctrlProduit = new ControleurProduit();
    }

    // Route une requête entrante : exécution l'action associée
    public function routerRequete() {
        try {
            if (isset($_GET['action'])) {
                if ($_GET['action'] == 'produit') {
                    $idProduit = intval($this->getParametre($_GET, 'id'));
                    if ($idProduit != 0) {
                        $this->ctrlProduit->produit($idProduit);
                    }
                    else
                        throw new Exception("Identifiant de produit non valide");
                }
                else if ($_GET['action'] == 'commenter') {
                    $auteur = $this->getParametre($_POST, 'auteur');
                    $contenu = $this->getParametre($_POST, 'contenu');
                    $idProduit = $this->getParametre($_POST, 'id');
                    $this->ctrlProduit->commenter($auteur, $contenu, $idProduit);
                }
                else
                    throw new Exception("Action non valide");
            }
            else {  // aucune action définie : affichage de l'accueil
                $this->ctrlAccueil->accueil();
            }
        }
        catch (Exception $e) {
            $this->erreur($e->getMessage());
        }
    }

    // Affiche une erreur
    private function erreur($msgErreur) {
        $vue = new Vue("Erreur");
        $vue->generer(array('msgErreur' => $msgErreur));
    }

    // Recherche un paramètre dans un tableau
    private function getParametre($tableau, $nom) {
        if (isset($tableau[$nom])) {
            return $tableau[$nom];
        }
        else
            throw new Exception("Paramètre '$nom' absent");
    }

}
