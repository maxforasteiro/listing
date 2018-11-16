namespace :protobuffers do
  task :generate do
    system "grpc_tools_ruby_protoc -I shared/protobuf --ruby_out=lib --grpc_out=lib shared/protobuf/service.proto"
  end
end
