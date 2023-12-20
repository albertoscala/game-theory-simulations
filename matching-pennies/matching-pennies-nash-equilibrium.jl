# Create list of players
players = [
    Dict("strategy" => 0, "coin" => 0, "points" => 0),
    Dict("strategy" => 0, "coin" => 0, "points" => 0)
]

# Randomly choose strategies for each player
for player in players
    player["strategy"] = rand(0:1)
end

# Choose coin side for each player
for player in players
    player["coin"] = rand(0:1)
end

# Create payoff matrix
payoff_matrix = [
    [(1, -1), (-1, 1)],
    [(-1, 1), (1, -1)]
]

# Calculate points for each player
if players[1]["coin"] == players[2]["coin"]
    if players[1]["strategy"] == 0
        players[1]["points"] += 1
    else
        players[1]["points"] -= 1
    end
    if players[1]["strategy"] == 0
        players[1]["points"] += 1
    else
        players[1]["points"] -= 1
    end
else
    if players[1]["strategy"] == 1
        players[1]["points"] += 1
    else
        players[1]["points"] -= 1
    end
    if players[1]["strategy"] == 1
        players[1]["points"] += 1
    else
        players[1]["points"] -= 1
    end
end
