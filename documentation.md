- Todo lo que tenga que ver en algo que mostrar en rails, todo lo que se pueda consultar de nuestra pagina web pasa por las rutas estas rutas se encuentran ubicadas en config/routes por conveccion si tu no le dices que hacer a un controlador este lo que va hacer es buscar en la carpeta view la vista 
-b si queres usar alguna libreria de javascript tenes que colocar npm o yarn esta se va a instalar en el node_modules, un vez agregado tenemos que decirle a la app que vamos a utilizar ese modulo para esto toda la configuracion del packer y el front se hace en la carpeta javascript que se encuentra en la direccion app/javascript/application.js
- El comando para generar un controlador es (rails generate controller home index) aca le decimos generame un controlador que venga con la opcion index
- El comando para generar modelos es (rails generate model Article title:string satatus:integer) 
- el comando para ejecutar una migracion a la base de datos usamos el comando (rails db:migrate) si deseas eliminar una migracion y volver a un version anterior podes usar el comando (rails db:rolback)
- Es bueno tener un controlador para cada modelo en el que vas a trabajar pero esto no quiere decir que en un controlador no puedas usar mas de un modelo
- El comando (rails console) nos permite abrir la consola de rails
- ----------------------------AUTENTICACION------------------------
- En el archivo Gemfile vamos a usar un modulo llamado devise que es una gema, una vez agregada ejecutamos el siguiente comando (bundle install)
- Una vez instalado ejecutamos el comando (rails generate devise:install) con esto vamos a correr el generador de devise, se generan una serie de configuraciones y archivos iniciales que son esenciales para que Devise funcione correctamente en tu aplicación Rails.
- Ejecutaremos el comando (rails generate devise User) esto lo  que va hacer es crear un modelo que se va a llamar user, va a crear una migracion que incluye varios campos como token, email, recordatorio cada vez que se crea una tabla debes hacer una migracion para aplicar los cambios