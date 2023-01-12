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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(10) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlat15 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_438 : f32;
  var x_450 : f32;
  var x_463 : f32;
  var x_586 : f32;
  var x_598 : f32;
  var x_610 : f32;
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
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat1;
  let x_206 : vec3<f32> = vec3<f32>(x_205.x, x_205.y, x_205.z);
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat2;
  let x_213 : vec3<f32> = clamp(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_224 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_224);
  let x_228 : f32 = x_29.x_Grain_Params1.x;
  let x_229 : f32 = u_xlat16;
  u_xlat16 = ((x_228 * -(x_229)) + 1.0f);
  let x_234 : vec2<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_29.x_Grain_Params2;
  let x_242 : vec4<f32> = x_29.x_Grain_Params2;
  let x_244 : vec2<f32> = ((x_234 * vec2<f32>(x_238.x, x_238.y)) + vec2<f32>(x_242.z, x_242.w));
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_245.z, x_245.w);
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_252.x, x_252.y));
  let x_255 : vec3<f32> = vec3<f32>(x_254.x, x_254.y, x_254.z);
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : vec4<f32> = u_xlat2;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat2;
  let x_269 : f32 = x_29.x_Grain_Params1.y;
  let x_271 : f32 = x_29.x_Grain_Params1.y;
  let x_273 : f32 = x_29.x_Grain_Params1.y;
  let x_275 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_269, x_271, x_273));
  let x_276 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat2;
  let x_280 : f32 = u_xlat16;
  let x_283 : vec4<f32> = u_xlat1;
  let x_285 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_280, x_280, x_280)) + vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat0;
  let x_291 : f32 = x_29.x_PostExposure;
  let x_293 : f32 = x_29.x_PostExposure;
  let x_295 : f32 = x_29.x_PostExposure;
  let x_297 : f32 = x_29.x_PostExposure;
  let x_298 : vec4<f32> = vec4<f32>(x_291, x_293, x_295, x_297);
  u_xlat0 = (x_288 * vec4<f32>(x_298.x, x_298.y, x_298.z, x_298.w));
  let x_305 : vec4<f32> = u_xlat0;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_313 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_318 : f32 = u_xlat0.w;
  SV_Target0.w = x_318;
  let x_321 : vec4<f32> = u_xlat0;
  let x_323 : vec3<f32> = log2(vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat0;
  let x_340 : vec3<f32> = clamp(vec3<f32>(x_336.x, x_336.y, x_336.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_341 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat0;
  let x_348 : vec2<f32> = x_29.x_Lut3D_Params;
  let x_350 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_348.y, x_348.y, x_348.y));
  let x_351 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_355 : f32 = x_29.x_Lut3D_Params.x;
  u_xlat15 = (x_355 * 0.5f);
  let x_357 : vec4<f32> = u_xlat0;
  let x_360 : vec2<f32> = x_29.x_Lut3D_Params;
  let x_363 : f32 = u_xlat15;
  let x_365 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_360.x, x_360.x, x_360.x)) + vec3<f32>(x_363, x_363, x_363));
  let x_366 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_376 : vec4<f32> = u_xlat0;
  let x_378 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec3<f32> = vec3<f32>(x_378.x, x_378.y, x_378.z);
  let x_380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat0;
  let x_387 : vec3<f32> = max(abs(vec3<f32>(x_382.x, x_382.y, x_382.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec4<f32> = u_xlat1;
  let x_392 : vec3<f32> = log2(vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat1;
  let x_399 : vec3<f32> = (vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_400 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec3<f32> = exp2(vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_414 : vec3<f32> = ((vec3<f32>(x_407.x, x_407.y, x_407.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat0;
  let x_421 : vec3<f32> = (vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_422 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_430 : vec4<f32> = u_xlat0;
  let x_433 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_430.x, x_430.y, x_430.z, x_430.x));
  u_xlatb0 = vec3<bool>(x_433.x, x_433.y, x_433.z);
  let x_437 : bool = u_xlatb0.x;
  if (x_437) {
    let x_442 : f32 = u_xlat2.x;
    x_438 = x_442;
  } else {
    let x_445 : f32 = u_xlat1.x;
    x_438 = x_445;
  }
  let x_446 : f32 = x_438;
  u_xlat0.x = x_446;
  let x_449 : bool = u_xlatb0.y;
  if (x_449) {
    let x_454 : f32 = u_xlat2.y;
    x_450 = x_454;
  } else {
    let x_457 : f32 = u_xlat1.y;
    x_450 = x_457;
  }
  let x_458 : f32 = x_450;
  u_xlat0.y = x_458;
  let x_462 : bool = u_xlatb0.z;
  if (x_462) {
    let x_467 : f32 = u_xlat2.z;
    x_463 = x_467;
  } else {
    let x_470 : f32 = u_xlat1.z;
    x_463 = x_470;
  }
  let x_471 : f32 = x_463;
  u_xlat0.z = x_471;
  let x_473 : vec2<f32> = vs_TEXCOORD0;
  let x_476 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_480 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_482 : vec2<f32> = ((x_473 * vec2<f32>(x_476.x, x_476.y)) + vec2<f32>(x_480.z, x_480.w));
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
  let x_490 : vec4<f32> = u_xlat1;
  let x_492 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_490.x, x_490.y));
  u_xlat15 = x_492.w;
  let x_494 : f32 = u_xlat15;
  u_xlat15 = ((x_494 * 2.0f) + -1.0f);
  let x_497 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_497)) + 1.0f);
  let x_502 : f32 = u_xlat15;
  u_xlat15 = ((x_502 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_506 : f32 = u_xlat15;
  u_xlat15 = clamp(x_506, 0.0f, 1.0f);
  let x_508 : f32 = u_xlat15;
  u_xlat15 = ((x_508 * 2.0f) + -1.0f);
  let x_512 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_512);
  let x_516 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_516) + 1.0f);
  let x_520 : f32 = u_xlat15;
  let x_522 : f32 = u_xlat1.x;
  u_xlat15 = (x_520 * x_522);
  let x_524 : f32 = u_xlat15;
  let x_529 : vec4<f32> = u_xlat0;
  let x_531 : vec3<f32> = ((vec3<f32>(x_524, x_524, x_524) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat0;
  let x_538 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_539 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat1;
  let x_545 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec4<f32> = u_xlat1;
  let x_551 : vec3<f32> = max(abs(vec3<f32>(x_548.x, x_548.y, x_548.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_552 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : vec4<f32> = u_xlat1;
  let x_556 : vec3<f32> = log2(vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec4<f32> = u_xlat1;
  let x_563 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_564 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_566 : vec4<f32> = u_xlat1;
  let x_568 : vec3<f32> = exp2(vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat0;
  let x_575 : vec3<f32> = (vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_580 : vec4<f32> = u_xlat0;
  let x_582 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_580.x, x_580.y, x_580.z, x_580.x));
  u_xlatb0 = vec3<bool>(x_582.x, x_582.y, x_582.z);
  let x_585 : bool = u_xlatb0.x;
  if (x_585) {
    let x_590 : f32 = u_xlat2.x;
    x_586 = x_590;
  } else {
    let x_593 : f32 = u_xlat1.x;
    x_586 = x_593;
  }
  let x_594 : f32 = x_586;
  SV_Target0.x = x_594;
  let x_597 : bool = u_xlatb0.y;
  if (x_597) {
    let x_602 : f32 = u_xlat2.y;
    x_598 = x_602;
  } else {
    let x_605 : f32 = u_xlat1.y;
    x_598 = x_605;
  }
  let x_606 : f32 = x_598;
  SV_Target0.y = x_606;
  let x_609 : bool = u_xlatb0.z;
  if (x_609) {
    let x_614 : f32 = u_xlat2.z;
    x_610 = x_614;
  } else {
    let x_617 : f32 = u_xlat1.z;
    x_610 = x_617;
  }
  let x_618 : f32 = x_610;
  SV_Target0.z = x_618;
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

