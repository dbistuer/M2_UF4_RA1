# M2 UF4 RA1 – Practica 4

## Consultes en Postgres

**L’objectiu d’aquesta activitat és realitzar una sèrie de consultes realitzades sobre el**
**fitxer .sql adjunt a la pràctica. El nom del fitxer és practica.sql**

**No s’acceptaran entregues fora de la data establerta sí no és amb justificació mèdica**
**o qüestions de força major.**

### 1 – Realitza les següents consultes.

1. **Obtenir el nom de totes les assignatures classificades per ordre alfabètic.**

   ```sql
   SELECT nom FROM assignatura ORDER BY nom ASC;
   ```

2. 

   **a) Obtenir les ciutats dels alumnes majors de 18 anys.**

   ```sql
   SELECT ciutat FROM alumne WHERE edat > 18;
   ```

   **b) El mateix però sense tuples (registres) repetides**

   ```sql
   SELECT DISTINCT ciutat FROM alumne WHERE edat > 18;
   ```

3. **Extreure totes les dades de l'assignatura amb nom 'LABOSOFT'**

   ```sql
   SELECT * FROM assignatura WHERE nom LIKE 'LABOSOFT';
   ```

4. **Obtenir els noms i l'edat dels alumnes que són de Lleida per ordre alfabètic (segons el camp nom).**

   ```sql
   SELECT nom,edat FROM alumne WHERE ciutat LIKE 'Lleida';
   ```

5. **Si fem la següent consulta ens dona error, perquè?:**

6. **Obtenir el llistat de tots els alumnes majors d’edat (igual o major que de 18 anys), classificant-los per la ciutat d'origen en ordre creixent i per la seva edat en ordre decreixent dins dels de la mateixa ciutat.**

   ```sql
   SELECT * FROM alumne WHERE edat >= 18 ORDER BY ciutat ASC,edat DESC;
   ```

7. **El mateix però volem que enlloc de nom, ens surti IDENTITAT, i enlloc de ciutat que ens surti ORIGEN.**

   ```sql
   SELECT idalumne,'IDENTITAT',edat,'ORIGEN' FROM alumne WHERE edat >= 18 ORDER BY ciutat ASC,edat DESC;
   ```

8. **Suposem ara que volem saber el nom, l’edat i l’any de naixement de cada alumne. Ordeneu la sortida per l'any de naixement en ordre decreixent.**

   ```sql
   SELECT nom,edat,EXTRACT(YEAR FROM current_date)-edat AS "ANY NAIXEMENT" FROM alumne ORDER BY "ANY NAIXEMENT" DESC;
   ```

9. **Trobeu les assignatures que tenen com a mínim 20 alumnes menys que 'EDI'. Ordeneu el resultat alfabèticament per nom de l'assignatura.**

   ```sql
   SELECT * FROM assignatura WHERE numalumnes >= ((SELECT numalumnes FROM assignatura  WHERE nom LIKE 'EDI')-20);
   ```

10. **Suposem ara que inserim el següent alumne (Observeu que el camp edat no s'omple, per tant tindrà valor nul):** 

    ```sql
    INSERT INTO Alumne (nom, ciutat) VALUES('Pere', 'Tremp');
    ```

    **a) Trobar el nom dels alumnes que no tenen edat. Ordeneu el resultat pel camp nom.**

    ```sql
    SELECT nom FROM alumne WHERE edat IS NULL;
    ```

    **b) Trobeu ara els noms dels alumnes que si que tenen edat.**

    ```sql
    SELECT nom FROM alumne WHERE edat IS NOT NULL;
    ```
