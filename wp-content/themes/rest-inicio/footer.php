<footer>
			<nav class="nav-footer">
			<?php
					$args = array(
						'menu' => 'menu',
						'container' => false
					);
					wp_nav_menu( $args );
				?>
			</nav>

			<p><?php bloginfo('name'); ?> © <?php echo date ("Y")?>. All rights reserved.</p>
        </footer>
        
        <!-- footer wordpress -->
        <?php wp_footer(); ?>
        <!-- close header wordpress -->
	</body>
</html>