struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightPos : vec4<f32>,
  x_LightColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat20 : f32;
  var u_xlat7 : f32;
  var u_xlat8 : f32;
  var u_xlatb7 : bool;
  var u_xlatb12 : bool;
  var u_xlat12 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_ProjectionParams.z;
  let x_26 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_21 / x_26);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  let x_34 : vec3<f32> = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_34.x, x_34.y, x_34.z, x_35.w);
  let x_42 : vec4<f32> = vs_TEXCOORD0;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  u_xlat1 = (vec2<f32>(x_42.x, x_42.y) / vec2<f32>(x_44.w, x_44.w));
  let x_58 : vec2<f32> = u_xlat1;
  let x_59 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_58);
  u_xlat18 = x_59.x;
  let x_63 : f32 = x_14.x_ZBufferParams.x;
  let x_64 : f32 = u_xlat18;
  let x_68 : f32 = x_14.x_ZBufferParams.y;
  u_xlat18 = ((x_63 * x_64) + x_68);
  let x_71 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_71);
  let x_73 : f32 = u_xlat18;
  let x_75 : vec4<f32> = u_xlat0;
  let x_77 : vec3<f32> = (vec3<f32>(x_73, x_73, x_73) * vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_82 : vec4<f32> = u_xlat0;
  let x_87 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  u_xlat2 = (vec3<f32>(x_82.y, x_82.y, x_82.y) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_92 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_94 : vec4<f32> = u_xlat0;
  let x_97 : vec3<f32> = u_xlat2;
  let x_98 : vec3<f32> = ((vec3<f32>(x_92.x, x_92.y, x_92.z) * vec3<f32>(x_94.x, x_94.x, x_94.x)) + x_97);
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_98.x, x_98.y, x_99.z, x_98.z);
  let x_102 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_104 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.y, x_102.z) * vec3<f32>(x_104.z, x_104.z, x_104.z)) + vec3<f32>(x_107.x, x_107.y, x_107.w));
  let x_110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_117 : vec3<f32> = (vec3<f32>(x_112.x, x_112.y, x_112.z) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat0;
  let x_124 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  u_xlat2 = (vec3<f32>(x_120.x, x_120.y, x_120.z) + -(x_124));
  let x_127 : vec3<f32> = u_xlat2;
  let x_128 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_127, x_128);
  let x_130 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_130);
  let x_132 : f32 = u_xlat18;
  let x_134 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_132, x_132, x_132) * x_134);
  let x_137 : vec4<f32> = u_xlat0;
  let x_142 : vec4<f32> = x_14.x_LightPos;
  let x_144 : vec3<f32> = (-(vec3<f32>(x_137.x, x_137.y, x_137.z)) + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_147 : vec4<f32> = u_xlat3;
  let x_149 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_147.x, x_147.y, x_147.z), vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_153 : f32 = u_xlat18;
  u_xlat13 = inverseSqrt(x_153);
  let x_155 : f32 = u_xlat18;
  let x_158 : f32 = x_14.x_LightPos.w;
  u_xlat18 = (x_155 * x_158);
  let x_165 : f32 = u_xlat18;
  let x_167 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_165, x_165));
  u_xlat18 = x_167.x;
  let x_170 : vec4<f32> = u_xlat3;
  let x_172 : f32 = u_xlat13;
  let x_175 : vec3<f32> = u_xlat2;
  u_xlat4 = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172, x_172, x_172)) + -(x_175));
  let x_178 : f32 = u_xlat13;
  let x_180 : vec4<f32> = u_xlat3;
  let x_182 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec3<f32> = u_xlat4;
  let x_186 : vec3<f32> = u_xlat4;
  u_xlat13 = dot(x_185, x_186);
  let x_188 : f32 = u_xlat13;
  u_xlat13 = max(x_188, 0.001f);
  let x_191 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_191);
  let x_193 : f32 = u_xlat13;
  let x_195 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_193, x_193, x_193) * x_195);
  let x_203 : vec2<f32> = u_xlat1;
  let x_204 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, x_203);
  let x_205 : vec3<f32> = vec3<f32>(x_204.x, x_204.y, x_204.z);
  let x_206 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat5;
  let x_215 : vec3<f32> = ((vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_216 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat5;
  let x_220 : vec4<f32> = u_xlat5;
  u_xlat13 = dot(vec3<f32>(x_218.x, x_218.y, x_218.z), vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_223);
  let x_225 : f32 = u_xlat13;
  let x_227 : vec4<f32> = u_xlat5;
  let x_229 : vec3<f32> = (vec3<f32>(x_225, x_225, x_225) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat5;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat13 = dot(vec3<f32>(x_232.x, x_232.y, x_232.z), x_234);
  let x_236 : f32 = u_xlat13;
  u_xlat13 = clamp(x_236, 0.0f, 1.0f);
  let x_240 : vec4<f32> = u_xlat3;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat19 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), x_242);
  let x_244 : f32 = u_xlat19;
  u_xlat19 = clamp(x_244, 0.0f, 1.0f);
  let x_247 : vec4<f32> = u_xlat5;
  let x_249 : vec4<f32> = u_xlat3;
  u_xlat20 = dot(vec3<f32>(x_247.x, x_247.y, x_247.z), vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : f32 = u_xlat20;
  u_xlat20 = clamp(x_252, 0.0f, 1.0f);
  let x_254 : vec4<f32> = u_xlat5;
  let x_256 : vec3<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_254.x, x_254.y, x_254.z), -(x_256));
  let x_265 : vec2<f32> = u_xlat1;
  let x_266 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, x_265);
  u_xlat3 = x_266;
  let x_272 : vec2<f32> = u_xlat1;
  let x_273 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, x_272);
  u_xlat4 = vec3<f32>(x_273.x, x_273.y, x_273.z);
  let x_275 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec4<f32>(x_275.w, x_275.x, x_275.y, x_275.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_281 : f32 = u_xlat5.x;
  let x_283 : f32 = u_xlat5.x;
  u_xlat1.x = (x_281 * x_283);
  let x_287 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_287, 0.002f);
  let x_293 : f32 = u_xlat1.x;
  let x_295 : f32 = u_xlat1.x;
  u_xlat7 = (x_293 * x_295);
  let x_298 : f32 = u_xlat13;
  let x_299 : f32 = u_xlat7;
  let x_301 : f32 = u_xlat13;
  u_xlat8 = ((x_298 * x_299) + -(x_301));
  let x_304 : f32 = u_xlat8;
  let x_305 : f32 = u_xlat13;
  u_xlat13 = ((x_304 * x_305) + 1.0f);
  let x_308 : f32 = u_xlat13;
  let x_309 : f32 = u_xlat13;
  u_xlat13 = ((x_308 * x_309) + 0.0000001f);
  let x_313 : f32 = u_xlat7;
  u_xlat7 = (x_313 * 0.318309873f);
  let x_316 : f32 = u_xlat7;
  let x_317 : f32 = u_xlat13;
  u_xlat7 = (x_316 / x_317);
  let x_320 : f32 = u_xlat1.x;
  u_xlat13 = (-(x_320) + 1.0f);
  let x_324 : f32 = u_xlat2.x;
  let x_326 : f32 = u_xlat13;
  let x_329 : f32 = u_xlat1.x;
  u_xlat8 = ((abs(x_324) * x_326) + x_329);
  let x_331 : f32 = u_xlat20;
  let x_332 : f32 = u_xlat13;
  let x_335 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_331 * x_332) + x_335);
  let x_339 : f32 = u_xlat1.x;
  let x_341 : f32 = u_xlat2.x;
  u_xlat1.x = (x_339 * abs(x_341));
  let x_346 : f32 = u_xlat2.x;
  u_xlat13 = (-(abs(x_346)) + 1.0f);
  let x_350 : f32 = u_xlat20;
  let x_351 : f32 = u_xlat8;
  let x_354 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_350 * x_351) + x_354);
  let x_358 : f32 = u_xlat1.x;
  u_xlat1.x = (x_358 + 0.00001f);
  let x_364 : f32 = u_xlat1.x;
  u_xlat1.x = (0.5f / x_364);
  let x_367 : f32 = u_xlat7;
  let x_369 : f32 = u_xlat1.x;
  u_xlat1.x = (x_367 * x_369);
  let x_372 : f32 = u_xlat20;
  let x_374 : f32 = u_xlat1.x;
  u_xlat1.x = (x_372 * x_374);
  let x_378 : f32 = u_xlat1.x;
  u_xlat1.x = (x_378 * 3.141592741f);
  let x_383 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_383, 0.0f);
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat7 = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_394 : f32 = u_xlat7;
  u_xlatb7 = !((x_394 == 0.0f));
  let x_396 : bool = u_xlatb7;
  u_xlat7 = select(0.0f, 1.0f, x_396);
  let x_398 : f32 = u_xlat7;
  let x_400 : f32 = u_xlat1.x;
  u_xlat1.x = (x_398 * x_400);
  let x_403 : vec4<f32> = u_xlat0;
  let x_407 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat2 = (vec3<f32>(x_403.y, x_403.y, x_403.y) * vec3<f32>(x_407.x, x_407.y, x_407.w));
  let x_411 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_413 : vec4<f32> = u_xlat0;
  let x_416 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_411.x, x_411.y, x_411.w) * vec3<f32>(x_413.x, x_413.x, x_413.x)) + x_416);
  let x_419 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_421 : vec4<f32> = u_xlat0;
  let x_424 : vec3<f32> = u_xlat2;
  let x_425 : vec3<f32> = ((vec3<f32>(x_419.x, x_419.y, x_419.w) * vec3<f32>(x_421.z, x_421.z, x_421.z)) + x_424);
  let x_426 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat0;
  let x_431 : vec4<f32> = x_14.unity_WorldToLight[3i];
  let x_433 : vec3<f32> = (vec3<f32>(x_428.x, x_428.y, x_428.z) + vec3<f32>(x_431.x, x_431.y, x_431.w));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat0;
  let x_438 : vec4<f32> = u_xlat0;
  let x_440 : vec2<f32> = (vec2<f32>(x_436.x, x_436.y) / vec2<f32>(x_438.z, x_438.z));
  let x_441 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_445 : f32 = u_xlat0.z;
  u_xlatb12 = (x_445 < 0.0f);
  let x_448 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_448);
  let x_455 : vec4<f32> = u_xlat0;
  let x_458 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_455.x, x_455.y), -8.0f);
  u_xlat0.x = x_458.w;
  let x_461 : f32 = u_xlat12;
  let x_463 : f32 = u_xlat0.x;
  u_xlat0.x = (x_461 * x_463);
  let x_466 : f32 = u_xlat18;
  let x_468 : f32 = u_xlat0.x;
  u_xlat0.x = (x_466 * x_468);
  let x_471 : vec4<f32> = u_xlat0;
  let x_475 : vec4<f32> = x_14.x_LightColor;
  let x_477 : vec3<f32> = (vec3<f32>(x_471.x, x_471.x, x_471.x) * vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : vec2<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482.x, x_482.x, x_482.x));
  let x_485 : f32 = u_xlat19;
  u_xlat18 = (-(x_485) + 1.0f);
  let x_488 : f32 = u_xlat19;
  let x_489 : f32 = u_xlat19;
  u_xlat1.x = (x_488 * x_489);
  let x_492 : vec2<f32> = u_xlat1;
  let x_494 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec2<f32>(x_492.x, x_492.x), vec2<f32>(x_494.x, x_494.x));
  let x_499 : f32 = u_xlat1.x;
  u_xlat1.x = (x_499 + -0.5f);
  let x_503 : f32 = u_xlat18;
  let x_504 : f32 = u_xlat18;
  u_xlat7 = (x_503 * x_504);
  let x_506 : f32 = u_xlat7;
  let x_507 : f32 = u_xlat7;
  u_xlat7 = (x_506 * x_507);
  let x_509 : f32 = u_xlat18;
  let x_510 : f32 = u_xlat7;
  u_xlat18 = (x_509 * x_510);
  let x_512 : vec4<f32> = u_xlat5;
  let x_514 : f32 = u_xlat18;
  let x_517 : vec4<f32> = u_xlat3;
  let x_519 : vec3<f32> = ((vec3<f32>(x_512.y, x_512.z, x_512.w) * vec3<f32>(x_514, x_514, x_514)) + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec3<f32> = u_xlat2;
  let x_523 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_522 * vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : f32 = u_xlat13;
  let x_527 : f32 = u_xlat13;
  u_xlat18 = (x_526 * x_527);
  let x_529 : f32 = u_xlat18;
  let x_530 : f32 = u_xlat18;
  u_xlat18 = (x_529 * x_530);
  let x_532 : f32 = u_xlat13;
  let x_533 : f32 = u_xlat18;
  u_xlat18 = (x_532 * x_533);
  let x_536 : f32 = u_xlat1.x;
  let x_537 : f32 = u_xlat18;
  u_xlat18 = ((x_536 * x_537) + 1.0f);
  let x_540 : f32 = u_xlat20;
  u_xlat7 = (-(x_540) + 1.0f);
  let x_543 : f32 = u_xlat7;
  let x_544 : f32 = u_xlat7;
  u_xlat13 = (x_543 * x_544);
  let x_546 : f32 = u_xlat13;
  let x_547 : f32 = u_xlat13;
  u_xlat13 = (x_546 * x_547);
  let x_549 : f32 = u_xlat7;
  let x_550 : f32 = u_xlat13;
  u_xlat7 = (x_549 * x_550);
  let x_553 : f32 = u_xlat1.x;
  let x_554 : f32 = u_xlat7;
  u_xlat1.x = ((x_553 * x_554) + 1.0f);
  let x_558 : f32 = u_xlat18;
  let x_560 : f32 = u_xlat1.x;
  u_xlat18 = (x_558 * x_560);
  let x_562 : f32 = u_xlat20;
  let x_563 : f32 = u_xlat18;
  u_xlat18 = (x_562 * x_563);
  let x_565 : f32 = u_xlat18;
  let x_567 : vec4<f32> = u_xlat0;
  let x_569 : vec3<f32> = (vec3<f32>(x_565, x_565, x_565) * vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_574 : vec3<f32> = u_xlat4;
  let x_575 : vec4<f32> = u_xlat0;
  let x_578 : vec3<f32> = u_xlat2;
  let x_579 : vec3<f32> = ((x_574 * vec3<f32>(x_575.x, x_575.y, x_575.z)) + x_578);
  let x_580 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

