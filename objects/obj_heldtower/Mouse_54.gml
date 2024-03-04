/// @desc

switch (global.heldtower) {
    case "cannon":
		switch (dir) {
		    case "L":
		        dir = "U"
				
				
		        break;
		    case "U":
		        dir = "R"
				
		        break;
		    case "R":
		        dir = "D"
				
		        break;
		    case "D":
		        dir = "L"
				
		        break;
		    default:
		        break;
		}
        break;
    case "knight":
        break;
    default:
        break;
}