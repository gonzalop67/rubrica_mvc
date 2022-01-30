<?php require RUTA_APP . '/vistas/inc/header.php' ?>
<p><?php echo NOMBRESITIO . $datos['titulo']; ?></p>
<ul>
    <?php foreach($datos['usuarios'] as $usuario) : ?>
        <li><?php echo $usuario->us_shortname; ?></li>
    <?php endforeach; ?>
</ul>
<?php require RUTA_APP . '/vistas/inc/footer.php' ?>