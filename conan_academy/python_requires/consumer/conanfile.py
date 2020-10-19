from conans import ConanFile

class ConsumerConan(ConanFile):
    name = "consumer"
    version = "0.1"
    settings = "os", "compiler", "build_type", "arch"
    python_requires = "mytools/0.1@d-k-ivanov/testing"

    def build(self):
        mytools = self.python_requires["mytools"].module
        mytools.mymsg(self)

    # This is incomplete, not packaging anything,
    # but enough to see python_requires
