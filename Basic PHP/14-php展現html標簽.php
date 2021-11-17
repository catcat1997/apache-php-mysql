<table border=1>
    <?php for($i=1;$i<10;$i++) {?>
    <tr>
    <?php for($j=1;$j<=$i;$j++) {?>
        <td>
            <?php echo $i . '*' . $j . '=' . $i*$j ?>
        </td>
        <?php } ?>
    </tr>
    <?php } ?>
</table>

//php中endfor

<table border=1>
    <?php for($i=1;$i<10;$i++) :?>
    <tr>
    <?php for($j=1;$j<=$i;$j++) :?>
        <td>
            <?php echo $i . '*' . $j . '=' . $i*$j ?>
        </td>
        <?php endfor; ?>
    </tr>
    <?php endfor; ?>
</table>