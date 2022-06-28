struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat9 : f32;

@group(0) @binding(0) var<uniform> x_68 : PGlobals;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(9) var sampler_Lut3D : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_273 : f32;
  var x_285 : f32;
  var x_298 : f32;
  var x_421 : f32;
  var x_433 : f32;
  var x_445 : f32;
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
  let x_147 : vec3<f32> = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
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
  let x_179 : vec4<f32> = u_xlat0;
  let x_184 : vec2<f32> = x_68.x_Lut3D_Params;
  let x_186 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) * vec3<f32>(x_184.y, x_184.y, x_184.y));
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : f32 = x_68.x_Lut3D_Params.x;
  u_xlat9 = (x_190 * 0.5f);
  let x_193 : vec4<f32> = u_xlat0;
  let x_196 : vec2<f32> = x_68.x_Lut3D_Params;
  let x_199 : f32 = u_xlat9;
  let x_201 : vec3<f32> = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_196.x, x_196.x, x_196.x)) + vec3<f32>(x_199, x_199, x_199));
  let x_202 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_212 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec3<f32> = vec3<f32>(x_214.x, x_214.y, x_214.z);
  let x_216 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat0;
  let x_223 : vec3<f32> = max(abs(vec3<f32>(x_218.x, x_218.y, x_218.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat1;
  let x_228 : vec3<f32> = log2(vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = (vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_240 : vec3<f32> = exp2(vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat1;
  let x_250 : vec3<f32> = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_264 : vec4<f32> = u_xlat0;
  let x_267 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_264.x, x_264.y, x_264.z, x_264.x));
  u_xlatb0 = vec3<bool>(x_267.x, x_267.y, x_267.z);
  let x_271 : bool = u_xlatb0.x;
  if (x_271) {
    let x_277 : f32 = u_xlat2.x;
    x_273 = x_277;
  } else {
    let x_280 : f32 = u_xlat1.x;
    x_273 = x_280;
  }
  let x_281 : f32 = x_273;
  u_xlat0.x = x_281;
  let x_284 : bool = u_xlatb0.y;
  if (x_284) {
    let x_289 : f32 = u_xlat2.y;
    x_285 = x_289;
  } else {
    let x_292 : f32 = u_xlat1.y;
    x_285 = x_292;
  }
  let x_293 : f32 = x_285;
  u_xlat0.y = x_293;
  let x_297 : bool = u_xlatb0.z;
  if (x_297) {
    let x_302 : f32 = u_xlat2.z;
    x_298 = x_302;
  } else {
    let x_305 : f32 = u_xlat1.z;
    x_298 = x_305;
  }
  let x_306 : f32 = x_298;
  u_xlat0.z = x_306;
  let x_308 : vec2<f32> = vs_TEXCOORD0;
  let x_311 : vec4<f32> = x_68.x_Dithering_Coords;
  let x_315 : vec4<f32> = x_68.x_Dithering_Coords;
  let x_317 : vec2<f32> = ((x_308 * vec2<f32>(x_311.x, x_311.y)) + vec2<f32>(x_315.z, x_315.w));
  let x_318 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_317.x, x_317.y, x_318.z, x_318.w);
  let x_325 : vec4<f32> = u_xlat1;
  let x_327 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_325.x, x_325.y));
  u_xlat9 = x_327.w;
  let x_329 : f32 = u_xlat9;
  u_xlat9 = ((x_329 * 2.0f) + -1.0f);
  let x_334 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_334)) + 1.0f);
  let x_339 : f32 = u_xlat9;
  u_xlat9 = ((x_339 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_343 : f32 = u_xlat9;
  u_xlat9 = clamp(x_343, 0.0f, 1.0f);
  let x_345 : f32 = u_xlat9;
  u_xlat9 = ((x_345 * 2.0f) + -1.0f);
  let x_349 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_349);
  let x_353 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_353) + 1.0f);
  let x_357 : f32 = u_xlat9;
  let x_359 : f32 = u_xlat1.x;
  u_xlat9 = (x_357 * x_359);
  let x_361 : f32 = u_xlat9;
  let x_366 : vec4<f32> = u_xlat0;
  let x_368 : vec3<f32> = ((vec3<f32>(x_361, x_361, x_361) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat0;
  let x_375 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_376 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec4<f32> = u_xlat1;
  let x_382 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat1;
  let x_388 : vec3<f32> = max(abs(vec3<f32>(x_385.x, x_385.y, x_385.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_393 : vec3<f32> = log2(vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : vec4<f32> = u_xlat1;
  let x_400 : vec3<f32> = (vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_401 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat1;
  let x_405 : vec3<f32> = exp2(vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_415 : vec4<f32> = u_xlat0;
  let x_417 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_415.x, x_415.y, x_415.z, x_415.x));
  u_xlatb0 = vec3<bool>(x_417.x, x_417.y, x_417.z);
  let x_420 : bool = u_xlatb0.x;
  if (x_420) {
    let x_425 : f32 = u_xlat2.x;
    x_421 = x_425;
  } else {
    let x_428 : f32 = u_xlat1.x;
    x_421 = x_428;
  }
  let x_429 : f32 = x_421;
  SV_Target0.x = x_429;
  let x_432 : bool = u_xlatb0.y;
  if (x_432) {
    let x_437 : f32 = u_xlat2.y;
    x_433 = x_437;
  } else {
    let x_440 : f32 = u_xlat1.y;
    x_433 = x_440;
  }
  let x_441 : f32 = x_433;
  SV_Target0.y = x_441;
  let x_444 : bool = u_xlatb0.z;
  if (x_444) {
    let x_449 : f32 = u_xlat2.z;
    x_445 = x_449;
  } else {
    let x_452 : f32 = u_xlat1.z;
    x_445 = x_452;
  }
  let x_453 : f32 = x_445;
  SV_Target0.z = x_453;
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

