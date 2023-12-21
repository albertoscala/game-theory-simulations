# 0 => "cooperate", 1 => "defect"
prisoners = [
    Dict("strategy" => 0, "years" => 0),
    Dict("strategy" => 0, "years" => 0)
]

# Randomly choose strategies for each prisoner
for prisoner in prisoners
    prisoner["strategy"] = rand(0:1)
end

# Create payoff matrix
payoff_matrix = [
    [(6, 6), (0, 7)],
    [(7, 0), (1, 1)]
]

# Calculate years for each prisoner
prisoners[1]["years"] = payoff_matrix[prisoners[1]["strategy"]+1][prisoners[2]["strategy"]+1][1]
prisoners[2]["years"] = payoff_matrix[prisoners[1]["strategy"]+1][prisoners[2]["strategy"]+1][2]

println("Prisoner 1: $(prisoners[1])")
println("Prisoner 2: $(prisoners[2])")