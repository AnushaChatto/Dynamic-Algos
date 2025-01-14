extends Node2D

var start
var output
var temp
var i = int(1)
var sum
# Called when the node enters the scene tree for the first time.
#func fibo(start):
	#output = ""
	#if (int(start)<=1):
		#output=start
	#else:
		#output=[start,start]
		#while(i<10):
			#temp = output[i-1]+output[i]
			#output.append(temp)
			#i= i+1

func fibo(start):
	var output = []
	if int(start) <= 1:
		output.append(start)
	else:
		output = [start, start]
		var i = 2
		while i < 10:
			var temp = output[i-1] + output[i-2]
			output.append(temp)
			i += 1
	return output

func _ready() -> void:
	
	pass # Replace with function body.1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	start = get_node("TextEdit").text
	if start.is_valid_integer():
		fibo(start)
		print(output)
		get_node("Container").text = output.join(", ")
	pass
