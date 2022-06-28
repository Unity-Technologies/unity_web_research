struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_29 : PGlobals;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat15 : f32;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(10) var sampler_Lut3D : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_356 : f32;
  var x_369 : f32;
  var x_382 : f32;
  var x_506 : f32;
  var x_518 : f32;
  var x_530 : f32;
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
  let x_205 : vec4<f32> = u_xlat0;
  let x_208 : f32 = x_29.x_PostExposure;
  let x_210 : f32 = x_29.x_PostExposure;
  let x_212 : f32 = x_29.x_PostExposure;
  let x_214 : f32 = x_29.x_PostExposure;
  let x_215 : vec4<f32> = vec4<f32>(x_208, x_210, x_212, x_214);
  u_xlat0 = (x_205 * vec4<f32>(x_215.x, x_215.y, x_215.z, x_215.w));
  let x_222 : vec4<f32> = u_xlat0;
  let x_229 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_230 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_235 : f32 = u_xlat0.w;
  SV_Target0.w = x_235;
  let x_238 : vec4<f32> = u_xlat0;
  let x_240 : vec3<f32> = log2(vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat0;
  let x_257 : vec3<f32> = clamp(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat0;
  let x_265 : vec2<f32> = x_29.x_Lut3D_Params;
  let x_267 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) * vec3<f32>(x_265.y, x_265.y, x_265.y));
  let x_268 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_272 : f32 = x_29.x_Lut3D_Params.x;
  u_xlat15 = (x_272 * 0.5f);
  let x_274 : vec4<f32> = u_xlat0;
  let x_277 : vec2<f32> = x_29.x_Lut3D_Params;
  let x_280 : f32 = u_xlat15;
  let x_282 : vec3<f32> = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_277.x, x_277.x, x_277.x)) + vec3<f32>(x_280, x_280, x_280));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_293 : vec4<f32> = u_xlat0;
  let x_295 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : vec3<f32> = vec3<f32>(x_295.x, x_295.y, x_295.z);
  let x_297 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : vec4<f32> = u_xlat0;
  let x_304 : vec3<f32> = max(abs(vec3<f32>(x_299.x, x_299.y, x_299.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat1;
  let x_309 : vec3<f32> = log2(vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat1;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat1;
  let x_321 : vec3<f32> = exp2(vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat1;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat0;
  let x_338 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_347 : vec4<f32> = u_xlat0;
  let x_350 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_347.x, x_347.y, x_347.z, x_347.x));
  u_xlatb0 = vec3<bool>(x_350.x, x_350.y, x_350.z);
  let x_354 : bool = u_xlatb0.x;
  if (x_354) {
    let x_360 : f32 = u_xlat2.x;
    x_356 = x_360;
  } else {
    let x_363 : f32 = u_xlat1.x;
    x_356 = x_363;
  }
  let x_364 : f32 = x_356;
  u_xlat0.x = x_364;
  let x_368 : bool = u_xlatb0.y;
  if (x_368) {
    let x_373 : f32 = u_xlat2.y;
    x_369 = x_373;
  } else {
    let x_376 : f32 = u_xlat1.y;
    x_369 = x_376;
  }
  let x_377 : f32 = x_369;
  u_xlat0.y = x_377;
  let x_381 : bool = u_xlatb0.z;
  if (x_381) {
    let x_386 : f32 = u_xlat2.z;
    x_382 = x_386;
  } else {
    let x_389 : f32 = u_xlat1.z;
    x_382 = x_389;
  }
  let x_390 : f32 = x_382;
  u_xlat0.z = x_390;
  let x_392 : vec2<f32> = vs_TEXCOORD0;
  let x_396 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_400 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_402 : vec2<f32> = ((x_392 * vec2<f32>(x_396.x, x_396.y)) + vec2<f32>(x_400.z, x_400.w));
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_410 : vec4<f32> = u_xlat1;
  let x_412 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_410.x, x_410.y));
  u_xlat15 = x_412.w;
  let x_414 : f32 = u_xlat15;
  u_xlat15 = ((x_414 * 2.0f) + -1.0f);
  let x_417 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_417)) + 1.0f);
  let x_422 : f32 = u_xlat15;
  u_xlat15 = ((x_422 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_426 : f32 = u_xlat15;
  u_xlat15 = clamp(x_426, 0.0f, 1.0f);
  let x_428 : f32 = u_xlat15;
  u_xlat15 = ((x_428 * 2.0f) + -1.0f);
  let x_432 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_432);
  let x_436 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_436) + 1.0f);
  let x_440 : f32 = u_xlat15;
  let x_442 : f32 = u_xlat1.x;
  u_xlat15 = (x_440 * x_442);
  let x_444 : f32 = u_xlat15;
  let x_449 : vec4<f32> = u_xlat0;
  let x_451 : vec3<f32> = ((vec3<f32>(x_444, x_444, x_444) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat1;
  let x_465 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_466 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat1;
  let x_471 : vec3<f32> = max(abs(vec3<f32>(x_468.x, x_468.y, x_468.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat1;
  let x_476 : vec3<f32> = log2(vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat1;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = exp2(vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat0;
  let x_495 : vec3<f32> = (vec3<f32>(x_491.x, x_491.y, x_491.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_496 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_500 : vec4<f32> = u_xlat0;
  let x_502 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_500.x, x_500.y, x_500.z, x_500.x));
  u_xlatb0 = vec3<bool>(x_502.x, x_502.y, x_502.z);
  let x_505 : bool = u_xlatb0.x;
  if (x_505) {
    let x_510 : f32 = u_xlat2.x;
    x_506 = x_510;
  } else {
    let x_513 : f32 = u_xlat1.x;
    x_506 = x_513;
  }
  let x_514 : f32 = x_506;
  SV_Target0.x = x_514;
  let x_517 : bool = u_xlatb0.y;
  if (x_517) {
    let x_522 : f32 = u_xlat2.y;
    x_518 = x_522;
  } else {
    let x_525 : f32 = u_xlat1.y;
    x_518 = x_525;
  }
  let x_526 : f32 = x_518;
  SV_Target0.y = x_526;
  let x_529 : bool = u_xlatb0.z;
  if (x_529) {
    let x_534 : f32 = u_xlat2.z;
    x_530 = x_534;
  } else {
    let x_537 : f32 = u_xlat1.z;
    x_530 = x_537;
  }
  let x_538 : f32 = x_530;
  SV_Target0.z = x_538;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

