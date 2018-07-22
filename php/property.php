<?php
class Rectangle {

	private $width = 0;
	private $height = 0;

	public function info() {
		echo "Width: $this->width, Height: $this->height \n";
	}

	function __set($property, $value) {
		if ($property == 'w') {
			if ($value < $this->width) {
				$this->height = $value;
				echo "yay";
			}
			else {
				$this->height = $this->width;
				$this->width = $value;
			}
		}
	}

	function __get($property) {
		switch ($property) {
			case 'w': return $this->width + 2;
			case 'h': return $this->height + 1;
		}
	}

}

$r = new Rectangle();
$r->w = 50;
$r->w = 20;
$r->info();
echo "w: $r->w, h: $r->h\n";

?>
