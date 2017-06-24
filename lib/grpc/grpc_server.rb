# frozen_string_literal: true

require 'grpc'

class GrpcServer
# main starts an RpcServer that receives requests to GreeterServer at the sample
# server port.
  def main
    s = GRPC::RpcServer.new
    s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
    s.handle(GreeterServer)
    s.run_till_terminated
  end
end
