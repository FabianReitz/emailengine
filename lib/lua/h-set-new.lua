local hashKey = KEYS[1];
local entryKey = ARGV[1];

local value = ARGV[2];

if redis.call("HEXISTS", hashKey, entryKey) == 0 then
    redis.call("HSET", hashKey, entryKey, value);
    return 1;
else
    return 0;
end;

