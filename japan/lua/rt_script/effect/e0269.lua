--print("character_id", character_id);
--print("movie_name", movie_name);
--print("size", size);

effect_offset_table = {
ef_001 = {25, 10},
ef_002 = {10, 10},
ef_007 = {-10, -60},
ef_010 = {40, 0}
};

offset = effect_offset_table[movie_name];
x = offset[1];
y = offset[2];

scale = 1.1;
x_scale = scale;
y_scale = scale;

if is_enemy then
x = -x;
x_scale = -x_scale;
end

setPosition(x_offset + x, y);
setScale(x_scale, y_scale);
