
<h1 align="center">Flutter Web</h1>

<h4 align="center">Prof. Eduardo Ono</h4>

&nbsp;

* No arquivo `index.h`, localizado no subdiretório `web` do projeto em Flutter, comentar a linha:

```html
<base hrefg="...">
```

* Ou, alterar a linha para:

```html
<base href="./">
```

* No terminal, aberto no diretório do projeto em Flutter, digitar:

```sh
flutter build web --web-renderer html
```

* Os arquivos para deploy estão no subdiretório:

```
/build/web/
```

&nbsp;
