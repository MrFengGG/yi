extends Node

#经卦名
const base_gua_map = {
	0:"坤",
	1:"",
	2:"",
	3:"",
	4:"",
	5:"",
	6:"",
	7:"乾"
}

#爻图标映射
const yao_resource_map = {
	0:"",
	1:""
}

#数字转化为二进制数组
func gua_to_array(gua : int) -> Array:
	var result : Array = []
	while gua >= 1:
		var level = 0 if gua % 2 == 0 else 1
		gua /= 2
		result.append(level)
	return result

#二进制数组转化为数字
func array_to_gua(array : Array) -> int:
	var result : int = 0
	for i in range(array.size()):
		if array[i] == 0:
			continue
		result += pow(2, i)
	return result

#变卦
func get_change_gua(base : int, change_yao : int) -> int:
	return 0

#互卦
func get_connect_gua(base : int) -> int:
	return 0
