module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

wire [7:0] connect [3:0];
wire connect2 [3:0];
wire [7:0] connect3 [3:0];

wire [7:0] m0, m1, m2, m3;
wire s0, s1, s2, s3;


//    demux one(
//    .A(connect[0]),
//    .B(connect[1]),
//    .C(connect[2]),
//    .D(connect[3]),
//    .sel(addr),
//    .data(data)
//    );
    
//    btn_demux two(
//    .A(connect2[0]),
//    .B(connect2[1]),
//    .C(connect2[2]),
//    .D(connect2[3]),
//    .sel(addr),
//    .data(store)
//    );
    
    byte_memory instone(
    .data(data),
    .store(s0),
    .memory(m0)
    );
    
    byte_memory insttwo(
     .data(data),
    .store(s1),
    .memory(m1)
    );
    
    byte_memory instthree(
    .data(data),
    .store(s2),
    .memory(m2)
    );
    
    byte_memory instfour(
    .data(data),
    .store(s3),
    .memory(m3)
    );
    
//    mux inst(
//    .A(connect3[0]),
//    .B(connect3[1]),
//    .C(connect3[2]),
//    .D(connect3[3]),
//    .Sel(addr),
//    .Y(memory),
//    .Enable(1'b1)
//    );

assign memory = (addr == 'b00) ? m0:
                     (addr == 'b01) ? m1:
                     (addr == 'b10) ? m2:
                     (addr == 'b11) ? m3: 0;

assign s0 = (addr == 'b00) ? store: 0;
assign s1 = (addr == 'b01) ? store: 0;
assign s2 = (addr == 'b10) ? store: 0;
assign s3 = (addr == 'b11) ? store: 0;


endmodule
