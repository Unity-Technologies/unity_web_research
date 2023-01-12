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

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(8) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_272 : f32;
  var x_284 : f32;
  var x_297 : f32;
  var x_420 : f32;
  var x_432 : f32;
  var x_444 : f32;
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
    let x_276 : f32 = u_xlat2.x;
    x_272 = x_276;
  } else {
    let x_279 : f32 = u_xlat1.x;
    x_272 = x_279;
  }
  let x_280 : f32 = x_272;
  u_xlat0.x = x_280;
  let x_283 : bool = u_xlatb0.y;
  if (x_283) {
    let x_288 : f32 = u_xlat2.y;
    x_284 = x_288;
  } else {
    let x_291 : f32 = u_xlat1.y;
    x_284 = x_291;
  }
  let x_292 : f32 = x_284;
  u_xlat0.y = x_292;
  let x_296 : bool = u_xlatb0.z;
  if (x_296) {
    let x_301 : f32 = u_xlat2.z;
    x_297 = x_301;
  } else {
    let x_304 : f32 = u_xlat1.z;
    x_297 = x_304;
  }
  let x_305 : f32 = x_297;
  u_xlat0.z = x_305;
  let x_307 : vec2<f32> = vs_TEXCOORD0;
  let x_310 : vec4<f32> = x_68.x_Dithering_Coords;
  let x_314 : vec4<f32> = x_68.x_Dithering_Coords;
  let x_316 : vec2<f32> = ((x_307 * vec2<f32>(x_310.x, x_310.y)) + vec2<f32>(x_314.z, x_314.w));
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_316.x, x_316.y, x_317.z, x_317.w);
  let x_324 : vec4<f32> = u_xlat1;
  let x_326 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_324.x, x_324.y));
  u_xlat9 = x_326.w;
  let x_328 : f32 = u_xlat9;
  u_xlat9 = ((x_328 * 2.0f) + -1.0f);
  let x_333 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_333)) + 1.0f);
  let x_338 : f32 = u_xlat9;
  u_xlat9 = ((x_338 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_342 : f32 = u_xlat9;
  u_xlat9 = clamp(x_342, 0.0f, 1.0f);
  let x_344 : f32 = u_xlat9;
  u_xlat9 = ((x_344 * 2.0f) + -1.0f);
  let x_348 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_348);
  let x_352 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_352) + 1.0f);
  let x_356 : f32 = u_xlat9;
  let x_358 : f32 = u_xlat1.x;
  u_xlat9 = (x_356 * x_358);
  let x_360 : f32 = u_xlat9;
  let x_365 : vec4<f32> = u_xlat0;
  let x_367 : vec3<f32> = ((vec3<f32>(x_360, x_360, x_360) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat0;
  let x_374 : vec3<f32> = (vec3<f32>(x_370.x, x_370.y, x_370.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat1;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_382 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat1;
  let x_387 : vec3<f32> = max(abs(vec3<f32>(x_384.x, x_384.y, x_384.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec4<f32> = u_xlat1;
  let x_392 : vec3<f32> = log2(vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat1;
  let x_399 : vec3<f32> = (vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_400 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec3<f32> = exp2(vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_407.x, x_407.y, x_407.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_414 : vec4<f32> = u_xlat0;
  let x_416 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_414.x, x_414.y, x_414.z, x_414.x));
  u_xlatb0 = vec3<bool>(x_416.x, x_416.y, x_416.z);
  let x_419 : bool = u_xlatb0.x;
  if (x_419) {
    let x_424 : f32 = u_xlat2.x;
    x_420 = x_424;
  } else {
    let x_427 : f32 = u_xlat1.x;
    x_420 = x_427;
  }
  let x_428 : f32 = x_420;
  SV_Target0.x = x_428;
  let x_431 : bool = u_xlatb0.y;
  if (x_431) {
    let x_436 : f32 = u_xlat2.y;
    x_432 = x_436;
  } else {
    let x_439 : f32 = u_xlat1.y;
    x_432 = x_439;
  }
  let x_440 : f32 = x_432;
  SV_Target0.y = x_440;
  let x_443 : bool = u_xlatb0.z;
  if (x_443) {
    let x_448 : f32 = u_xlat2.z;
    x_444 = x_448;
  } else {
    let x_451 : f32 = u_xlat1.z;
    x_444 = x_451;
  }
  let x_452 : f32 = x_444;
  SV_Target0.z = x_452;
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

