# ABIT
[Demo](https://45.63.2.26:3001)

**DESCRIPCION**
Sistema desarrollado con:
 > NodeJs,
 > BD PostgreSql,
 > PostGrapHile,
 > Tecnologia PWA

Para el acceso de usuarios y registro de informacion en general se la realisa en Base de datos [PostgreSql v10+](https://www.postgresql.org) empleando [PostgrapHile](https://www.graphile.org/postgraphile/)

**INSTALACION**

El sistema esta integrado el Front End `/abit/public`  y Back End `/abit/`. El mismo puede ser separado
```
  git clone https://github.com/renepastor/abit.git
```

***Requisitos***
 >> NodeJs v6.4+,
 >> BD PostgreSql v10+,
 >> PostGrapHile v4+,
 >> Tecnologia PWA (HTTPS para publicar)

***Install Base de Datos***
directorio /abit/BD$ 
crear BD con usuario "bd_abit" con usuario root

Para Linux ejecutar el archivo `/abit/BD/create.sh`

Para WINDOWS sur los archivos `.sql` a postgres en orde secuencial


***Install Back End***
directorio /abit$ 
```
  npm install
```

***Install Front End***
directorio /abit/public$ 
```
  npm install
```


***Ejecutar***
directorio /abit$ 
```
  node abit.js
```


** TODA SUGERENCIA ES BIENVENIDO renepastor@gmail.com [591-72001106](https://api.whatsapp.com/send?phone=59172001106&text=sobreElSistemaAbit%20) **