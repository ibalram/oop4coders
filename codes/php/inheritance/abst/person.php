<?php
abstract class Person {

    public function info() {
        echo "===INFO====\n";
        $this->info2();
    }

    abstract protected function info2();

}

?>
