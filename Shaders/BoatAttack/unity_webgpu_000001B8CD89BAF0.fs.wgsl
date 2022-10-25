struct PGlobals {
  x_Offsets : vec4<f32>,
  x_SlopeEnableFlags : vec4<f32>,
  x_AddressMode : f32,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_47 : PGlobals;

@group(0) @binding(3) var x_TopTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_TopTex : sampler;

@group(0) @binding(1) var x_RightTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_RightTex : sampler;

@group(0) @binding(2) var x_BottomTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_BottomTex : sampler;

@group(0) @binding(0) var x_LeftTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_LeftTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec2<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlat7 : f32;
  var u_xlatu0 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec4<f32> = vs_TEXCOORD0;
  let x_40 : vec2<f32> = (-(vec2<f32>(x_35.y, x_35.x)) + vec2<f32>(1.0f, 1.0f));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_41.z, x_41.w);
  let x_43 : vec4<f32> = u_xlat0;
  let x_51 : f32 = x_47.x_AddressMode;
  let x_53 : vec2<f32> = (vec2<f32>(x_43.x, x_43.y) * vec2<f32>(x_51, x_51));
  let x_54 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_53.x, x_53.y, x_54.z, x_54.w);
  let x_56 : vec4<f32> = vs_TEXCOORD0;
  let x_57 : vec2<f32> = vec2<f32>(x_56.x, x_56.y);
  let x_58 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_58.x, x_58.y, x_57.x, x_57.y);
  let x_70 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = textureSample(x_TopTex, sampler_TopTex, vec2<f32>(x_70.z, x_70.x));
  let x_73 : vec2<f32> = vec2<f32>(x_72.x, x_72.y);
  let x_74 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_74.y, x_73.y, x_74.w);
  let x_84 : vec4<f32> = u_xlat0;
  let x_86 : vec4<f32> = textureSample(x_RightTex, sampler_RightTex, vec2<f32>(x_84.y, x_84.w));
  let x_87 : vec2<f32> = vec2<f32>(x_86.x, x_86.y);
  let x_88 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_87.x, x_88.y, x_87.y);
  let x_93 : f32 = u_xlat4.z;
  let x_98 : f32 = u_xlat4.x;
  u_xlat0.y = ((x_93 * 256.0f) + x_98);
  let x_103 : f32 = u_xlat0.z;
  let x_106 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_103 * 256.0f) + x_106);
  let x_110 : vec4<f32> = u_xlat0;
  let x_114 : vec2<f32> = (vec2<f32>(x_110.x, x_110.y) * vec2<f32>(0.00389105058f, 0.00389105058f));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_115.y, x_115.z, x_114.y);
  let x_117 : vec4<f32> = vs_TEXCOORD0;
  let x_121 : f32 = x_47.x_AddressMode;
  let x_124 : vec2<f32> = ((-(vec2<f32>(x_117.y, x_117.x)) * vec2<f32>(x_121, x_121)) + vec2<f32>(1.0f, 1.0f));
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_124.x, x_124.y, x_125.z, x_125.w);
  let x_127 : vec4<f32> = vs_TEXCOORD0;
  let x_128 : vec2<f32> = vec2<f32>(x_127.x, x_127.y);
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_129.x, x_129.y, x_128.x, x_128.y);
  let x_136 : vec4<f32> = u_xlat0;
  let x_138 : vec4<f32> = textureSample(x_BottomTex, sampler_BottomTex, vec2<f32>(x_136.z, x_136.x));
  let x_139 : vec2<f32> = vec2<f32>(x_138.x, x_138.y);
  let x_140 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_139.x, x_140.y, x_139.y, x_140.w);
  let x_147 : vec4<f32> = u_xlat0;
  let x_149 : vec4<f32> = textureSample(x_LeftTex, sampler_LeftTex, vec2<f32>(x_147.y, x_147.w));
  let x_150 : vec2<f32> = vec2<f32>(x_149.x, x_149.y);
  let x_151 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_150.x, x_151.y, x_150.y);
  let x_154 : f32 = u_xlat4.z;
  let x_157 : f32 = u_xlat4.x;
  u_xlat0.y = ((x_154 * 256.0f) + x_157);
  let x_161 : f32 = u_xlat0.z;
  let x_164 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_161 * 256.0f) + x_164);
  let x_167 : vec4<f32> = u_xlat0;
  let x_169 : vec2<f32> = (vec2<f32>(x_167.x, x_167.y) * vec2<f32>(0.00389105058f, 0.00389105058f));
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_170.x, x_169.x, x_169.y, x_170.w);
  let x_176 : vec4<f32> = textureSampleLevel(x_LeftTex, sampler_LeftTex, vec2<f32>(1.0f, 1.0f), 0.0f);
  let x_177 : vec2<f32> = vec2<f32>(x_176.x, x_176.y);
  let x_178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_177.x, x_177.y, x_178.z, x_178.w);
  let x_181 : f32 = u_xlat0.y;
  let x_184 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_181 * 256.0f) + x_184);
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = (x_188 * 0.00389105058f);
  let x_197 : vec4<f32> = textureSampleLevel(x_RightTex, sampler_RightTex, vec2<f32>(0.0f, 1.0f), 0.0f);
  u_xlat8 = vec2<f32>(x_197.x, x_197.y);
  let x_200 : f32 = u_xlat8.y;
  let x_203 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_200 * 256.0f) + x_203);
  let x_207 : f32 = u_xlat8.x;
  u_xlat0.y = (x_207 * 0.00389105058f);
  let x_210 : vec4<f32> = u_xlat0;
  let x_215 : vec4<f32> = x_47.x_Offsets;
  let x_217 : vec2<f32> = (vec2<f32>(x_210.x, x_210.y) + vec2<f32>(x_215.z, x_215.w));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_218.w);
  let x_222 : vec4<f32> = x_47.x_SlopeEnableFlags;
  let x_224 : vec4<f32> = u_xlat0;
  let x_228 : vec4<f32> = x_47.x_Offsets;
  let x_230 : vec2<f32> = ((vec2<f32>(x_222.y, x_222.y) * vec2<f32>(x_224.x, x_224.y)) + vec2<f32>(x_228.y, x_228.y));
  let x_231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_230.x, x_230.y, x_231.z, x_231.w);
  let x_234 : f32 = u_xlat0.x;
  let x_237 : f32 = u_xlat0.y;
  u_xlat4.x = (-(x_234) + x_237);
  let x_241 : vec4<f32> = vs_TEXCOORD0;
  let x_242 : vec2<f32> = vec2<f32>(x_241.w, x_241.z);
  let x_243 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_243.x, x_242.x, x_242.y, x_243.w);
  let x_245 : vec4<f32> = u_xlat2;
  let x_249 : vec2<f32> = clamp(vec2<f32>(x_245.y, x_245.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_250.x, x_249.x, x_249.y, x_250.w);
  let x_253 : f32 = u_xlat2.z;
  let x_255 : f32 = u_xlat4.x;
  let x_258 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_253 * x_255) + x_258);
  let x_266 : vec4<f32> = textureSampleLevel(x_LeftTex, sampler_LeftTex, vec2<f32>(1.0f, 0.0f), 0.0f);
  u_xlat3 = vec2<f32>(x_266.x, x_266.y);
  let x_269 : f32 = u_xlat3.y;
  let x_272 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_269 * 256.0f) + x_272);
  let x_276 : f32 = u_xlat3.x;
  u_xlat3.x = (x_276 * 0.00389105058f);
  let x_284 : vec4<f32> = textureSampleLevel(x_RightTex, sampler_RightTex, vec2<f32>(0.0f, 0.0f), 0.0f);
  u_xlat11 = vec2<f32>(x_284.x, x_284.y);
  let x_287 : f32 = u_xlat11.y;
  let x_290 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_287 * 256.0f) + x_290);
  let x_294 : f32 = u_xlat11.x;
  u_xlat3.y = (x_294 * 0.00389105058f);
  let x_297 : vec2<f32> = u_xlat3;
  let x_299 : vec4<f32> = x_47.x_Offsets;
  u_xlat3 = (x_297 + vec2<f32>(x_299.z, x_299.w));
  let x_303 : vec4<f32> = x_47.x_SlopeEnableFlags;
  let x_305 : vec2<f32> = u_xlat3;
  let x_308 : vec4<f32> = x_47.x_Offsets;
  u_xlat3 = ((vec2<f32>(x_303.x, x_303.x) * x_305) + vec2<f32>(x_308.x, x_308.x));
  let x_313 : f32 = u_xlat3.x;
  let x_316 : f32 = u_xlat3.y;
  u_xlat7 = (-(x_313) + x_316);
  let x_319 : f32 = u_xlat2.z;
  let x_320 : f32 = u_xlat7;
  let x_323 : f32 = u_xlat3.x;
  u_xlat0.y = ((x_319 * x_320) + x_323);
  let x_329 : vec4<f32> = textureSampleLevel(x_BottomTex, sampler_BottomTex, vec2<f32>(0.0f, 1.0f), 0.0f);
  u_xlat3 = vec2<f32>(x_329.x, x_329.y);
  let x_332 : f32 = u_xlat3.y;
  let x_335 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_332 * 256.0f) + x_335);
  let x_339 : f32 = u_xlat3.x;
  u_xlat3.x = (x_339 * 0.00389105058f);
  let x_345 : vec4<f32> = textureSampleLevel(x_TopTex, sampler_TopTex, vec2<f32>(0.0f, 0.0f), 0.0f);
  u_xlat11 = vec2<f32>(x_345.x, x_345.y);
  let x_348 : f32 = u_xlat11.y;
  let x_351 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_348 * 256.0f) + x_351);
  let x_355 : f32 = u_xlat11.x;
  u_xlat3.y = (x_355 * 0.00389105058f);
  let x_358 : vec2<f32> = u_xlat3;
  let x_360 : vec4<f32> = x_47.x_Offsets;
  u_xlat3 = (x_358 + vec2<f32>(x_360.x, x_360.y));
  let x_364 : vec4<f32> = x_47.x_SlopeEnableFlags;
  let x_366 : vec2<f32> = u_xlat3;
  let x_369 : vec4<f32> = x_47.x_Offsets;
  u_xlat3 = ((vec2<f32>(x_364.z, x_364.z) * x_366) + vec2<f32>(x_369.z, x_369.z));
  let x_373 : f32 = u_xlat3.x;
  let x_376 : f32 = u_xlat3.y;
  u_xlat7 = (-(x_373) + x_376);
  let x_379 : f32 = u_xlat2.y;
  let x_380 : f32 = u_xlat7;
  let x_383 : f32 = u_xlat3.x;
  u_xlat0.z = ((x_379 * x_380) + x_383);
  let x_389 : vec4<f32> = textureSampleLevel(x_BottomTex, sampler_BottomTex, vec2<f32>(1.0f, 1.0f), 0.0f);
  u_xlat3 = vec2<f32>(x_389.x, x_389.y);
  let x_392 : f32 = u_xlat3.y;
  let x_395 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_392 * 256.0f) + x_395);
  let x_399 : f32 = u_xlat3.x;
  u_xlat3.x = (x_399 * 0.00389105058f);
  let x_405 : vec4<f32> = textureSampleLevel(x_TopTex, sampler_TopTex, vec2<f32>(1.0f, 0.0f), 0.0f);
  u_xlat11 = vec2<f32>(x_405.x, x_405.y);
  let x_408 : f32 = u_xlat11.y;
  let x_411 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_408 * 256.0f) + x_411);
  let x_415 : f32 = u_xlat11.x;
  u_xlat3.y = (x_415 * 0.00389105058f);
  let x_418 : vec2<f32> = u_xlat3;
  let x_420 : vec4<f32> = x_47.x_Offsets;
  u_xlat3 = (x_418 + vec2<f32>(x_420.x, x_420.y));
  let x_424 : vec4<f32> = x_47.x_SlopeEnableFlags;
  let x_426 : vec2<f32> = u_xlat3;
  let x_429 : vec4<f32> = x_47.x_Offsets;
  u_xlat3 = ((vec2<f32>(x_424.w, x_424.w) * x_426) + vec2<f32>(x_429.w, x_429.w));
  let x_433 : f32 = u_xlat3.x;
  let x_436 : f32 = u_xlat3.y;
  u_xlat7 = (-(x_433) + x_436);
  let x_439 : f32 = u_xlat2.y;
  let x_440 : f32 = u_xlat7;
  let x_443 : f32 = u_xlat3.x;
  u_xlat0.w = ((x_439 * x_440) + x_443);
  let x_447 : vec4<f32> = u_xlat0;
  let x_448 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_447 + x_448);
  let x_450 : vec4<f32> = u_xlat2;
  let x_453 : vec2<f32> = (-(vec2<f32>(x_450.y, x_450.z)) + vec2<f32>(1.0f, 1.0f));
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_453.x, x_454.y, x_454.z, x_453.y);
  let x_456 : vec4<f32> = u_xlat2;
  u_xlat1 = max(x_456, vec4<f32>(0.0000001f, 0.0000001f, 0.0000001f, 0.0000001f));
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_461);
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_463, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_466 : vec4<f32> = u_xlat1;
  let x_467 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_466 / vec4<f32>(x_467.x, x_467.x, x_467.x, x_467.x));
  let x_470 : vec4<f32> = u_xlat0;
  let x_471 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_470, x_471);
  let x_475 : f32 = u_xlat0.x;
  u_xlat0.x = (x_475 * 65535.0f);
  let x_483 : f32 = u_xlat0.x;
  u_xlatu0.x = u32(x_483);
  let x_487 : u32 = u_xlatu0.x;
  u_xlatu0.y = (x_487 & 255u);
  let x_494 : u32 = u_xlatu0.x;
  param = x_494;
  param_1 = 8i;
  param_2 = 8i;
  let x_497 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  u_xlatu0.x = x_497;
  let x_499 : vec2<u32> = u_xlatu0;
  let x_501 : vec2<f32> = vec2<f32>(vec2<u32>(x_499.y, x_499.x));
  let x_502 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
  let x_506 : vec4<f32> = u_xlat1;
  let x_510 : vec2<f32> = (vec2<f32>(x_506.x, x_506.y) * vec2<f32>(0.003921569f, 0.003921569f));
  let x_511 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
  let x_513 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_513.x, x_513.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

