# Create list of players
players = [
    Dict("strategy" => 0, "coin" => 0, "points" => 0),
    Dict("strategy" => 0, "coin" => 0, "points" => 0)
]

# Randomly choose strategies for each player
for player in players
    player["strategy"] = rand(0:1)
end

# Create payoff matrix
payoff_matrix = [
    [(1, -1), (-1, 1)],
    [(-1, 1), (1, -1)]
]

# Choose coin side for each player
for player in players
    player["coin"] = rand(0:1)
end

# Calculate points for each player
players[1]["points"] = payoff_matrix[players[1]["coin"]+1][players[2]["coin"]+1][players[1]["strategy"]+1]
players[2]["points"] = payoff_matrix[players[1]["coin"]+1][players[2]["coin"]+1][players[2]["strategy"]+1]

println("Player 1: $(players[1])")
println("Player 2: $(players[2])")