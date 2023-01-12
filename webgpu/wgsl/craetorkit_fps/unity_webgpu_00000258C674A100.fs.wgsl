struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_262 : f32;
  var x_274 : f32;
  var x_286 : f32;
  var u_xlat9 : f32;
  var x_411 : f32;
  var x_423 : f32;
  var x_435 : f32;
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
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_47 : vec4<f32> = u_xlat1;
  let x_55 : f32 = x_50.x_PostExposure;
  let x_57 : f32 = x_50.x_PostExposure;
  let x_59 : f32 = x_50.x_PostExposure;
  let x_61 : f32 = x_50.x_PostExposure;
  let x_62 : vec4<f32> = vec4<f32>(x_55, x_57, x_59, x_61);
  u_xlat0 = (x_47 * vec4<f32>(x_62.x, x_62.y, x_62.z, x_62.w));
  let x_69 : vec4<f32> = u_xlat0;
  let x_76 : vec3<f32> = ((vec3<f32>(x_69.z, x_69.x, x_69.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_83 : f32 = u_xlat0.w;
  SV_Target0.w = x_83;
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : vec3<f32> = log2(vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_89 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_91 : vec4<f32> = u_xlat0;
  let x_98 : vec3<f32> = ((vec3<f32>(x_91.x, x_91.y, x_91.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_101 : vec4<f32> = u_xlat0;
  let x_107 : vec3<f32> = clamp(vec3<f32>(x_101.x, x_101.y, x_101.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_112 : vec4<f32> = u_xlat0;
  let x_117 : vec3<f32> = x_50.x_Lut2D_Params;
  u_xlat3 = (vec3<f32>(x_112.x, x_112.y, x_112.z) * vec3<f32>(x_117.z, x_117.z, x_117.z));
  let x_121 : vec3<f32> = x_50.x_Lut2D_Params;
  let x_125 : vec2<f32> = (vec2<f32>(x_121.x, x_121.y) * vec2<f32>(0.5f, 0.5f));
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_125.x, x_125.y, x_126.z, x_126.w);
  let x_128 : vec3<f32> = u_xlat3;
  let x_131 : vec3<f32> = x_50.x_Lut2D_Params;
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec2<f32> = ((vec2<f32>(x_128.y, x_128.z) * vec2<f32>(x_131.x, x_131.y)) + vec2<f32>(x_134.x, x_134.y));
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_137.x, x_136.x, x_136.y, x_137.w);
  let x_140 : f32 = u_xlat3.x;
  u_xlat3.x = floor(x_140);
  let x_144 : f32 = u_xlat3.x;
  let x_147 : f32 = x_50.x_Lut2D_Params.y;
  let x_150 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_144 * x_147) + x_150);
  let x_154 : f32 = u_xlat0.x;
  let x_157 : f32 = x_50.x_Lut2D_Params.z;
  let x_160 : f32 = u_xlat3.x;
  u_xlat0.x = ((x_154 * x_157) + -(x_160));
  let x_166 : f32 = x_50.x_Lut2D_Params.y;
  u_xlat2.x = x_166;
  u_xlat2.y = 0.0f;
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec3<f32> = u_xlat2;
  let x_173 : vec2<f32> = (vec2<f32>(x_169.x, x_169.z) + vec2<f32>(x_171.x, x_171.y));
  let x_174 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_173.x, x_173.y, x_174.z);
  let x_181 : vec4<f32> = u_xlat1;
  let x_183 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_181.x, x_181.z));
  let x_184 : vec3<f32> = vec3<f32>(x_183.x, x_183.y, x_183.z);
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_190 : vec3<f32> = u_xlat3;
  let x_192 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_190.x, x_190.y));
  u_xlat3 = vec3<f32>(x_192.x, x_192.y, x_192.z);
  let x_194 : vec4<f32> = u_xlat1;
  let x_197 : vec3<f32> = u_xlat3;
  u_xlat3 = (-(vec3<f32>(x_194.x, x_194.y, x_194.z)) + x_197);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec3<f32> = u_xlat3;
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.x, x_199.x) * x_201) + vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat0;
  let x_213 : vec3<f32> = max(abs(vec3<f32>(x_208.x, x_208.y, x_208.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : vec4<f32> = u_xlat1;
  let x_218 : vec3<f32> = log2(vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec4<f32> = u_xlat1;
  let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat1;
  let x_230 : vec3<f32> = exp2(vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat1;
  let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_254 : vec4<f32> = u_xlat0;
  let x_257 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_254.x, x_254.y, x_254.z, x_254.x));
  u_xlatb0 = vec3<bool>(x_257.x, x_257.y, x_257.z);
  let x_261 : bool = u_xlatb0.x;
  if (x_261) {
    let x_266 : f32 = u_xlat2.x;
    x_262 = x_266;
  } else {
    let x_269 : f32 = u_xlat1.x;
    x_262 = x_269;
  }
  let x_270 : f32 = x_262;
  u_xlat0.x = x_270;
  let x_273 : bool = u_xlatb0.y;
  if (x_273) {
    let x_278 : f32 = u_xlat2.y;
    x_274 = x_278;
  } else {
    let x_281 : f32 = u_xlat1.y;
    x_274 = x_281;
  }
  let x_282 : f32 = x_274;
  u_xlat0.y = x_282;
  let x_285 : bool = u_xlatb0.z;
  if (x_285) {
    let x_290 : f32 = u_xlat2.z;
    x_286 = x_290;
  } else {
    let x_293 : f32 = u_xlat1.z;
    x_286 = x_293;
  }
  let x_294 : f32 = x_286;
  u_xlat0.z = x_294;
  let x_296 : vec2<f32> = vs_TEXCOORD0;
  let x_300 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_304 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_306 : vec2<f32> = ((x_296 * vec2<f32>(x_300.x, x_300.y)) + vec2<f32>(x_304.z, x_304.w));
  let x_307 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_306.x, x_306.y, x_307.z, x_307.w);
  let x_315 : vec4<f32> = u_xlat1;
  let x_317 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_315.x, x_315.y));
  u_xlat9 = x_317.w;
  let x_319 : f32 = u_xlat9;
  u_xlat9 = ((x_319 * 2.0f) + -1.0f);
  let x_324 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_324)) + 1.0f);
  let x_329 : f32 = u_xlat9;
  u_xlat9 = ((x_329 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_333 : f32 = u_xlat9;
  u_xlat9 = clamp(x_333, 0.0f, 1.0f);
  let x_335 : f32 = u_xlat9;
  u_xlat9 = ((x_335 * 2.0f) + -1.0f);
  let x_339 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_339);
  let x_343 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_343) + 1.0f);
  let x_347 : f32 = u_xlat9;
  let x_349 : f32 = u_xlat1.x;
  u_xlat9 = (x_347 * x_349);
  let x_351 : f32 = u_xlat9;
  let x_356 : vec4<f32> = u_xlat0;
  let x_358 : vec3<f32> = ((vec3<f32>(x_351, x_351, x_351) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat0;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat1;
  let x_372 : vec3<f32> = (vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_373 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat1;
  let x_378 : vec3<f32> = max(abs(vec3<f32>(x_375.x, x_375.y, x_375.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec3<f32> = log2(vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_390 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_391 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec3<f32> = exp2(vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_405 : vec4<f32> = u_xlat0;
  let x_407 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_405.x, x_405.y, x_405.z, x_405.x));
  u_xlatb0 = vec3<bool>(x_407.x, x_407.y, x_407.z);
  let x_410 : bool = u_xlatb0.x;
  if (x_410) {
    let x_415 : f32 = u_xlat2.x;
    x_411 = x_415;
  } else {
    let x_418 : f32 = u_xlat1.x;
    x_411 = x_418;
  }
  let x_419 : f32 = x_411;
  SV_Target0.x = x_419;
  let x_422 : bool = u_xlatb0.y;
  if (x_422) {
    let x_427 : f32 = u_xlat2.y;
    x_423 = x_427;
  } else {
    let x_430 : f32 = u_xlat1.y;
    x_423 = x_430;
  }
  let x_431 : f32 = x_423;
  SV_Target0.y = x_431;
  let x_434 : bool = u_xlatb0.z;
  if (x_434) {
    let x_439 : f32 = u_xlat2.z;
    x_435 = x_439;
  } else {
    let x_442 : f32 = u_xlat1.z;
    x_435 = x_442;
  }
  let x_443 : f32 = x_435;
  SV_Target0.z = x_443;
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

