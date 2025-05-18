def words_to_lua_byte_patterns(words):
    lua_lines = ["local BadWordBytePatterns = {"]
    for word in words:
        byte_seq = [str(ord(char)) for char in word]
        lua_lines.append(f"    {{ {', '.join(byte_seq)} }},")
    lua_lines.append("}")
    return "\n".join(lua_lines)

# Example placeholder input (user will replace this with actual sourced words)
example_input = ["example", "test", "sample"]

# Generate the Lua code
lua_output = words_to_lua_byte_patterns(example_input)
lua_output