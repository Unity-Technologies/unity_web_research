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

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_GrainTex : sampler;

@group(0) @binding(2) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(6) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : bool;
  var x_229 : f32;
  var u_xlat15 : f32;
  var u_xlat4 : vec2<f32>;
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
      let x_233 : f32 = u_xlat2.x;
      x_229 = -(x_233);
    } else {
      let x_237 : f32 = u_xlat2.x;
      x_229 = x_237;
    }
    let x_238 : f32 = x_229;
    u_xlat1.x = x_238;
    let x_240 : f32 = u_xlat16;
    let x_242 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_240 * x_242) + -1.0f);
    let x_246 : vec4<f32> = u_xlat0;
    let x_248 : vec4<f32> = u_xlat1;
    let x_251 : vec2<f32> = u_xlat10;
    let x_252 : vec2<f32> = ((vec2<f32>(x_246.x, x_246.y) * vec2<f32>(x_248.x, x_248.x)) + x_251);
    let x_253 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_252.x, x_252.y, x_253.z);
  }
  let x_266 : vec2<f32> = vs_TEXCOORD0;
  let x_267 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_266);
  u_xlat0.x = x_267.x;
  let x_275 : vec3<f32> = u_xlat6;
  let x_277 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_275.x, x_275.y));
  u_xlat1 = x_277;
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = u_xlat1;
  let x_282 : vec3<f32> = (vec3<f32>(x_278.x, x_278.x, x_278.x) * vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec2<f32> = vs_TEXCOORD1;
  let x_288 : vec4<f32> = x_26.x_Grain_Params2;
  let x_292 : vec4<f32> = x_26.x_Grain_Params2;
  let x_294 : vec2<f32> = ((x_285 * vec2<f32>(x_288.x, x_288.y)) + vec2<f32>(x_292.z, x_292.w));
  let x_295 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_294.x, x_294.y, x_295.z);
  let x_302 : vec3<f32> = u_xlat2;
  let x_304 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_302.x, x_302.y));
  u_xlat2 = vec3<f32>(x_304.x, x_304.y, x_304.z);
  let x_306 : vec4<f32> = u_xlat0;
  u_xlat3 = vec3<f32>(x_306.x, x_306.y, x_306.z);
  let x_308 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_308, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_313 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(x_313, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_319 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_319);
  let x_323 : f32 = x_26.x_Grain_Params1.x;
  let x_324 : f32 = u_xlat15;
  u_xlat15 = ((x_323 * -(x_324)) + 1.0f);
  let x_328 : vec4<f32> = u_xlat0;
  let x_330 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_328.x, x_328.y, x_328.z) * x_330);
  let x_332 : vec3<f32> = u_xlat2;
  let x_334 : f32 = x_26.x_Grain_Params1.y;
  let x_336 : f32 = x_26.x_Grain_Params1.y;
  let x_338 : f32 = x_26.x_Grain_Params1.y;
  u_xlat2 = (x_332 * vec3<f32>(x_334, x_336, x_338));
  let x_341 : vec3<f32> = u_xlat2;
  let x_342 : f32 = u_xlat15;
  let x_345 : vec4<f32> = u_xlat0;
  let x_347 : vec3<f32> = ((x_341 * vec3<f32>(x_342, x_342, x_342)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat1;
  let x_353 : f32 = x_26.x_PostExposure;
  let x_355 : f32 = x_26.x_PostExposure;
  let x_357 : f32 = x_26.x_PostExposure;
  let x_359 : f32 = x_26.x_PostExposure;
  let x_360 : vec4<f32> = vec4<f32>(x_353, x_355, x_357, x_359);
  u_xlat0 = (x_350 * vec4<f32>(x_360.x, x_360.y, x_360.z, x_360.w));
  let x_367 : vec4<f32> = u_xlat0;
  let x_374 : vec3<f32> = ((vec3<f32>(x_367.z, x_367.x, x_367.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec3<f32> = log2(vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat1;
  let x_389 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat1;
  let x_396 : vec3<f32> = clamp(vec3<f32>(x_392.x, x_392.y, x_392.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_397 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat1;
  let x_404 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_404.z, x_404.z, x_404.z));
  let x_408 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_408);
  let x_412 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_414 : vec2<f32> = (vec2<f32>(x_412.x, x_412.y) * vec2<f32>(0.5f, 0.5f));
  let x_415 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_414.x, x_414.y, x_415.z);
  let x_417 : vec3<f32> = u_xlat6;
  let x_420 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_423 : vec3<f32> = u_xlat2;
  let x_425 : vec2<f32> = ((vec2<f32>(x_417.y, x_417.z) * vec2<f32>(x_420.x, x_420.y)) + vec2<f32>(x_423.x, x_423.y));
  let x_426 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_426.x, x_425.x, x_425.y);
  let x_429 : f32 = u_xlat6.x;
  let x_431 : f32 = x_26.x_Lut2D_Params.y;
  let x_434 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_429 * x_431) + x_434);
  let x_442 : vec3<f32> = u_xlat2;
  let x_444 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_442.x, x_442.z));
  u_xlat3 = vec3<f32>(x_444.x, x_444.y, x_444.z);
  let x_448 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_448;
  u_xlat4.y = 0.0f;
  let x_451 : vec3<f32> = u_xlat2;
  let x_453 : vec2<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_451.x, x_451.z) + x_453);
  let x_458 : vec2<f32> = u_xlat11;
  let x_459 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_458);
  u_xlat2 = vec3<f32>(x_459.x, x_459.y, x_459.z);
  let x_462 : f32 = u_xlat1.x;
  let x_465 : f32 = x_26.x_Lut2D_Params.z;
  let x_468 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_462 * x_465) + -(x_468));
  let x_472 : vec3<f32> = u_xlat3;
  let x_474 : vec3<f32> = u_xlat2;
  u_xlat6 = (-(x_472) + x_474);
  let x_476 : vec4<f32> = u_xlat1;
  let x_478 : vec3<f32> = u_xlat6;
  let x_480 : vec3<f32> = u_xlat3;
  let x_481 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.x, x_476.x) * x_478) + x_480);
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_486 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_486);
  let x_488 : bool = u_xlatb1;
  if (x_488) {
    let x_491 : vec4<f32> = u_xlat0;
    let x_492 : vec3<f32> = vec3<f32>(x_491.x, x_491.y, x_491.z);
    let x_493 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
    let x_495 : vec4<f32> = u_xlat1;
    let x_499 : vec3<f32> = clamp(vec3<f32>(x_495.x, x_495.y, x_495.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_500 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
    let x_502 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_502.x, x_502.y, x_502.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_508 : vec4<f32> = u_xlat0;
  SV_Target0 = x_508;
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

