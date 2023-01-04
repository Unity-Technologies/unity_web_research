struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_GrainTex : sampler;

var<private> u_xlat15 : f32;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> u_xlat4 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_230 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_48.x, x_48.y, x_49.z, x_49.w);
  let x_51 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_57.z, x_57.w);
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb6 = (0.0f < x_80);
  let x_82 : bool = u_xlatb6;
  if (x_82) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11.x = (1.0f / x_115);
    let x_119 : f32 = u_xlat6.x;
    let x_121 : f32 = u_xlat11.x;
    u_xlat6.x = ((x_119 * x_121) + -1.0f);
    let x_126 : vec4<f32> = u_xlat0;
    let x_128 : vec3<f32> = u_xlat6;
    let x_131 : vec2<f32> = u_xlat10;
    let x_132 : vec2<f32> = ((vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_128.x, x_128.x)) + x_131);
    let x_133 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  } else {
    let x_138 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_138);
    let x_140 : f32 = u_xlat16;
    let x_142 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat16 = (x_140 * x_142);
    let x_145 : f32 = u_xlat1.x;
    let x_147 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_145 * x_147);
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_151), 1.0f);
    let x_157 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_157), 1.0f);
    let x_160 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_160);
    let x_162 : f32 = u_xlat7;
    let x_164 : f32 = u_xlat2.x;
    u_xlat2.x = (x_162 * x_164);
    let x_168 : f32 = u_xlat2.x;
    let x_170 : f32 = u_xlat2.x;
    u_xlat7 = (x_168 * x_170);
    let x_173 : f32 = u_xlat7;
    u_xlat12 = ((x_173 * 0.0208351f) + -0.085133001f);
    let x_178 : f32 = u_xlat7;
    let x_179 : f32 = u_xlat12;
    u_xlat12 = ((x_178 * x_179) + 0.180141002f);
    let x_183 : f32 = u_xlat7;
    let x_184 : f32 = u_xlat12;
    u_xlat12 = ((x_183 * x_184) + -0.330299497f);
    let x_188 : f32 = u_xlat7;
    let x_189 : f32 = u_xlat12;
    u_xlat7 = ((x_188 * x_189) + 0.999866009f);
    let x_193 : f32 = u_xlat7;
    let x_195 : f32 = u_xlat2.x;
    u_xlat12 = (x_193 * x_195);
    let x_199 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_199));
    let x_202 : f32 = u_xlat12;
    u_xlat12 = ((x_202 * -2.0f) + 1.570796371f);
    let x_207 : bool = u_xlatb17;
    let x_208 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_208, x_207);
    let x_211 : f32 = u_xlat2.x;
    let x_212 : f32 = u_xlat7;
    let x_214 : f32 = u_xlat12;
    u_xlat2.x = ((x_211 * x_212) + x_214);
    let x_218 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_218, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1 = (x_223 < -(x_225));
    let x_228 : bool = u_xlatb1;
    if (x_228) {
      let x_234 : f32 = u_xlat2.x;
      x_230 = -(x_234);
    } else {
      let x_238 : f32 = u_xlat2.x;
      x_230 = x_238;
    }
    let x_239 : f32 = x_230;
    u_xlat1.x = x_239;
    let x_241 : f32 = u_xlat16;
    let x_243 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_241 * x_243) + -1.0f);
    let x_247 : vec4<f32> = u_xlat0;
    let x_249 : vec4<f32> = u_xlat1;
    let x_252 : vec2<f32> = u_xlat10;
    let x_253 : vec2<f32> = ((vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_249.x, x_249.x)) + x_252);
    let x_254 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_253.x, x_253.y, x_254.z);
  }
  let x_267 : vec2<f32> = vs_TEXCOORD0;
  let x_268 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_267);
  u_xlat0.x = x_268.x;
  let x_276 : vec3<f32> = u_xlat6;
  let x_278 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_276.x, x_276.y));
  u_xlat1 = x_278;
  let x_279 : vec4<f32> = u_xlat0;
  let x_281 : vec4<f32> = u_xlat1;
  let x_283 : vec3<f32> = (vec3<f32>(x_279.x, x_279.x, x_279.x) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec2<f32> = vs_TEXCOORD1;
  let x_289 : vec4<f32> = x_26.x_Grain_Params2;
  let x_293 : vec4<f32> = x_26.x_Grain_Params2;
  let x_295 : vec2<f32> = ((x_286 * vec2<f32>(x_289.x, x_289.y)) + vec2<f32>(x_293.z, x_293.w));
  let x_296 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_295.x, x_295.y, x_296.z);
  let x_303 : vec3<f32> = u_xlat2;
  let x_305 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_303.x, x_303.y));
  u_xlat2 = vec3<f32>(x_305.x, x_305.y, x_305.z);
  let x_307 : vec4<f32> = u_xlat0;
  u_xlat3 = vec3<f32>(x_307.x, x_307.y, x_307.z);
  let x_309 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_309, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_314 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(x_314, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_320 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_320);
  let x_324 : f32 = x_26.x_Grain_Params1.x;
  let x_325 : f32 = u_xlat15;
  u_xlat15 = ((x_324 * -(x_325)) + 1.0f);
  let x_329 : vec4<f32> = u_xlat0;
  let x_331 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_329.x, x_329.y, x_329.z) * x_331);
  let x_333 : vec3<f32> = u_xlat2;
  let x_335 : f32 = x_26.x_Grain_Params1.y;
  let x_337 : f32 = x_26.x_Grain_Params1.y;
  let x_339 : f32 = x_26.x_Grain_Params1.y;
  u_xlat2 = (x_333 * vec3<f32>(x_335, x_337, x_339));
  let x_342 : vec3<f32> = u_xlat2;
  let x_343 : f32 = u_xlat15;
  let x_346 : vec4<f32> = u_xlat0;
  let x_348 : vec3<f32> = ((x_342 * vec3<f32>(x_343, x_343, x_343)) + vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat1;
  let x_354 : f32 = x_26.x_PostExposure;
  let x_356 : f32 = x_26.x_PostExposure;
  let x_358 : f32 = x_26.x_PostExposure;
  let x_360 : f32 = x_26.x_PostExposure;
  let x_361 : vec4<f32> = vec4<f32>(x_354, x_356, x_358, x_360);
  u_xlat0 = (x_351 * vec4<f32>(x_361.x, x_361.y, x_361.z, x_361.w));
  let x_368 : vec4<f32> = u_xlat0;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.z, x_368.x, x_368.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_376 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec4<f32> = u_xlat1;
  let x_380 : vec3<f32> = log2(vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat1;
  let x_390 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_391 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat1;
  let x_397 : vec3<f32> = clamp(vec3<f32>(x_393.x, x_393.y, x_393.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_398 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat1;
  let x_405 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_405.z, x_405.z, x_405.z));
  let x_409 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_409);
  let x_413 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_415 : vec2<f32> = (vec2<f32>(x_413.x, x_413.y) * vec2<f32>(0.5f, 0.5f));
  let x_416 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_415.x, x_415.y, x_416.z);
  let x_418 : vec3<f32> = u_xlat6;
  let x_421 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_424 : vec3<f32> = u_xlat2;
  let x_426 : vec2<f32> = ((vec2<f32>(x_418.y, x_418.z) * vec2<f32>(x_421.x, x_421.y)) + vec2<f32>(x_424.x, x_424.y));
  let x_427 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_427.x, x_426.x, x_426.y);
  let x_430 : f32 = u_xlat6.x;
  let x_432 : f32 = x_26.x_Lut2D_Params.y;
  let x_435 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_430 * x_432) + x_435);
  let x_443 : vec3<f32> = u_xlat2;
  let x_445 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_443.x, x_443.z));
  u_xlat3 = vec3<f32>(x_445.x, x_445.y, x_445.z);
  let x_449 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_449;
  u_xlat4.y = 0.0f;
  let x_452 : vec3<f32> = u_xlat2;
  let x_454 : vec2<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_452.x, x_452.z) + x_454);
  let x_459 : vec2<f32> = u_xlat11;
  let x_460 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_459);
  u_xlat2 = vec3<f32>(x_460.x, x_460.y, x_460.z);
  let x_463 : f32 = u_xlat1.x;
  let x_466 : f32 = x_26.x_Lut2D_Params.z;
  let x_469 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_463 * x_466) + -(x_469));
  let x_473 : vec3<f32> = u_xlat3;
  let x_475 : vec3<f32> = u_xlat2;
  u_xlat6 = (-(x_473) + x_475);
  let x_477 : vec4<f32> = u_xlat1;
  let x_479 : vec3<f32> = u_xlat6;
  let x_481 : vec3<f32> = u_xlat3;
  let x_482 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.x, x_477.x) * x_479) + x_481);
  let x_483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_487 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_487);
  let x_489 : bool = u_xlatb1;
  if (x_489) {
    let x_492 : vec4<f32> = u_xlat0;
    let x_493 : vec3<f32> = vec3<f32>(x_492.x, x_492.y, x_492.z);
    let x_494 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
    let x_496 : vec4<f32> = u_xlat1;
    let x_500 : vec3<f32> = clamp(vec3<f32>(x_496.x, x_496.y, x_496.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_501 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
    let x_503 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_503.x, x_503.y, x_503.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_509 : vec4<f32> = u_xlat0;
  SV_Target0 = x_509;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

