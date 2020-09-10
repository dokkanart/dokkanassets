--print("character_id", character_id);
--print("movie_name", movie_name);
--print("size", size);

effect_offset_table = { ef_001 = {10, 20}, ef_002 = {10, 10}, ef_007 = {0, -60}, ef_010 = {40, 0} };

offset = effect_offset_table[movie_name];
x = offset[1];
y = offset[2];

effect_scale_table = {
    0.5,
    0.5,
    1.0,
    1.0,
    1.0,
    1.0,
    1.2,
    1.3,
    1.5,
    2.0,
};

scale = 0.8;
x_scale = scale;
y_scale = scale;

if is_player then
    --print("is_player");
end

if is_enemy then
    x = -x;
    x_scale = -x_scale;
    --print("is_enemy");
end

--print("x", x_offset + x, "y", y);

setPosition(x_offset + x, y);
setScale(x_scale, y_scale);


--亀仙人
