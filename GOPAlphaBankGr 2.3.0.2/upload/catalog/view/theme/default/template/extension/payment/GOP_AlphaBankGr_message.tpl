<?php
/**
 * @extension-payment	GOP_AlphaBankGr
 * @author-name			Michail Gkasios
 * @copyright			Copyright (C) 2013 GKASIOS
 * @license				GNU/GPL, see http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 */
?>
<?= $header; ?>
<div id="content">
	<div style="display: table; margin: auto">
		<div style="display: table-cell; vertical-align: middle;">
			<div>
				<img align="middle" src="<?= $message_image; ?>">
			</div>
		</div>
		<div style="display: table-cell; vertical-align: middle;">
			<div>
				<h1 style="font-size: 50px"><?= $message; ?></h1>
			</div>
		</div>
	</div>
	<div style="display: table; margin: auto">
		<div style="display: table-cell; vertical-align: middle;">
			<div>
				<h2><?= $message_info; ?></h2>
			</div>
		</div>
	</div>
	<div style="display: table; margin: 50px auto auto auto">
		<div style="display: table-cell; vertical-align: middle;">
			<div>
				<h2><?= $text_redirect_in; ?></h2>
			</div>
		</div>
		<div style="display: table-cell; vertical-align: middle;">
			<div style="text-align: center; line-height: 40px; background-image: url(<?= $redirect_image; ?>); height: 40px; width: 40px;">
				<p id="timershow" style="font-size: 20px;"></p>
			</div>
		</div>
		<div style="display:table-cell; vertical-align:middle;">
			<div>
				<h2><?= $text_or; ?> <a onclick="redirect();"><?= $text_now; ?></a></h2>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript"><!--
function timedCount(count)
{
	if(count > 0)
	{
		document.getElementById("timershow").innerHTML = count;
		count = count - 1;
		setTimeout("timedCount(" + count + ")", 1000);
	}
	else
	{
		redirect();
	}
}

function redirect()
{
	window.location = "<?= $redirect_url; ?>";
}

window.onLoad = timedCount(<?= $count; ?>);
//--></script>
<?= $footer; ?>