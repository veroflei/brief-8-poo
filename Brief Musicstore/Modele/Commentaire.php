<?php

require_once 'Modele/Modele.php';
/**
 * Fournit les services d'accès aux genres musicaux 
 * 
 * @author Baptiste Pesquet
 */
class Commentaire extends Modele {

// Renvoie la liste des commentaires associés à un produit
    public function getCommentaires($idProduit) {
        $sql = 'select * from produit';
        $commentaires = $this->executerRequete($sql, array($idProduit));
        return $commentaires;
    }

    // Ajoute un commentaire dans la base
    public function ajouterCommentaire($auteur, $contenu, $idProduit) {
        $sql = 'insert into T_COMMENTAIRE(COM_DATE, COM_AUTEUR, COM_CONTENU, BIL_ID)'
            . ' values(?, ?, ?, ?)';
        $date = date(DATE_W3C);  // Récupère la date courante
        $this->executerRequete($sql, array($date, $auteur, $contenu, $idProduit));
    }
}