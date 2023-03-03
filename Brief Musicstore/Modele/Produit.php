<?php

require_once 'Modele/Modele.php';

/**
 * Fournit les services d'accès aux genres musicaux 
 * 
 * @author Baptiste Pesquet
 */
class Produit extends Modele {

    /** Renvoie la liste des produits
     * 
     * @return PDOStatement La liste des produits
     */
    public function getProduits() {
        $sql = 'select * from produit';
        $produits = $this->executerRequete($sql);
        return $produits;
    }

    /** Renvoie les informations sur un produit
     * 
     * @param int $id L'identifiant du produit
     * @return array Le produit
     * @throws Exception Si l'identifiant du produit est inconnu
     */
    public function getProduit($idProduit) {
        $sql = 'select * from produit where id_produit=?' ;
        $produit = $this->executerRequete($sql, array($idProduit));
        if ($produit->rowCount() > 0){
            return $produit->fetch(); } // Accès à la première ligne de résultat
        else
            throw new Exception("Aucun produit ne correspond à l'identifiant '$idProduit'");
    }

}