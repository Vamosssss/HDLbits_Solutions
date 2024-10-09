module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging ); 

    localparam [2:0] WALK_L = 3'b000,
                     WALK_R = 3'b001,
                     FALL_L = 3'b010,
                     FALL_R = 3'b011,
                     DIG_L  = 3'b100,
                     DIG_R  = 3'b101;

    reg [2:0] state, next_state;

    always @(posedge clk or posedge areset) begin
        if(areset) 
            state <= WALK_L;
        else 
            state <= next_state;
    end

    always @(*) begin
        case(state)
            WALK_L : next_state = (ground == 0) ? FALL_L : (dig ? DIG_L : (bump_left ? WALK_R : WALK_L));
            WALK_R : next_state = (ground == 0) ? FALL_R : (dig ? DIG_R : (bump_right ? WALK_L : WALK_R));
            FALL_L : next_state = (ground) ? WALK_L : FALL_L;
            FALL_R : next_state = (ground) ? WALK_R : FALL_R;
            DIG_L  : next_state = (ground) ? DIG_L : FALL_L;
            DIG_R  : next_state = (ground) ? DIG_R : FALL_R;
        endcase
    end


  //WALK_L : next_state = (ground == 0) ? FALL_L : (dig ? DIG_L : (bump_left ? WALK_R : WALK_L));
  //WALK_R : next_state = (ground == 0) ? FALL_R : (dig ? DIG_R : (bump_right ? WALK_L : WALK_R));
  
  /* We can use if-else when we should consider many status
  
            WALK_L : begin     
                if(!ground) next_state = FALL_L;
                else begin
                    if(dig) next_state = DIG_L;
                    else begin
                        if(bump_left) next_state = WALK_R;
                        else next_state = WALK_L;
                    end
                end
            end
            WALK_R : begin
                if(!ground) next_state = FALL_R;
                else begin
                    if(dig) next_state = DIG_R;
                    else begin
                        if(bump_right) next_state = WALK_L;
                        else next_state = WALK_R;
                    end
                end
            end
                                                        */

    assign walk_left = (state == WALK_L);
    assign walk_right = (state == WALK_R);
    assign aaah = ((state == FALL_L) || (state == FALL_R));
    assign digging = ((state == DIG_L) || (state == DIG_R));

endmodule
