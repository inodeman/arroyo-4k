# Arroyo · bosque, 1 minuto

Un arroyo claro entre pinos, helechos y piedras. El agua se mueve; las rocas y el bosque se quedan. El último cuadro continúa en el primero, para loopear sin corte.

## Descargar

El video está en el release, no en el árbol de git (pesa más de lo cómodo para un commit).

- [arroyo_4k_1min.mp4](https://github.com/inodeman/arroyo-4k/releases/download/v1.0/arroyo_4k_1min.mp4) — 1:00, 3840×2160, agua y sonido de arroyo
- [arroyo_loop_10s.mp4](https://github.com/inodeman/arroyo-4k/releases/download/v1.0/arroyo_loop_10s.mp4) — el mismo plano en un ciclo de 10 s
- [Miniatura 1280×720](https://github.com/inodeman/arroyo-4k/releases/download/v1.0/arroyo_youtube_thumb.jpg)

Release: [v1.0](https://github.com/inodeman/arroyo-4k/releases/tag/v1.0)

| | |
|---|---|
| Resolución | 3840×2160 |
| Aspecto | 16:9 |
| Duración | 1:00 |
| Video | H.264 High, yuv420p, 24 fps |
| Audio | AAC estéreo, 48 kHz, arroyo sin música |

## Varias horas

Cuando confirmes la duración, el corte largo se arma sin recompresión a partir del loop:

```sh
./hacer_horas.sh arroyo_loop_10s.mp4 arroyo_4k_3h.mp4 3
```

GitHub no acepta archivos de más de 2 GB. Un máster de varias horas se sube aparte.
