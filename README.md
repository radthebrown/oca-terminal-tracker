# oca-terminal-tracker

track your oca package using the terminal

##Usage

Install the missing gem manually or:

  $ bundle install

And the execute:

  $ ./oca-tracker.rb number_of_track

Output:

```
+---------------------+------------------------------------+--------------------------------+
|                                   Oca Terminal Tracker                                    |
+---------------------+------------------------------------+--------------------------------+
| Fecha               | Estado                             | Sucursal                       |
+---------------------+------------------------------------+--------------------------------+
| 25/08/2016 10:26:07 | En proceso de Retiro               | PLANTA VELEZ SARSFIELD         |
| 25/08/2016 19:30:08 | En Proceso en OCA                  | PLANTA VELEZ SARSFIELD         |
| 25/08/2016 19:30:09 | Procesado en OCA                   | PLANTA VELEZ SARSFIELD         |
| 25/08/2016 20:18:09 | En viaje a Sucursal de Destino     | PLANTA VELEZ SARSFIELD         |
| 27/08/2016 0:00:00  | En viaje a Sucursal de Destino     | PLANTA VELEZ SARSFIELD         |
| 27/08/2016 5:07:11  | En Tránsito a Suc. de Destino      | XXXXX                          |
| 27/08/2016 11:54:57 | En Espera de Retiro por Sucursal   | XXXXX                          |
| 29/08/2016 16:27:30 | Entregado                          | XXXXX                          |
| 30/08/2016 5:04:18  | Entregado                          | XXXXX                          |
+---------------------+------------------------------------+--------------------------------+

```

