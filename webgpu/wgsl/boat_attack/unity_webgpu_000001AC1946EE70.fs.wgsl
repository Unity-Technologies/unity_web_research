diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_BlitTexture_TexelSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr = array<strided_arr, 9u>;

struct TemporalAAData {
  /* @offset(0) */
  x_TaaMotionVectorTex_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_TaaAccumulationTex_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_TaaFilterWeights : Arr,
  /* @offset(176) */
  x_TaaFrameInfluence : f32,
  /* @offset(180) */
  x_TaaVarianceClampScale : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlatb42 : bool;

var<private> u_xlat42 : f32;

var<private> u_xlatb3 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> u_xlatb45 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb0 : vec2<bool>;

var<private> u_xlat6 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_408 : TemporalAAData;

@group(0) @binding(2) var x_TaaMotionVectorTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(3) var x_TaaAccumulationTex : texture_2d<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_136 : f32;
  var x_173 : vec2<f32>;
  var x_202 : vec2<f32>;
  var x_251 : f32;
  var x_291 : f32;
  var x_303 : f32;
  var x_333 : f32;
  var x_381 : f32;
  var x_396 : f32;
  var x_1439 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, x_23, x_34);
  u_xlat0.x = x_35.x;
  let x_40 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_40) + 1.0f);
  let x_46 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_46, 1.0f);
  let x_54 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) * vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f)) + vec4<f32>(x_59.x, x_59.y, x_59.x, x_59.y));
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : f32 = x_27.x_GlobalMipBias.x;
  let x_71 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_67.x, x_67.y), x_70);
  u_xlat14.x = x_71.x;
  let x_75 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_75) + 1.0f);
  let x_83 : f32 = u_xlat14.x;
  let x_85 : f32 = u_xlat0.x;
  u_xlatb28 = (x_83 < x_85);
  let x_88 : f32 = u_xlat14.x;
  let x_90 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_88, x_90);
  let x_93 : bool = u_xlatb28;
  u_xlat14.x = select(0.0f, 1.0f, x_93);
  let x_98 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_103 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_98.x, x_98.y, x_98.x, x_98.y) * vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f)) + vec4<f32>(x_103.x, x_103.y, x_103.x, x_103.y));
  let x_110 : vec4<f32> = u_xlat2;
  let x_113 : f32 = x_27.x_GlobalMipBias.x;
  let x_114 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_110.x, x_110.y), x_113);
  u_xlat28.x = x_114.x;
  let x_118 : f32 = u_xlat28.x;
  u_xlat28.x = (-(x_118) + 1.0f);
  let x_124 : f32 = u_xlat28.x;
  let x_126 : f32 = u_xlat0.x;
  u_xlatb42 = (x_124 < x_126);
  let x_129 : f32 = u_xlat28.x;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_129, x_131);
  let x_134 : bool = u_xlatb42;
  if (x_134) {
    x_136 = 0.0f;
  } else {
    let x_141 : f32 = u_xlat14.x;
    x_136 = x_141;
  }
  let x_142 : f32 = x_136;
  u_xlat14.x = x_142;
  let x_144 : bool = u_xlatb42;
  u_xlat14.y = select(0.0f, -1.0f, x_144);
  let x_152 : vec4<f32> = u_xlat2;
  let x_155 : f32 = x_27.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_152.z, x_152.w), x_155);
  u_xlat42 = x_156.x;
  let x_158 : f32 = u_xlat42;
  u_xlat42 = (-(x_158) + 1.0f);
  let x_162 : f32 = u_xlat42;
  let x_164 : f32 = u_xlat0.x;
  u_xlatb3 = (x_162 < x_164);
  let x_166 : f32 = u_xlat42;
  let x_168 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_166, x_168);
  let x_171 : bool = u_xlatb3;
  if (x_171) {
    x_173 = vec2<f32>(-1.0f, 0.0f);
  } else {
    let x_178 : vec2<f32> = u_xlat14;
    x_173 = x_178;
  }
  let x_179 : vec2<f32> = x_173;
  u_xlat14 = x_179;
  let x_183 : vec4<f32> = u_xlat1;
  let x_186 : f32 = x_27.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_183.z, x_183.w), x_186);
  u_xlat42 = x_187.x;
  let x_189 : f32 = u_xlat42;
  u_xlat42 = (-(x_189) + 1.0f);
  let x_192 : f32 = u_xlat42;
  let x_194 : f32 = u_xlat0.x;
  u_xlatb3 = (x_192 < x_194);
  let x_196 : f32 = u_xlat42;
  let x_198 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_196, x_198);
  let x_201 : bool = u_xlatb3;
  if (x_201) {
    x_202 = vec2<f32>(0.0f, 1.0f);
  } else {
    let x_207 : vec2<f32> = u_xlat14;
    x_202 = x_207;
  }
  let x_208 : vec2<f32> = x_202;
  u_xlat14 = x_208;
  let x_210 : vec2<f32> = vs_TEXCOORD0;
  let x_212 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_215 : vec2<f32> = (x_210 + -(vec2<f32>(x_212.x, x_212.y)));
  let x_216 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_215.x, x_215.y, x_216.z);
  let x_221 : vec3<f32> = u_xlat3;
  let x_224 : f32 = x_27.x_GlobalMipBias.x;
  let x_225 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_221.x, x_221.y), x_224);
  u_xlat42 = x_225.x;
  let x_231 : vec3<f32> = u_xlat3;
  let x_234 : f32 = x_27.x_GlobalMipBias.x;
  let x_235 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_231.x, x_231.y), x_234);
  u_xlat3 = vec3<f32>(x_235.x, x_235.y, x_235.z);
  let x_237 : f32 = u_xlat42;
  u_xlat42 = (-(x_237) + 1.0f);
  let x_241 : f32 = u_xlat42;
  let x_243 : f32 = u_xlat0.x;
  u_xlatb45 = (x_241 < x_243);
  let x_245 : f32 = u_xlat42;
  let x_247 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_245, x_247);
  let x_250 : bool = u_xlatb45;
  if (x_250) {
    x_251 = -1.0f;
  } else {
    let x_256 : f32 = u_xlat14.x;
    x_251 = x_256;
  }
  let x_257 : f32 = x_251;
  u_xlat14.x = x_257;
  let x_261 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_265 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_261.x, x_261.y, x_261.x, x_261.y) * vec4<f32>(1.0f, -1.0f, -1.0f, 1.0f)) + vec4<f32>(x_265.x, x_265.y, x_265.x, x_265.y));
  let x_271 : vec4<f32> = u_xlat4;
  let x_274 : f32 = x_27.x_GlobalMipBias.x;
  let x_275 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_271.x, x_271.y), x_274);
  u_xlat42 = x_275.x;
  let x_277 : f32 = u_xlat42;
  u_xlat42 = (-(x_277) + 1.0f);
  let x_281 : f32 = u_xlat42;
  let x_283 : f32 = u_xlat0.x;
  u_xlatb5 = (x_281 < x_283);
  let x_285 : f32 = u_xlat42;
  let x_287 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_285, x_287);
  let x_290 : bool = u_xlatb5;
  if (x_290) {
    x_291 = 1.0f;
  } else {
    let x_296 : f32 = u_xlat14.x;
    x_291 = x_296;
  }
  let x_297 : f32 = x_291;
  u_xlat14.x = x_297;
  let x_299 : bool = u_xlatb45;
  let x_300 : bool = u_xlatb5;
  u_xlatb42 = (x_299 | x_300);
  let x_302 : bool = u_xlatb42;
  if (x_302) {
    x_303 = -1.0f;
  } else {
    let x_308 : f32 = u_xlat14.y;
    x_303 = x_308;
  }
  let x_309 : f32 = x_303;
  u_xlat28.x = x_309;
  let x_314 : vec4<f32> = u_xlat4;
  let x_317 : f32 = x_27.x_GlobalMipBias.x;
  let x_318 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_314.z, x_314.w), x_317);
  u_xlat42 = x_318.x;
  let x_320 : f32 = u_xlat42;
  u_xlat42 = (-(x_320) + 1.0f);
  let x_323 : f32 = u_xlat42;
  let x_325 : f32 = u_xlat0.x;
  u_xlatb45 = (x_323 < x_325);
  let x_327 : f32 = u_xlat42;
  let x_329 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_327, x_329);
  let x_332 : bool = u_xlatb45;
  if (x_332) {
    x_333 = -1.0f;
  } else {
    let x_338 : f32 = u_xlat14.x;
    x_333 = x_338;
  }
  let x_339 : f32 = x_333;
  u_xlat14.x = x_339;
  let x_342 : vec2<f32> = vs_TEXCOORD0;
  let x_344 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_346 : vec2<f32> = (x_342 + vec2<f32>(x_344.x, x_344.y));
  let x_347 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_346.x, x_346.y, x_347.z);
  let x_352 : vec3<f32> = u_xlat5;
  let x_355 : f32 = x_27.x_GlobalMipBias.x;
  let x_356 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_352.x, x_352.y), x_355);
  u_xlat42 = x_356.x;
  let x_361 : vec3<f32> = u_xlat5;
  let x_364 : f32 = x_27.x_GlobalMipBias.x;
  let x_365 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_361.x, x_361.y), x_364);
  u_xlat5 = vec3<f32>(x_365.x, x_365.y, x_365.z);
  let x_367 : f32 = u_xlat42;
  u_xlat42 = (-(x_367) + 1.0f);
  let x_373 : f32 = u_xlat42;
  let x_375 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_373 < x_375);
  let x_380 : bool = u_xlatb0.x;
  if (x_380) {
    x_381 = 1.0f;
  } else {
    let x_386 : f32 = u_xlat14.x;
    x_381 = x_386;
  }
  let x_387 : f32 = x_381;
  u_xlat6.x = x_387;
  let x_390 : bool = u_xlatb0.x;
  let x_391 : bool = u_xlatb45;
  u_xlatb0.x = (x_390 | x_391);
  let x_395 : bool = u_xlatb0.x;
  if (x_395) {
    x_396 = 1.0f;
  } else {
    let x_401 : f32 = u_xlat28.x;
    x_396 = x_401;
  }
  let x_402 : f32 = x_396;
  u_xlat6.y = x_402;
  let x_410 : vec4<f32> = x_408.x_TaaMotionVectorTex_TexelSize;
  let x_412 : vec4<f32> = u_xlat6;
  let x_415 : vec2<f32> = vs_TEXCOORD0;
  let x_416 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_412.x, x_412.y)) + x_415);
  let x_417 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_416.x, x_416.y, x_417.z);
  let x_424 : vec3<f32> = u_xlat0;
  let x_427 : f32 = x_27.x_GlobalMipBias.x;
  let x_428 : vec4<f32> = textureSampleBias(x_TaaMotionVectorTex, sampler_LinearClamp, vec2<f32>(x_424.x, x_424.y), x_427);
  let x_429 : vec2<f32> = vec2<f32>(x_428.x, x_428.y);
  let x_430 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_429.x, x_429.y, x_430.z);
  let x_432 : vec3<f32> = u_xlat0;
  let x_435 : vec2<f32> = vs_TEXCOORD0;
  u_xlat28 = (-(vec2<f32>(x_432.x, x_432.y)) + x_435);
  let x_437 : vec2<f32> = u_xlat28;
  let x_439 : vec4<f32> = x_408.x_TaaAccumulationTex_TexelSize;
  let x_444 : vec2<f32> = ((x_437 * vec2<f32>(x_439.z, x_439.w)) + vec2<f32>(-0.5f, -0.5f));
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat6;
  let x_449 : vec2<f32> = floor(vec2<f32>(x_447.x, x_447.y));
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
  let x_453 : vec4<f32> = u_xlat6;
  u_xlat7 = (vec4<f32>(x_453.x, x_453.y, x_453.x, x_453.y) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_458 : vec4<f32> = u_xlat6;
  let x_462 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) + vec2<f32>(2.5f, 2.5f));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat6;
  let x_468 : vec4<f32> = x_408.x_TaaAccumulationTex_TexelSize;
  let x_470 : vec2<f32> = (vec2<f32>(x_465.x, x_465.y) * vec2<f32>(x_468.x, x_468.y));
  let x_471 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
  let x_473 : vec2<f32> = u_xlat28;
  let x_475 : vec4<f32> = x_408.x_TaaAccumulationTex_TexelSize;
  let x_478 : vec4<f32> = u_xlat7;
  u_xlat28 = ((x_473 * vec2<f32>(x_475.z, x_475.w)) + -(vec2<f32>(x_478.x, x_478.y)));
  let x_483 : vec2<f32> = u_xlat28;
  let x_484 : vec2<f32> = u_xlat28;
  let x_485 : vec2<f32> = (x_483 * x_484);
  let x_486 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_485.x, x_485.y, x_486.z);
  let x_489 : vec2<f32> = u_xlat28;
  let x_491 : vec3<f32> = u_xlat8;
  u_xlat9 = (vec4<f32>(x_489.x, x_489.y, x_489.x, x_489.y) * vec4<f32>(x_491.x, x_491.y, x_491.x, x_491.y));
  let x_495 : vec4<f32> = u_xlat9;
  let x_498 : vec3<f32> = u_xlat8;
  u_xlat36 = ((vec2<f32>(x_495.w, x_495.z) * vec2<f32>(-0.5f, -0.5f)) + vec2<f32>(x_498.y, x_498.x));
  let x_501 : vec2<f32> = u_xlat28;
  let x_506 : vec2<f32> = u_xlat36;
  u_xlat36 = ((-(vec2<f32>(x_501.y, x_501.x)) * vec2<f32>(0.5f, 0.5f)) + x_506);
  let x_508 : vec4<f32> = u_xlat9;
  let x_512 : vec2<f32> = (vec2<f32>(x_508.x, x_508.y) * vec2<f32>(-1.5f, -1.5f));
  let x_513 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
  let x_515 : vec3<f32> = u_xlat8;
  let x_520 : vec4<f32> = u_xlat9;
  let x_522 : vec2<f32> = ((vec2<f32>(x_515.x, x_515.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_520.x, x_520.y));
  let x_523 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
  let x_526 : vec3<f32> = u_xlat8;
  u_xlat10 = (vec4<f32>(x_526.x, x_526.y, x_526.x, x_526.y) * vec4<f32>(2.5f, 2.5f, 0.5f, 0.5f));
  let x_530 : vec2<f32> = u_xlat28;
  let x_532 : vec4<f32> = u_xlat9;
  u_xlat28 = ((x_530 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_532.x, x_532.y));
  let x_535 : vec4<f32> = u_xlat9;
  let x_540 : vec4<f32> = u_xlat10;
  let x_543 : vec2<f32> = ((vec2<f32>(x_535.w, x_535.z) * vec2<f32>(1.5f, 1.5f)) + -(vec2<f32>(x_540.y, x_540.x)));
  let x_544 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_543.x, x_543.y, x_544.z);
  let x_546 : vec4<f32> = u_xlat9;
  let x_549 : vec4<f32> = u_xlat10;
  let x_552 : vec2<f32> = ((vec2<f32>(x_546.z, x_546.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_549.z, x_549.w)));
  let x_553 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
  let x_555 : vec3<f32> = u_xlat8;
  let x_558 : vec2<f32> = (vec2<f32>(x_555.x, x_555.y) + vec2<f32>(1.0f, 1.0f));
  let x_559 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_558.x, x_558.y, x_559.z);
  let x_561 : vec2<f32> = u_xlat28;
  let x_563 : vec3<f32> = u_xlat8;
  let x_565 : vec2<f32> = (vec2<f32>(x_561.y, x_561.x) + vec2<f32>(x_563.x, x_563.y));
  let x_566 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_565.x, x_565.y, x_566.z);
  let x_568 : vec2<f32> = u_xlat28;
  let x_569 : vec3<f32> = u_xlat8;
  u_xlat28 = (x_568 / vec2<f32>(x_569.y, x_569.x));
  let x_572 : vec2<f32> = u_xlat28;
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat28 = (x_572 + vec2<f32>(x_573.x, x_573.y));
  let x_576 : vec4<f32> = u_xlat7;
  let x_579 : vec4<f32> = x_408.x_TaaAccumulationTex_TexelSize;
  let x_581 : vec2<f32> = (vec2<f32>(x_576.z, x_576.w) * vec2<f32>(x_579.x, x_579.y));
  let x_582 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_581.x, x_581.y);
  let x_584 : vec2<f32> = u_xlat28;
  let x_586 : vec4<f32> = x_408.x_TaaAccumulationTex_TexelSize;
  let x_588 : vec2<f32> = (x_584 * vec2<f32>(x_586.x, x_586.y));
  let x_589 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
  let x_591 : vec2<f32> = u_xlat36;
  let x_592 : vec3<f32> = u_xlat8;
  u_xlat28 = (x_591 * vec2<f32>(x_592.y, x_592.x));
  let x_599 : vec4<f32> = u_xlat7;
  let x_602 : f32 = x_27.x_GlobalMipBias.x;
  let x_603 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_599.z, x_599.y), x_602);
  let x_604 : vec3<f32> = vec3<f32>(x_603.x, x_603.y, x_603.z);
  let x_605 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_611 : vec4<f32> = u_xlat7;
  let x_614 : f32 = x_27.x_GlobalMipBias.x;
  let x_615 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_611.x, x_611.w), x_614);
  u_xlat11 = vec3<f32>(x_615.x, x_615.y, x_615.z);
  let x_618 : vec4<f32> = u_xlat10;
  u_xlat45 = dot(vec2<f32>(x_618.x, x_618.z), vec2<f32>(0.5f, -0.5f));
  let x_623 : f32 = u_xlat45;
  u_xlat12.y = (x_623 + 0.50196081399917602539f);
  let x_627 : vec4<f32> = u_xlat10;
  u_xlat45 = dot(vec3<f32>(x_627.x, x_627.z, x_627.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_632 : vec4<f32> = u_xlat10;
  u_xlat12.x = dot(vec3<f32>(x_632.x, x_632.z, x_632.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_638 : f32 = u_xlat45;
  u_xlat12.z = (x_638 + 0.50196081399917602539f);
  let x_642 : vec2<f32> = u_xlat28;
  let x_644 : vec3<f32> = u_xlat12;
  let x_645 : vec3<f32> = (vec3<f32>(x_642.y, x_642.y, x_642.y) * x_644);
  let x_646 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : vec3<f32> = u_xlat11;
  u_xlat45 = dot(vec2<f32>(x_648.x, x_648.z), vec2<f32>(0.5f, -0.5f));
  let x_651 : f32 = u_xlat45;
  u_xlat12.y = (x_651 + 0.50196081399917602539f);
  let x_654 : vec3<f32> = u_xlat11;
  u_xlat45 = dot(vec3<f32>(x_654.x, x_654.z, x_654.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_657 : vec3<f32> = u_xlat11;
  u_xlat12.x = dot(vec3<f32>(x_657.x, x_657.z, x_657.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_661 : f32 = u_xlat45;
  u_xlat12.z = (x_661 + 0.50196081399917602539f);
  let x_664 : vec3<f32> = u_xlat12;
  let x_665 : vec2<f32> = u_xlat28;
  let x_668 : vec4<f32> = u_xlat10;
  let x_670 : vec3<f32> = ((x_664 * vec3<f32>(x_665.x, x_665.x, x_665.x)) + vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_674 : f32 = u_xlat28.y;
  let x_676 : f32 = u_xlat28.x;
  u_xlat28.x = (x_674 + x_676);
  let x_680 : f32 = u_xlat8.y;
  let x_682 : f32 = u_xlat8.x;
  let x_685 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_680 * x_682) + x_685);
  let x_689 : f32 = u_xlat9.x;
  let x_691 : f32 = u_xlat8.x;
  let x_694 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_689 * x_691) + x_694);
  let x_698 : f32 = u_xlat9.y;
  let x_700 : f32 = u_xlat8.y;
  let x_703 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_698 * x_700) + x_703);
  let x_707 : vec3<f32> = u_xlat8;
  let x_709 : vec4<f32> = u_xlat9;
  u_xlat35 = (vec2<f32>(x_707.x, x_707.y) * vec2<f32>(x_709.x, x_709.y));
  let x_713 : f32 = u_xlat8.x;
  let x_715 : f32 = u_xlat8.y;
  u_xlat42 = (x_713 * x_715);
  let x_718 : f32 = u_xlat28.x;
  u_xlat28.x = (1.0f / x_718);
  let x_724 : vec4<f32> = u_xlat7;
  let x_727 : f32 = x_27.x_GlobalMipBias.x;
  let x_728 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_724.x, x_724.y), x_727);
  u_xlat8 = vec3<f32>(x_728.x, x_728.y, x_728.z);
  let x_730 : vec4<f32> = u_xlat7;
  let x_731 : vec2<f32> = vec2<f32>(x_730.y, x_730.x);
  let x_732 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_732.x, x_732.y, x_731.x, x_731.y);
  let x_734 : vec3<f32> = u_xlat8;
  u_xlat45 = dot(vec2<f32>(x_734.x, x_734.z), vec2<f32>(0.5f, -0.5f));
  let x_737 : f32 = u_xlat45;
  u_xlat9.y = (x_737 + 0.50196081399917602539f);
  let x_740 : vec3<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_740.x, x_740.z, x_740.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_743 : vec3<f32> = u_xlat8;
  u_xlat9.x = dot(vec3<f32>(x_743.x, x_743.z, x_743.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_747 : f32 = u_xlat45;
  u_xlat9.z = (x_747 + 0.50196081399917602539f);
  let x_750 : vec4<f32> = u_xlat9;
  let x_752 : f32 = u_xlat42;
  let x_755 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_752, x_752, x_752)) + vec3<f32>(x_755.x, x_755.y, x_755.z));
  let x_761 : vec4<f32> = u_xlat6;
  let x_764 : f32 = x_27.x_GlobalMipBias.x;
  let x_765 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_761.x, x_761.z), x_764);
  let x_766 : vec3<f32> = vec3<f32>(x_765.x, x_765.y, x_765.z);
  let x_767 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_772 : vec4<f32> = u_xlat6;
  let x_775 : f32 = x_27.x_GlobalMipBias.x;
  let x_776 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_772.w, x_772.y), x_775);
  let x_777 : vec3<f32> = vec3<f32>(x_776.x, x_776.y, x_776.z);
  let x_778 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : vec4<f32> = u_xlat9;
  u_xlat42 = dot(vec2<f32>(x_780.x, x_780.z), vec2<f32>(0.5f, -0.5f));
  let x_783 : f32 = u_xlat42;
  u_xlat10.y = (x_783 + 0.50196081399917602539f);
  let x_786 : vec4<f32> = u_xlat9;
  u_xlat42 = dot(vec3<f32>(x_786.x, x_786.z, x_786.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_789 : vec4<f32> = u_xlat9;
  u_xlat10.x = dot(vec3<f32>(x_789.x, x_789.z, x_789.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_793 : f32 = u_xlat42;
  u_xlat10.z = (x_793 + 0.50196081399917602539f);
  let x_796 : vec4<f32> = u_xlat10;
  let x_798 : vec2<f32> = u_xlat35;
  let x_801 : vec3<f32> = u_xlat8;
  let x_802 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.y, x_796.z) * vec3<f32>(x_798.x, x_798.x, x_798.x)) + x_801);
  let x_803 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec2<f32>(x_805.x, x_805.z), vec2<f32>(0.5f, -0.5f));
  let x_808 : f32 = u_xlat42;
  u_xlat8.y = (x_808 + 0.50196081399917602539f);
  let x_811 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_811.x, x_811.z, x_811.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_814 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(vec3<f32>(x_814.x, x_814.z, x_814.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_818 : f32 = u_xlat42;
  u_xlat8.z = (x_818 + 0.50196081399917602539f);
  let x_821 : vec3<f32> = u_xlat8;
  let x_822 : vec2<f32> = u_xlat35;
  let x_825 : vec4<f32> = u_xlat7;
  let x_827 : vec3<f32> = ((x_821 * vec3<f32>(x_822.y, x_822.y, x_822.y)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec2<f32> = u_xlat28;
  let x_832 : vec4<f32> = u_xlat6;
  let x_834 : vec3<f32> = (vec3<f32>(x_830.x, x_830.x, x_830.x) * vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec3<f32> = u_xlat5;
  u_xlat28.x = dot(vec2<f32>(x_837.x, x_837.z), vec2<f32>(0.5f, -0.5f));
  let x_842 : f32 = u_xlat28.x;
  u_xlat7.y = (x_842 + 0.50196081399917602539f);
  let x_845 : vec3<f32> = u_xlat5;
  u_xlat28.x = dot(vec3<f32>(x_845.x, x_845.z, x_845.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_849 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_849.x, x_849.z, x_849.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_854 : f32 = u_xlat28.x;
  u_xlat7.z = (x_854 + 0.50196081399917602539f);
  let x_857 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(vec2<f32>(x_857.x, x_857.z), vec2<f32>(0.5f, -0.5f));
  let x_862 : f32 = u_xlat28.x;
  u_xlat5.y = (x_862 + 0.50196081399917602539f);
  let x_865 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(vec3<f32>(x_865.x, x_865.z, x_865.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_869 : vec3<f32> = u_xlat3;
  u_xlat5.x = dot(vec3<f32>(x_869.x, x_869.z, x_869.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_874 : f32 = u_xlat28.x;
  u_xlat5.z = (x_874 + 0.50196081399917602539f);
  let x_880 : vec4<f32> = u_xlat1;
  let x_883 : f32 = x_27.x_GlobalMipBias.x;
  let x_884 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_880.z, x_880.w), x_883);
  u_xlat3 = vec3<f32>(x_884.x, x_884.y, x_884.z);
  let x_889 : vec4<f32> = u_xlat1;
  let x_892 : f32 = x_27.x_GlobalMipBias.x;
  let x_893 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_889.x, x_889.y), x_892);
  let x_894 : vec3<f32> = vec3<f32>(x_893.x, x_893.y, x_893.z);
  let x_895 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(vec2<f32>(x_897.x, x_897.z), vec2<f32>(0.5f, -0.5f));
  let x_902 : f32 = u_xlat28.x;
  u_xlat8.y = (x_902 + 0.50196081399917602539f);
  let x_905 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(vec3<f32>(x_905.x, x_905.z, x_905.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_909 : vec3<f32> = u_xlat3;
  u_xlat8.x = dot(vec3<f32>(x_909.x, x_909.z, x_909.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_914 : f32 = u_xlat28.x;
  u_xlat8.z = (x_914 + 0.50196081399917602539f);
  let x_917 : vec4<f32> = u_xlat1;
  u_xlat28.x = dot(vec2<f32>(x_917.x, x_917.z), vec2<f32>(0.5f, -0.5f));
  let x_922 : f32 = u_xlat28.x;
  u_xlat3.y = (x_922 + 0.50196081399917602539f);
  let x_925 : vec4<f32> = u_xlat1;
  u_xlat28.x = dot(vec3<f32>(x_925.x, x_925.z, x_925.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_929 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(vec3<f32>(x_929.x, x_929.z, x_929.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_934 : f32 = u_xlat28.x;
  u_xlat3.z = (x_934 + 0.50196081399917602539f);
  let x_940 : vec4<f32> = u_xlat2;
  let x_943 : f32 = x_27.x_GlobalMipBias.x;
  let x_944 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_940.z, x_940.w), x_943);
  let x_945 : vec3<f32> = vec3<f32>(x_944.x, x_944.y, x_944.z);
  let x_946 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_951 : vec4<f32> = u_xlat2;
  let x_954 : f32 = x_27.x_GlobalMipBias.x;
  let x_955 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_951.x, x_951.y), x_954);
  let x_956 : vec3<f32> = vec3<f32>(x_955.x, x_955.y, x_955.z);
  let x_957 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec4<f32> = u_xlat1;
  u_xlat28.x = dot(vec2<f32>(x_959.x, x_959.z), vec2<f32>(0.5f, -0.5f));
  let x_964 : f32 = u_xlat28.x;
  u_xlat9.y = (x_964 + 0.50196081399917602539f);
  let x_967 : vec4<f32> = u_xlat1;
  u_xlat28.x = dot(vec3<f32>(x_967.x, x_967.z, x_967.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_971 : vec4<f32> = u_xlat1;
  u_xlat9.x = dot(vec3<f32>(x_971.x, x_971.z, x_971.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_976 : f32 = u_xlat28.x;
  u_xlat9.z = (x_976 + 0.50196081399917602539f);
  let x_979 : vec4<f32> = u_xlat2;
  u_xlat28.x = dot(vec2<f32>(x_979.x, x_979.z), vec2<f32>(0.5f, -0.5f));
  let x_984 : f32 = u_xlat28.x;
  u_xlat1.y = (x_984 + 0.50196081399917602539f);
  let x_987 : vec4<f32> = u_xlat2;
  u_xlat28.x = dot(vec3<f32>(x_987.x, x_987.z, x_987.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_991 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_991.x, x_991.z, x_991.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_996 : f32 = u_xlat28.x;
  u_xlat1.z = (x_996 + 0.50196081399917602539f);
  let x_999 : vec4<f32> = u_xlat1;
  let x_1001 : vec4<f32> = u_xlat1;
  let x_1003 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1009 : vec2<f32> = vs_TEXCOORD0;
  let x_1011 : f32 = x_27.x_GlobalMipBias.x;
  let x_1012 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_1009, x_1011);
  let x_1013 : vec3<f32> = vec3<f32>(x_1012.x, x_1012.y, x_1012.z);
  let x_1014 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1016 : vec4<f32> = u_xlat10;
  u_xlat28.x = dot(vec2<f32>(x_1016.x, x_1016.z), vec2<f32>(0.5f, -0.5f));
  let x_1021 : f32 = u_xlat28.x;
  u_xlat11.y = (x_1021 + 0.50196081399917602539f);
  let x_1024 : vec4<f32> = u_xlat10;
  u_xlat28.x = dot(vec3<f32>(x_1024.x, x_1024.z, x_1024.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_1028 : vec4<f32> = u_xlat10;
  u_xlat11.x = dot(vec3<f32>(x_1028.x, x_1028.z, x_1028.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_1033 : f32 = u_xlat28.x;
  u_xlat11.z = (x_1033 + 0.50196081399917602539f);
  let x_1036 : vec3<f32> = u_xlat11;
  let x_1037 : vec3<f32> = u_xlat11;
  let x_1039 : vec4<f32> = u_xlat2;
  let x_1041 : vec3<f32> = ((x_1036 * x_1037) + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat9;
  let x_1046 : vec4<f32> = u_xlat9;
  let x_1049 : vec4<f32> = u_xlat2;
  let x_1051 : vec3<f32> = ((vec3<f32>(x_1044.x, x_1044.y, x_1044.z) * vec3<f32>(x_1046.x, x_1046.y, x_1046.z)) + vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec3<f32> = u_xlat3;
  let x_1055 : vec3<f32> = u_xlat3;
  let x_1057 : vec4<f32> = u_xlat2;
  let x_1059 : vec3<f32> = ((x_1054 * x_1055) + vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec3<f32> = u_xlat8;
  let x_1063 : vec3<f32> = u_xlat8;
  let x_1065 : vec4<f32> = u_xlat2;
  let x_1067 : vec3<f32> = ((x_1062 * x_1063) + vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1070 : vec3<f32> = u_xlat5;
  let x_1071 : vec3<f32> = u_xlat5;
  let x_1073 : vec4<f32> = u_xlat2;
  let x_1075 : vec3<f32> = ((x_1070 * x_1071) + vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1076 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1081 : vec4<f32> = u_xlat4;
  let x_1084 : f32 = x_27.x_GlobalMipBias.x;
  let x_1085 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_1081.x, x_1081.y), x_1084);
  let x_1086 : vec3<f32> = vec3<f32>(x_1085.x, x_1085.y, x_1085.z);
  let x_1087 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  let x_1092 : vec4<f32> = u_xlat4;
  let x_1095 : f32 = x_27.x_GlobalMipBias.x;
  let x_1096 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_1092.z, x_1092.w), x_1095);
  let x_1097 : vec3<f32> = vec3<f32>(x_1096.x, x_1096.y, x_1096.z);
  let x_1098 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec4<f32> = u_xlat10;
  u_xlat28.x = dot(vec2<f32>(x_1100.x, x_1100.z), vec2<f32>(0.5f, -0.5f));
  let x_1105 : f32 = u_xlat28.x;
  u_xlat12.y = (x_1105 + 0.50196081399917602539f);
  let x_1108 : vec4<f32> = u_xlat10;
  u_xlat28.x = dot(vec3<f32>(x_1108.x, x_1108.z, x_1108.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_1112 : vec4<f32> = u_xlat10;
  u_xlat12.x = dot(vec3<f32>(x_1112.x, x_1112.z, x_1112.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_1117 : f32 = u_xlat28.x;
  u_xlat12.z = (x_1117 + 0.50196081399917602539f);
  let x_1120 : vec3<f32> = u_xlat12;
  let x_1121 : vec3<f32> = u_xlat12;
  let x_1123 : vec4<f32> = u_xlat2;
  let x_1125 : vec3<f32> = ((x_1120 * x_1121) + vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1128 : vec4<f32> = u_xlat4;
  u_xlat28.x = dot(vec2<f32>(x_1128.x, x_1128.z), vec2<f32>(0.5f, -0.5f));
  let x_1133 : f32 = u_xlat28.x;
  u_xlat10.y = (x_1133 + 0.50196081399917602539f);
  let x_1136 : vec4<f32> = u_xlat4;
  u_xlat28.x = dot(vec3<f32>(x_1136.x, x_1136.z, x_1136.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_1140 : vec4<f32> = u_xlat4;
  u_xlat10.x = dot(vec3<f32>(x_1140.x, x_1140.z, x_1140.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_1145 : f32 = u_xlat28.x;
  u_xlat10.z = (x_1145 + 0.50196081399917602539f);
  let x_1148 : vec4<f32> = u_xlat10;
  let x_1150 : vec4<f32> = u_xlat10;
  let x_1153 : vec4<f32> = u_xlat2;
  let x_1155 : vec3<f32> = ((vec3<f32>(x_1148.x, x_1148.y, x_1148.z) * vec3<f32>(x_1150.x, x_1150.y, x_1150.z)) + vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
  let x_1156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : vec4<f32> = u_xlat7;
  let x_1160 : vec4<f32> = u_xlat7;
  let x_1163 : vec4<f32> = u_xlat2;
  let x_1165 : vec3<f32> = ((vec3<f32>(x_1158.x, x_1158.y, x_1158.z) * vec3<f32>(x_1160.x, x_1160.y, x_1160.z)) + vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
  let x_1168 : vec4<f32> = u_xlat1;
  let x_1170 : vec3<f32> = u_xlat11;
  let x_1171 : vec3<f32> = (vec3<f32>(x_1168.x, x_1168.y, x_1168.z) + x_1170);
  let x_1172 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : vec4<f32> = u_xlat9;
  let x_1176 : vec4<f32> = u_xlat4;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1174.x, x_1174.y, x_1174.z) + vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec3<f32> = u_xlat3;
  let x_1182 : vec4<f32> = u_xlat4;
  let x_1184 : vec3<f32> = (x_1181 + vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
  let x_1185 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
  let x_1187 : vec3<f32> = u_xlat8;
  let x_1188 : vec4<f32> = u_xlat4;
  let x_1190 : vec3<f32> = (x_1187 + vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1193 : vec3<f32> = u_xlat5;
  let x_1194 : vec4<f32> = u_xlat4;
  let x_1196 : vec3<f32> = (x_1193 + vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
  let x_1197 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
  let x_1199 : vec3<f32> = u_xlat12;
  let x_1200 : vec4<f32> = u_xlat4;
  let x_1202 : vec3<f32> = (x_1199 + vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1203.w);
  let x_1205 : vec4<f32> = u_xlat10;
  let x_1207 : vec4<f32> = u_xlat4;
  let x_1209 : vec3<f32> = (vec3<f32>(x_1205.x, x_1205.y, x_1205.z) + vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec4<f32> = u_xlat7;
  let x_1214 : vec4<f32> = u_xlat4;
  let x_1216 : vec3<f32> = (vec3<f32>(x_1212.x, x_1212.y, x_1212.z) + vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1220 : vec4<f32> = u_xlat4;
  u_xlat13 = (vec3<f32>(x_1220.x, x_1220.y, x_1220.z) * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f));
  let x_1225 : vec3<f32> = u_xlat13;
  let x_1226 : vec3<f32> = u_xlat13;
  u_xlat13 = (x_1225 * x_1226);
  let x_1228 : vec4<f32> = u_xlat2;
  let x_1231 : vec3<f32> = u_xlat13;
  let x_1233 : vec3<f32> = ((vec3<f32>(x_1228.x, x_1228.y, x_1228.z) * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f)) + -(x_1231));
  let x_1234 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1236 : vec4<f32> = u_xlat2;
  let x_1239 : vec3<f32> = sqrt(abs(vec3<f32>(x_1236.x, x_1236.y, x_1236.z)));
  let x_1240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec4<f32> = u_xlat2;
  let x_1246 : f32 = x_408.x_TaaVarianceClampScale;
  let x_1248 : f32 = x_408.x_TaaVarianceClampScale;
  let x_1250 : f32 = x_408.x_TaaVarianceClampScale;
  let x_1251 : vec3<f32> = vec3<f32>(x_1246, x_1248, x_1250);
  let x_1256 : vec3<f32> = (vec3<f32>(x_1242.x, x_1242.y, x_1242.z) * vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
  let x_1257 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : vec4<f32> = u_xlat4;
  let x_1262 : vec4<f32> = u_xlat2;
  u_xlat13 = ((vec3<f32>(x_1259.x, x_1259.y, x_1259.z) * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f)) + -(vec3<f32>(x_1262.x, x_1262.y, x_1262.z)));
  let x_1266 : vec4<f32> = u_xlat4;
  let x_1269 : vec4<f32> = u_xlat2;
  let x_1271 : vec3<f32> = ((vec3<f32>(x_1266.x, x_1266.y, x_1266.z) * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f)) + vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
  let x_1272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
  let x_1274 : vec4<f32> = u_xlat1;
  let x_1276 : vec3<f32> = u_xlat11;
  let x_1277 : vec3<f32> = min(vec3<f32>(x_1274.x, x_1274.y, x_1274.z), x_1276);
  let x_1278 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : vec4<f32> = u_xlat1;
  let x_1282 : vec3<f32> = u_xlat11;
  let x_1283 : vec3<f32> = max(vec3<f32>(x_1280.x, x_1280.y, x_1280.z), x_1282);
  let x_1284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
  let x_1286 : vec4<f32> = u_xlat1;
  let x_1288 : vec4<f32> = u_xlat9;
  let x_1290 : vec3<f32> = max(vec3<f32>(x_1286.x, x_1286.y, x_1286.z), vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1293 : vec4<f32> = u_xlat4;
  let x_1295 : vec4<f32> = u_xlat9;
  let x_1297 : vec3<f32> = min(vec3<f32>(x_1293.x, x_1293.y, x_1293.z), vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
  let x_1298 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
  let x_1300 : vec3<f32> = u_xlat3;
  let x_1301 : vec4<f32> = u_xlat4;
  let x_1303 : vec3<f32> = min(x_1300, vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
  let x_1304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
  let x_1306 : vec4<f32> = u_xlat1;
  let x_1308 : vec3<f32> = u_xlat3;
  let x_1309 : vec3<f32> = max(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), x_1308);
  let x_1310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
  let x_1312 : vec4<f32> = u_xlat1;
  let x_1314 : vec3<f32> = u_xlat8;
  let x_1315 : vec3<f32> = max(vec3<f32>(x_1312.x, x_1312.y, x_1312.z), x_1314);
  let x_1316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : vec4<f32> = u_xlat4;
  let x_1320 : vec3<f32> = u_xlat8;
  u_xlat3 = min(vec3<f32>(x_1318.x, x_1318.y, x_1318.z), x_1320);
  let x_1322 : vec3<f32> = u_xlat3;
  let x_1323 : vec3<f32> = u_xlat5;
  u_xlat3 = min(x_1322, x_1323);
  let x_1325 : vec4<f32> = u_xlat1;
  let x_1327 : vec3<f32> = u_xlat5;
  let x_1328 : vec3<f32> = max(vec3<f32>(x_1325.x, x_1325.y, x_1325.z), x_1327);
  let x_1329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
  let x_1331 : vec4<f32> = u_xlat1;
  let x_1333 : vec3<f32> = u_xlat12;
  let x_1334 : vec3<f32> = max(vec3<f32>(x_1331.x, x_1331.y, x_1331.z), x_1333);
  let x_1335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
  let x_1337 : vec3<f32> = u_xlat3;
  let x_1338 : vec3<f32> = u_xlat12;
  u_xlat3 = min(x_1337, x_1338);
  let x_1340 : vec3<f32> = u_xlat3;
  let x_1341 : vec4<f32> = u_xlat10;
  u_xlat3 = min(x_1340, vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : vec4<f32> = u_xlat1;
  let x_1346 : vec4<f32> = u_xlat10;
  let x_1348 : vec3<f32> = max(vec3<f32>(x_1344.x, x_1344.y, x_1344.z), vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
  let x_1349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
  let x_1351 : vec4<f32> = u_xlat1;
  let x_1353 : vec4<f32> = u_xlat7;
  let x_1355 : vec3<f32> = max(vec3<f32>(x_1351.x, x_1351.y, x_1351.z), vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
  let x_1356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1358 : vec3<f32> = u_xlat3;
  let x_1359 : vec4<f32> = u_xlat7;
  u_xlat3 = min(x_1358, vec3<f32>(x_1359.x, x_1359.y, x_1359.z));
  let x_1362 : vec3<f32> = u_xlat13;
  let x_1363 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_1362, x_1363);
  let x_1365 : vec3<f32> = u_xlat3;
  let x_1366 : vec4<f32> = u_xlat6;
  u_xlat3 = max(x_1365, vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
  let x_1369 : vec4<f32> = u_xlat2;
  let x_1371 : vec4<f32> = u_xlat1;
  let x_1373 : vec3<f32> = min(vec3<f32>(x_1369.x, x_1369.y, x_1369.z), vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
  let x_1374 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
  let x_1376 : vec4<f32> = u_xlat1;
  let x_1378 : vec3<f32> = u_xlat3;
  let x_1379 : vec3<f32> = min(vec3<f32>(x_1376.x, x_1376.y, x_1376.z), x_1378);
  let x_1380 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1383 : f32 = u_xlat1.x;
  u_xlat28.x = (x_1383 + 1.0f);
  let x_1387 : f32 = u_xlat28.x;
  u_xlat28.x = (1.0f / x_1387);
  let x_1390 : vec2<f32> = u_xlat28;
  let x_1392 : vec4<f32> = u_xlat1;
  let x_1394 : vec3<f32> = (vec3<f32>(x_1390.x, x_1390.x, x_1390.x) * vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
  let x_1395 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
  let x_1398 : f32 = u_xlat11.x;
  u_xlat28.x = (x_1398 + 1.0f);
  let x_1402 : f32 = u_xlat28.x;
  u_xlat28.x = (1.0f / x_1402);
  let x_1405 : vec3<f32> = u_xlat11;
  let x_1406 : vec2<f32> = u_xlat28;
  let x_1409 : vec4<f32> = u_xlat1;
  let x_1412 : vec3<f32> = ((x_1405 * vec3<f32>(x_1406.x, x_1406.x, x_1406.x)) + -(vec3<f32>(x_1409.x, x_1409.y, x_1409.z)));
  let x_1413 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
  let x_1415 : vec2<f32> = vs_TEXCOORD0;
  u_xlat28 = (x_1415 + vec2<f32>(-0.5f, -0.5f));
  let x_1417 : vec3<f32> = u_xlat0;
  let x_1420 : vec2<f32> = u_xlat28;
  let x_1421 : vec2<f32> = (-(vec2<f32>(x_1417.x, x_1417.y)) + x_1420);
  let x_1422 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1421.x, x_1421.y, x_1422.z);
  let x_1425 : vec3<f32> = u_xlat0;
  let x_1429 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f) < abs(vec4<f32>(x_1425.x, x_1425.y, x_1425.x, x_1425.x)));
  u_xlatb0 = vec2<bool>(x_1429.x, x_1429.y);
  let x_1432 : bool = u_xlatb0.y;
  let x_1434 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_1432 | x_1434);
  let x_1438 : bool = u_xlatb0.x;
  if (x_1438) {
    x_1439 = 1.0f;
  } else {
    let x_1445 : f32 = x_408.x_TaaFrameInfluence;
    x_1439 = x_1445;
  }
  let x_1446 : f32 = x_1439;
  u_xlat0.x = x_1446;
  let x_1448 : vec3<f32> = u_xlat0;
  let x_1450 : vec4<f32> = u_xlat2;
  let x_1453 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1448.x, x_1448.x, x_1448.x) * vec3<f32>(x_1450.x, x_1450.y, x_1450.z)) + vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1457 : f32 = u_xlat0.x;
  u_xlat42 = (-(x_1457) + 1.0f);
  let x_1460 : f32 = u_xlat42;
  u_xlat42 = (1.0f / x_1460);
  let x_1462 : vec3<f32> = u_xlat0;
  let x_1464 : f32 = u_xlat42;
  u_xlat14 = ((vec2<f32>(x_1462.z, x_1462.y) * vec2<f32>(x_1464, x_1464)) + vec2<f32>(-0.50196081399917602539f, -0.50196081399917602539f));
  let x_1471 : f32 = u_xlat0.x;
  let x_1472 : f32 = u_xlat42;
  let x_1475 : f32 = u_xlat14.y;
  u_xlat1.x = ((x_1471 * x_1472) + -(x_1475));
  let x_1479 : vec3<f32> = u_xlat0;
  let x_1481 : f32 = u_xlat42;
  let x_1484 : vec2<f32> = u_xlat14;
  let x_1486 : vec2<f32> = ((vec2<f32>(x_1479.x, x_1479.x) * vec2<f32>(x_1481, x_1481)) + vec2<f32>(x_1484.y, x_1484.x));
  let x_1487 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1487.x, x_1486.x, x_1486.y, x_1487.w);
  let x_1490 : f32 = u_xlat14.x;
  let x_1493 : f32 = u_xlat1.x;
  u_xlat2.w = (-(x_1490) + x_1493);
  let x_1498 : f32 = u_xlat14.x;
  let x_1501 : f32 = u_xlat2.y;
  u_xlat2.x = (-(x_1498) + x_1501);
  let x_1506 : vec4<f32> = u_xlat2;
  let x_1509 : vec3<f32> = max(vec3<f32>(x_1506.x, x_1506.z, x_1506.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1510 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  SV_Target0.w = 1.0f;
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


