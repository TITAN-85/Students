composer create-project --prefer-dist laravel/laravel MaisonneuveE2295298 "8.*"
create database MaisonneuveE2295298

php artisan make:model Ville
php artisan make:migration create_villes_table

php artisan make:model Etudiant
php artisan make:migration create_etudiants_table

php artisan migrate

php artisan make:factory VilleFactory
php artisan make:factory EtudiantFactory

php artisan tinker 
\App\Models\Ville::factory()->times(15)->create();
php artisan tinker 
\App\Models\Etudiant::factory()->times(100)->create();

php artisan make:controller EtudiantController



