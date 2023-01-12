struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_350 : f32;
  var x_362 : f32;
  var x_375 : f32;
  var x_498 : f32;
  var x_510 : f32;
  var x_522 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_13.x, x_13.y, x_14.z, x_14.w);
  let x_16 : vec4<f32> = u_xlat0;
  let x_22 : vec2<f32> = clamp(vec2<f32>(x_16.x, x_16.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_23 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_22.x, x_22.y, x_23.z, x_23.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_34 : f32 = x_29.x_RenderViewportScaleFactor;
  let x_36 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_34, x_34));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_37.z, x_37.w);
  let x_49 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_49.x, x_49.y), 0.0f);
  u_xlat0 = x_51;
  let x_53 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_53.x, x_53.y, x_53.x, x_53.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_62 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec2<f32>(x_62.z, x_62.w), vec2<f32>(x_64.z, x_64.w));
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_71 * vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x));
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_80 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_82 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_84 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_85 : vec4<f32> = vec4<f32>(x_78, x_80, x_82, x_84);
  u_xlat1 = (x_75 * vec4<f32>(x_85.x, x_85.y, x_85.z, x_85.w));
  let x_92 : vec4<f32> = u_xlat1;
  let x_97 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_92 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_97.x, x_97.y, x_97.x, x_97.y));
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_100, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_104 : vec4<f32> = u_xlat1;
  let x_106 : f32 = x_29.x_RenderViewportScaleFactor;
  u_xlat1 = (x_104 * vec4<f32>(x_106, x_106, x_106, x_106));
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_112.x, x_112.y), 0.0f);
  u_xlat2 = x_114;
  let x_118 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_118.z, x_118.w), 0.0f);
  u_xlat1 = x_120;
  u_xlat3.w = 1.0f;
  let x_131 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_133 : vec3<f32> = vec3<f32>(x_131.x, x_131.y, x_131.z);
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_136 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_136 * x_137);
  u_xlat4.w = 1.0f;
  let x_146 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.166666672f, 0.0f), 0.0f);
  let x_147 : vec3<f32> = vec3<f32>(x_146.x, x_146.y, x_146.z);
  let x_148 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat3;
  let x_152 : vec4<f32> = u_xlat4;
  let x_154 : vec3<f32> = (vec3<f32>(x_150.x, x_150.y, x_150.z) + vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = u_xlat4;
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_157 * x_158) + x_160);
  u_xlat2.w = 1.0f;
  let x_168 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.833333313f, 0.0f), 0.0f);
  let x_169 : vec3<f32> = vec3<f32>(x_168.x, x_168.y, x_168.z);
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat3;
  let x_176 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_179 * x_180) + x_182);
  u_xlat3.w = 3.0f;
  let x_186 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_186 / x_187);
  let x_194 : vec2<f32> = vs_TEXCOORD0;
  let x_195 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_194);
  u_xlat1.x = x_195.x;
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.x, x_200.x, x_200.x));
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_208 : f32 = u_xlat0.w;
  SV_Target0.w = x_208;
  let x_211 : vec4<f32> = u_xlat0;
  let x_212 : vec3<f32> = vec3<f32>(x_211.x, x_211.y, x_211.z);
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = clamp(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_230 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_230);
  let x_234 : f32 = x_29.x_Grain_Params1.x;
  let x_235 : f32 = u_xlat15;
  u_xlat15 = ((x_234 * -(x_235)) + 1.0f);
  let x_240 : vec2<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = x_29.x_Grain_Params2;
  let x_248 : vec4<f32> = x_29.x_Grain_Params2;
  let x_250 : vec2<f32> = ((x_240 * vec2<f32>(x_244.x, x_244.y)) + vec2<f32>(x_248.z, x_248.w));
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_251.z, x_251.w);
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_258.x, x_258.y));
  let x_261 : vec3<f32> = vec3<f32>(x_260.x, x_260.y, x_260.z);
  let x_262 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat0;
  let x_266 : vec4<f32> = u_xlat1;
  let x_268 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat1;
  let x_275 : f32 = x_29.x_Grain_Params1.y;
  let x_277 : f32 = x_29.x_Grain_Params1.y;
  let x_279 : f32 = x_29.x_Grain_Params1.y;
  let x_281 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_275, x_277, x_279));
  let x_282 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat1;
  let x_286 : f32 = u_xlat15;
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_286, x_286, x_286)) + vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat0;
  let x_299 : vec3<f32> = max(abs(vec3<f32>(x_294.x, x_294.y, x_294.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : vec3<f32> = log2(vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat1;
  let x_316 : vec3<f32> = exp2(vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat1;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_342 : vec4<f32> = u_xlat0;
  let x_345 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_342.x, x_342.y, x_342.z, x_342.x));
  u_xlatb0 = vec3<bool>(x_345.x, x_345.y, x_345.z);
  let x_349 : bool = u_xlatb0.x;
  if (x_349) {
    let x_354 : f32 = u_xlat2.x;
    x_350 = x_354;
  } else {
    let x_357 : f32 = u_xlat1.x;
    x_350 = x_357;
  }
  let x_358 : f32 = x_350;
  u_xlat0.x = x_358;
  let x_361 : bool = u_xlatb0.y;
  if (x_361) {
    let x_366 : f32 = u_xlat2.y;
    x_362 = x_366;
  } else {
    let x_369 : f32 = u_xlat1.y;
    x_362 = x_369;
  }
  let x_370 : f32 = x_362;
  u_xlat0.y = x_370;
  let x_374 : bool = u_xlatb0.z;
  if (x_374) {
    let x_379 : f32 = u_xlat2.z;
    x_375 = x_379;
  } else {
    let x_382 : f32 = u_xlat1.z;
    x_375 = x_382;
  }
  let x_383 : f32 = x_375;
  u_xlat0.z = x_383;
  let x_385 : vec2<f32> = vs_TEXCOORD0;
  let x_388 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_392 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_394 : vec2<f32> = ((x_385 * vec2<f32>(x_388.x, x_388.y)) + vec2<f32>(x_392.z, x_392.w));
  let x_395 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_402.x, x_402.y));
  u_xlat15 = x_404.w;
  let x_406 : f32 = u_xlat15;
  u_xlat15 = ((x_406 * 2.0f) + -1.0f);
  let x_409 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_409)) + 1.0f);
  let x_414 : f32 = u_xlat15;
  u_xlat15 = ((x_414 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_418 : f32 = u_xlat15;
  u_xlat15 = clamp(x_418, 0.0f, 1.0f);
  let x_420 : f32 = u_xlat15;
  u_xlat15 = ((x_420 * 2.0f) + -1.0f);
  let x_424 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_424);
  let x_428 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_428) + 1.0f);
  let x_432 : f32 = u_xlat15;
  let x_434 : f32 = u_xlat1.x;
  u_xlat15 = (x_432 * x_434);
  let x_436 : f32 = u_xlat15;
  let x_441 : vec4<f32> = u_xlat0;
  let x_443 : vec3<f32> = ((vec3<f32>(x_436, x_436, x_436) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat0;
  let x_450 : vec3<f32> = (vec3<f32>(x_446.x, x_446.y, x_446.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat1;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat1;
  let x_463 : vec3<f32> = max(abs(vec3<f32>(x_460.x, x_460.y, x_460.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat1;
  let x_468 : vec3<f32> = log2(vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat1;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.x, x_471.y, x_471.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_476 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat1;
  let x_480 : vec3<f32> = exp2(vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat0;
  let x_487 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_488 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_492 : vec4<f32> = u_xlat0;
  let x_494 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_492.x, x_492.y, x_492.z, x_492.x));
  u_xlatb0 = vec3<bool>(x_494.x, x_494.y, x_494.z);
  let x_497 : bool = u_xlatb0.x;
  if (x_497) {
    let x_502 : f32 = u_xlat2.x;
    x_498 = x_502;
  } else {
    let x_505 : f32 = u_xlat1.x;
    x_498 = x_505;
  }
  let x_506 : f32 = x_498;
  SV_Target0.x = x_506;
  let x_509 : bool = u_xlatb0.y;
  if (x_509) {
    let x_514 : f32 = u_xlat2.y;
    x_510 = x_514;
  } else {
    let x_517 : f32 = u_xlat1.y;
    x_510 = x_517;
  }
  let x_518 : f32 = x_510;
  SV_Target0.y = x_518;
  let x_521 : bool = u_xlatb0.z;
  if (x_521) {
    let x_526 : f32 = u_xlat2.z;
    x_522 = x_526;
  } else {
    let x_529 : f32 = u_xlat1.z;
    x_522 = x_529;
  }
  let x_530 : f32 = x_522;
  SV_Target0.z = x_530;
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

