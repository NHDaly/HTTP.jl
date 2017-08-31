function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(MbedTLS.Type, (Type{MbedTLS.Entropy},))
    precompile(MbedTLS.isopen, (typeof(Base.isopen), MbedTLS.SSLContext,))
    precompile(MbedTLS.parse_keyfile!, (typeof(MbedTLS.parse_keyfile!), MbedTLS.PKContext, String, String,))
    precompile(MbedTLS.crt_parse, (typeof(MbedTLS.crt_parse), String,))
    precompile(MbedTLS.jl_entropy, (typeof(MbedTLS.jl_entropy), Ptr{Void}, Ptr{Void}, UInt64, Ptr{Void},))
    precompile(MbedTLS.hostname!, (typeof(MbedTLS.hostname!), MbedTLS.SSLContext, String,))
    precompile(MbedTLS.Type, (Type{MbedTLS.SSLConfig}, String, String,))
    precompile(MbedTLS.f_rng, (typeof(MbedTLS.f_rng), Ptr{Void}, Ptr{UInt8}, UInt64,))
    precompile(MbedTLS.rand!, (typeof(Base.Random.rand!), MbedTLS.CtrDrbg, Array{UInt8, 1},))
    precompile(MbedTLS.f_dbg, (typeof(MbedTLS.f_dbg), Ptr{Void}, Int32, Ptr{UInt8}, Int32, Ptr{UInt8},))
    precompile(MbedTLS.f_recv, (typeof(MbedTLS.f_recv), Ptr{Void}, Ptr{UInt8}, UInt64,))
    precompile(MbedTLS.f_send, (typeof(MbedTLS.f_send), Ptr{Void}, Ptr{UInt8}, UInt64,))
    precompile(MbedTLS.close, (typeof(Base.close), MbedTLS.SSLContext,))
    precompile(MbedTLS.readbytes!, (typeof(Base.readbytes!), MbedTLS.SSLContext, Array{UInt8, 1}, UInt64,))
    precompile(MbedTLS.Type, (Type{MbedTLS.SSLConfig}, Bool,))
    precompile(MbedTLS.__init__, (typeof(MbedTLS.__init__),))
    precompile(MbedTLS.readavailable, (typeof(Base.readavailable), MbedTLS.SSLContext,))
    precompile(MbedTLS.ca_chain!, (typeof(MbedTLS.ca_chain!), MbedTLS.SSLConfig,))
    precompile(MbedTLS.parse_keyfile, (typeof(MbedTLS.parse_keyfile), String, String,))
end