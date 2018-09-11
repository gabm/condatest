#include "lib.hpp"
#include <zmq.h>

int run() {
    auto ctx = zmq_ctx_new();
    zmq_ctx_shutdown(ctx);
    
    return 0;
}
