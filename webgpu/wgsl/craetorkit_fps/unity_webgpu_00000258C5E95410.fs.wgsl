struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding : u32,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_68 : PGlobals;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_328 : f32;
  var x_340 : f32;
  var x_352 : f32;
  var x_475 : f32;
  var x_487 : f32;
  var x_499 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat2 = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_51, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_58 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_58, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_64 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_64);
  let x_73 : f32 = x_68.x_Grain_Params1.x;
  let x_74 : f32 = u_xlat9;
  u_xlat9 = ((x_73 * -(x_74)) + 1.0f);
  let x_78 : vec2<f32> = vs_TEXCOORD1;
  let x_82 : vec4<f32> = x_68.x_Grain_Params2;
  let x_86 : vec4<f32> = x_68.x_Grain_Params2;
  let x_88 : vec2<f32> = ((x_78 * vec2<f32>(x_82.x, x_82.y)) + vec2<f32>(x_86.z, x_86.w));
  let x_89 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_88.x, x_88.y, x_89.z);
  let x_96 : vec3<f32> = u_xlat2;
  let x_98 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_96.x, x_96.y));
  u_xlat2 = vec3<f32>(x_98.x, x_98.y, x_98.z);
  let x_100 : vec4<f32> = u_xlat0;
  let x_102 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_100.x, x_100.y, x_100.z) * x_102);
  let x_104 : vec3<f32> = u_xlat2;
  let x_107 : f32 = x_68.x_Grain_Params1.y;
  let x_109 : f32 = x_68.x_Grain_Params1.y;
  let x_111 : f32 = x_68.x_Grain_Params1.y;
  u_xlat2 = (x_104 * vec3<f32>(x_107, x_109, x_111));
  let x_114 : vec3<f32> = u_xlat2;
  let x_115 : f32 = u_xlat9;
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec3<f32> = ((x_114 * vec3<f32>(x_115, x_115, x_115)) + vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_123 : vec4<f32> = u_xlat1;
  let x_126 : f32 = x_68.x_PostExposure;
  let x_128 : f32 = x_68.x_PostExposure;
  let x_130 : f32 = x_68.x_PostExposure;
  let x_132 : f32 = x_68.x_PostExposure;
  let x_133 : vec4<f32> = vec4<f32>(x_126, x_128, x_130, x_132);
  u_xlat0 = (x_123 * vec4<f32>(x_133.x, x_133.y, x_133.z, x_133.w));
  let x_140 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = ((vec3<f32>(x_140.z, x_140.x, x_140.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_154 : f32 = u_xlat0.w;
  SV_Target0.w = x_154;
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = log2(vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_162 : vec4<f32> = u_xlat0;
  let x_169 : vec3<f32> = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec4<f32> = u_xlat0;
  let x_176 : vec3<f32> = clamp(vec3<f32>(x_172.x, x_172.y, x_172.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = u_xlat0;
  let x_185 : vec3<f32> = x_68.x_Lut2D_Params;
  u_xlat3 = (vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_185.z, x_185.z, x_185.z));
  let x_189 : vec3<f32> = x_68.x_Lut2D_Params;
  let x_193 : vec2<f32> = (vec2<f32>(x_189.x, x_189.y) * vec2<f32>(0.5f, 0.5f));
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_193.x, x_193.y, x_194.z, x_194.w);
  let x_196 : vec3<f32> = u_xlat3;
  let x_199 : vec3<f32> = x_68.x_Lut2D_Params;
  let x_202 : vec4<f32> = u_xlat1;
  let x_204 : vec2<f32> = ((vec2<f32>(x_196.y, x_196.z) * vec2<f32>(x_199.x, x_199.y)) + vec2<f32>(x_202.x, x_202.y));
  let x_205 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_205.x, x_204.x, x_204.y, x_205.w);
  let x_208 : f32 = u_xlat3.x;
  u_xlat3.x = floor(x_208);
  let x_212 : f32 = u_xlat3.x;
  let x_214 : f32 = x_68.x_Lut2D_Params.y;
  let x_217 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_212 * x_214) + x_217);
  let x_221 : f32 = u_xlat0.x;
  let x_224 : f32 = x_68.x_Lut2D_Params.z;
  let x_227 : f32 = u_xlat3.x;
  u_xlat0.x = ((x_221 * x_224) + -(x_227));
  let x_232 : f32 = x_68.x_Lut2D_Params.y;
  u_xlat2.x = x_232;
  u_xlat2.y = 0.0f;
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = u_xlat2;
  let x_239 : vec2<f32> = (vec2<f32>(x_235.x, x_235.z) + vec2<f32>(x_237.x, x_237.y));
  let x_240 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_239.x, x_239.y, x_240.z);
  let x_247 : vec4<f32> = u_xlat1;
  let x_249 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_247.x, x_247.z));
  let x_250 : vec3<f32> = vec3<f32>(x_249.x, x_249.y, x_249.z);
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_256 : vec3<f32> = u_xlat3;
  let x_258 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_256.x, x_256.y));
  u_xlat3 = vec3<f32>(x_258.x, x_258.y, x_258.z);
  let x_260 : vec4<f32> = u_xlat1;
  let x_263 : vec3<f32> = u_xlat3;
  u_xlat3 = (-(vec3<f32>(x_260.x, x_260.y, x_260.z)) + x_263);
  let x_265 : vec4<f32> = u_xlat0;
  let x_267 : vec3<f32> = u_xlat3;
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.x, x_265.x) * x_267) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat0;
  let x_279 : vec3<f32> = max(abs(vec3<f32>(x_274.x, x_274.y, x_274.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_280 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec4<f32> = u_xlat1;
  let x_284 : vec3<f32> = log2(vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec3<f32> = exp2(vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : vec4<f32> = u_xlat1;
  let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_307 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_320 : vec4<f32> = u_xlat0;
  let x_323 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_320.x, x_320.y, x_320.z, x_320.x));
  u_xlatb0 = vec3<bool>(x_323.x, x_323.y, x_323.z);
  let x_327 : bool = u_xlatb0.x;
  if (x_327) {
    let x_332 : f32 = u_xlat2.x;
    x_328 = x_332;
  } else {
    let x_335 : f32 = u_xlat1.x;
    x_328 = x_335;
  }
  let x_336 : f32 = x_328;
  u_xlat0.x = x_336;
  let x_339 : bool = u_xlatb0.y;
  if (x_339) {
    let x_344 : f32 = u_xlat2.y;
    x_340 = x_344;
  } else {
    let x_347 : f32 = u_xlat1.y;
    x_340 = x_347;
  }
  let x_348 : f32 = x_340;
  u_xlat0.y = x_348;
  let x_351 : bool = u_xlatb0.z;
  if (x_351) {
    let x_356 : f32 = u_xlat2.z;
    x_352 = x_356;
  } else {
    let x_359 : f32 = u_xlat1.z;
    x_352 = x_359;
  }
  let x_360 : f32 = x_352;
  u_xlat0.z = x_360;
  let x_362 : vec2<f32> = vs_TEXCOORD0;
  let x_365 : vec4<f32> = x_68.x_Dithering_Coords;
  let x_369 : vec4<f32> = x_68.x_Dithering_Coords;
  let x_371 : vec2<f32> = ((x_362 * vec2<f32>(x_365.x, x_365.y)) + vec2<f32>(x_369.z, x_369.w));
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
  let x_379 : vec4<f32> = u_xlat1;
  let x_381 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_379.x, x_379.y));
  u_xlat9 = x_381.w;
  let x_383 : f32 = u_xlat9;
  u_xlat9 = ((x_383 * 2.0f) + -1.0f);
  let x_388 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_388)) + 1.0f);
  let x_393 : f32 = u_xlat9;
  u_xlat9 = ((x_393 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_397 : f32 = u_xlat9;
  u_xlat9 = clamp(x_397, 0.0f, 1.0f);
  let x_399 : f32 = u_xlat9;
  u_xlat9 = ((x_399 * 2.0f) + -1.0f);
  let x_403 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_403);
  let x_407 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_407) + 1.0f);
  let x_411 : f32 = u_xlat9;
  let x_413 : f32 = u_xlat1.x;
  u_xlat9 = (x_411 * x_413);
  let x_415 : f32 = u_xlat9;
  let x_420 : vec4<f32> = u_xlat0;
  let x_422 : vec3<f32> = ((vec3<f32>(x_415, x_415, x_415) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat0;
  let x_429 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_430 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat1;
  let x_436 : vec3<f32> = (vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_437 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat1;
  let x_442 : vec3<f32> = max(abs(vec3<f32>(x_439.x, x_439.y, x_439.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_443 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat1;
  let x_447 : vec3<f32> = log2(vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat1;
  let x_454 : vec3<f32> = (vec3<f32>(x_450.x, x_450.y, x_450.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec3<f32> = exp2(vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_469 : vec4<f32> = u_xlat0;
  let x_471 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_469.x, x_469.y, x_469.z, x_469.x));
  u_xlatb0 = vec3<bool>(x_471.x, x_471.y, x_471.z);
  let x_474 : bool = u_xlatb0.x;
  if (x_474) {
    let x_479 : f32 = u_xlat2.x;
    x_475 = x_479;
  } else {
    let x_482 : f32 = u_xlat1.x;
    x_475 = x_482;
  }
  let x_483 : f32 = x_475;
  SV_Target0.x = x_483;
  let x_486 : bool = u_xlatb0.y;
  if (x_486) {
    let x_491 : f32 = u_xlat2.y;
    x_487 = x_491;
  } else {
    let x_494 : f32 = u_xlat1.y;
    x_487 = x_494;
  }
  let x_495 : f32 = x_487;
  SV_Target0.y = x_495;
  let x_498 : bool = u_xlatb0.z;
  if (x_498) {
    let x_503 : f32 = u_xlat2.z;
    x_499 = x_503;
  } else {
    let x_506 : f32 = u_xlat1.z;
    x_499 = x_506;
  }
  let x_507 : f32 = x_499;
  SV_Target0.z = x_507;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

