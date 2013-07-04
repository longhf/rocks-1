package = "torchffi"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/torchffi",
   tag = "1.0-0"
}

description = {
   summary = "Enables FFI bindings for Torch",
   detailed = [[
Enables FFI bindings for Torch (Tensor). It requires Torch to be built
with LuaJIT.
   ]],
   homepage = "https://github.com/clementfarabet/torchffi",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
