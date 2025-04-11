# Bastionado HAProxy

###### Pablo Martínez - CiberCEP

## Escenario



## Contedores

Todos os contedores corren en Alpine, unha distribución Linux moi lixeira. Estes contedores veñen con moi pouca cousa e teremos que usar vi en vez de nano ou instalar o paquete iproutes2 se quixeramos ver a ip.

 

### Cluster web

Os seis servidores do noso cluster web usan o servizo Apache2 cambiando para que nos use arquivos .php antes que .html. Desta maneira correrános o index.php que lle pegamos no Dockerfile sen ter que especificalo.
Este index.php ten o seguinte contido:

![image-20250411180900438](/home/sanclemente.local/a20pablomd/bastionado/Imagenes/image-20250411180900438.png)

Desta forma ao facer un curl ou acceder dende o navegador sacarános a IP do contedor e así saber se o HAProxy está funcionando correctamente.

Así se vería ao facer un curl:

![image-20250411180929433](/home/sanclemente.local/a20pablomd/bastionado/Imagenes/image-20250411180929433.png)

Aparte do index.php e o arquivo de configuración do apache, tamén vamos a copiar aos contedores o arquivo health.html. Verémos o propósito de este arquivo mais adiante.

### HAProxy

### Prometheus

### Grafana

