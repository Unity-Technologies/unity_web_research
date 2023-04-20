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

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_408 : TemporalAAData;

@group(0) @binding(2) var x_TaaMotionVectorTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_TaaAccumulationTex : texture_2d<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

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
  var x_1064 : f32;
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
  let x_412 : vec3<f32> = u_xlat6;
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
  let x_441 : vec2<f32> = u_xlat28;
  let x_443 : f32 = x_27.x_GlobalMipBias.x;
  let x_444 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, x_441, x_443);
  u_xlat6 = vec3<f32>(x_444.x, x_444.y, x_444.z);
  let x_446 : vec3<f32> = u_xlat6;
  u_xlat28.x = dot(vec2<f32>(x_446.x, x_446.z), vec2<f32>(0.5f, -0.5f));
  let x_455 : f32 = u_xlat28.x;
  u_xlat7.y = (x_455 + 0.50196081399917602539f);
  let x_459 : vec3<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_459.x, x_459.z, x_459.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_465 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(vec3<f32>(x_465.x, x_465.z, x_465.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_472 : f32 = u_xlat28.x;
  u_xlat7.z = (x_472 + 0.50196081399917602539f);
  let x_476 : vec3<f32> = u_xlat5;
  u_xlat28.x = dot(vec2<f32>(x_476.x, x_476.z), vec2<f32>(0.5f, -0.5f));
  let x_481 : f32 = u_xlat28.x;
  u_xlat6.y = (x_481 + 0.50196081399917602539f);
  let x_484 : vec3<f32> = u_xlat5;
  u_xlat28.x = dot(vec3<f32>(x_484.x, x_484.z, x_484.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_488 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_488.x, x_488.z, x_488.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_493 : f32 = u_xlat28.x;
  u_xlat6.z = (x_493 + 0.50196081399917602539f);
  let x_496 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(vec2<f32>(x_496.x, x_496.z), vec2<f32>(0.5f, -0.5f));
  let x_501 : f32 = u_xlat28.x;
  u_xlat5.y = (x_501 + 0.50196081399917602539f);
  let x_504 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(vec3<f32>(x_504.x, x_504.z, x_504.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_508 : vec3<f32> = u_xlat3;
  u_xlat5.x = dot(vec3<f32>(x_508.x, x_508.z, x_508.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_513 : f32 = u_xlat28.x;
  u_xlat5.z = (x_513 + 0.50196081399917602539f);
  let x_519 : vec4<f32> = u_xlat1;
  let x_522 : f32 = x_27.x_GlobalMipBias.x;
  let x_523 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_519.z, x_519.w), x_522);
  u_xlat3 = vec3<f32>(x_523.x, x_523.y, x_523.z);
  let x_528 : vec4<f32> = u_xlat1;
  let x_531 : f32 = x_27.x_GlobalMipBias.x;
  let x_532 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_528.x, x_528.y), x_531);
  let x_533 : vec3<f32> = vec3<f32>(x_532.x, x_532.y, x_532.z);
  let x_534 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(vec2<f32>(x_536.x, x_536.z), vec2<f32>(0.5f, -0.5f));
  let x_542 : f32 = u_xlat28.x;
  u_xlat8.y = (x_542 + 0.50196081399917602539f);
  let x_545 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(vec3<f32>(x_545.x, x_545.z, x_545.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_549 : vec3<f32> = u_xlat3;
  u_xlat8.x = dot(vec3<f32>(x_549.x, x_549.z, x_549.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_554 : f32 = u_xlat28.x;
  u_xlat8.z = (x_554 + 0.50196081399917602539f);
  let x_557 : vec4<f32> = u_xlat1;
  u_xlat28.x = dot(vec2<f32>(x_557.x, x_557.z), vec2<f32>(0.5f, -0.5f));
  let x_562 : f32 = u_xlat28.x;
  u_xlat3.y = (x_562 + 0.50196081399917602539f);
  let x_565 : vec4<f32> = u_xlat1;
  u_xlat28.x = dot(vec3<f32>(x_565.x, x_565.z, x_565.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(vec3<f32>(x_569.x, x_569.z, x_569.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_574 : f32 = u_xlat28.x;
  u_xlat3.z = (x_574 + 0.50196081399917602539f);
  let x_580 : vec4<f32> = u_xlat2;
  let x_583 : f32 = x_27.x_GlobalMipBias.x;
  let x_584 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_580.z, x_580.w), x_583);
  let x_585 : vec3<f32> = vec3<f32>(x_584.x, x_584.y, x_584.z);
  let x_586 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_591 : vec4<f32> = u_xlat2;
  let x_594 : f32 = x_27.x_GlobalMipBias.x;
  let x_595 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_591.x, x_591.y), x_594);
  let x_596 : vec3<f32> = vec3<f32>(x_595.x, x_595.y, x_595.z);
  let x_597 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat28.x = dot(vec2<f32>(x_599.x, x_599.z), vec2<f32>(0.5f, -0.5f));
  let x_605 : f32 = u_xlat28.x;
  u_xlat9.y = (x_605 + 0.50196081399917602539f);
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat28.x = dot(vec3<f32>(x_608.x, x_608.z, x_608.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_612 : vec4<f32> = u_xlat1;
  u_xlat9.x = dot(vec3<f32>(x_612.x, x_612.z, x_612.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_617 : f32 = u_xlat28.x;
  u_xlat9.z = (x_617 + 0.50196081399917602539f);
  let x_620 : vec4<f32> = u_xlat2;
  u_xlat28.x = dot(vec2<f32>(x_620.x, x_620.z), vec2<f32>(0.5f, -0.5f));
  let x_625 : f32 = u_xlat28.x;
  u_xlat1.y = (x_625 + 0.50196081399917602539f);
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat28.x = dot(vec3<f32>(x_628.x, x_628.z, x_628.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_632 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_632.x, x_632.z, x_632.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_637 : f32 = u_xlat28.x;
  u_xlat1.z = (x_637 + 0.50196081399917602539f);
  let x_640 : vec4<f32> = u_xlat1;
  let x_642 : vec4<f32> = u_xlat1;
  let x_644 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) * vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_651 : vec2<f32> = vs_TEXCOORD0;
  let x_653 : f32 = x_27.x_GlobalMipBias.x;
  let x_654 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_651, x_653);
  u_xlat10 = vec3<f32>(x_654.x, x_654.y, x_654.z);
  let x_656 : vec3<f32> = u_xlat10;
  u_xlat28.x = dot(vec2<f32>(x_656.x, x_656.z), vec2<f32>(0.5f, -0.5f));
  let x_662 : f32 = u_xlat28.x;
  u_xlat11.y = (x_662 + 0.50196081399917602539f);
  let x_665 : vec3<f32> = u_xlat10;
  u_xlat28.x = dot(vec3<f32>(x_665.x, x_665.z, x_665.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_669 : vec3<f32> = u_xlat10;
  u_xlat11.x = dot(vec3<f32>(x_669.x, x_669.z, x_669.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_674 : f32 = u_xlat28.x;
  u_xlat11.z = (x_674 + 0.50196081399917602539f);
  let x_677 : vec3<f32> = u_xlat11;
  let x_678 : vec3<f32> = u_xlat11;
  let x_680 : vec4<f32> = u_xlat2;
  let x_682 : vec3<f32> = ((x_677 * x_678) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec3<f32> = u_xlat9;
  let x_686 : vec3<f32> = u_xlat9;
  let x_688 : vec4<f32> = u_xlat2;
  let x_690 : vec3<f32> = ((x_685 * x_686) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec3<f32> = u_xlat3;
  let x_694 : vec3<f32> = u_xlat3;
  let x_696 : vec4<f32> = u_xlat2;
  let x_698 : vec3<f32> = ((x_693 * x_694) + vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec3<f32> = u_xlat8;
  let x_702 : vec3<f32> = u_xlat8;
  let x_704 : vec4<f32> = u_xlat2;
  let x_706 : vec3<f32> = ((x_701 * x_702) + vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec3<f32> = u_xlat5;
  let x_710 : vec3<f32> = u_xlat5;
  let x_712 : vec4<f32> = u_xlat2;
  let x_714 : vec3<f32> = ((x_709 * x_710) + vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_720 : vec4<f32> = u_xlat4;
  let x_723 : f32 = x_27.x_GlobalMipBias.x;
  let x_724 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_720.x, x_720.y), x_723);
  u_xlat10 = vec3<f32>(x_724.x, x_724.y, x_724.z);
  let x_729 : vec4<f32> = u_xlat4;
  let x_732 : f32 = x_27.x_GlobalMipBias.x;
  let x_733 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_729.z, x_729.w), x_732);
  let x_734 : vec3<f32> = vec3<f32>(x_733.x, x_733.y, x_733.z);
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec3<f32> = u_xlat10;
  u_xlat28.x = dot(vec2<f32>(x_737.x, x_737.z), vec2<f32>(0.5f, -0.5f));
  let x_743 : f32 = u_xlat28.x;
  u_xlat12.y = (x_743 + 0.50196081399917602539f);
  let x_746 : vec3<f32> = u_xlat10;
  u_xlat28.x = dot(vec3<f32>(x_746.x, x_746.z, x_746.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_750 : vec3<f32> = u_xlat10;
  u_xlat12.x = dot(vec3<f32>(x_750.x, x_750.z, x_750.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_755 : f32 = u_xlat28.x;
  u_xlat12.z = (x_755 + 0.50196081399917602539f);
  let x_758 : vec3<f32> = u_xlat12;
  let x_759 : vec3<f32> = u_xlat12;
  let x_761 : vec4<f32> = u_xlat2;
  let x_763 : vec3<f32> = ((x_758 * x_759) + vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat4;
  u_xlat28.x = dot(vec2<f32>(x_766.x, x_766.z), vec2<f32>(0.5f, -0.5f));
  let x_771 : f32 = u_xlat28.x;
  u_xlat10.y = (x_771 + 0.50196081399917602539f);
  let x_774 : vec4<f32> = u_xlat4;
  u_xlat28.x = dot(vec3<f32>(x_774.x, x_774.z, x_774.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_778 : vec4<f32> = u_xlat4;
  u_xlat10.x = dot(vec3<f32>(x_778.x, x_778.z, x_778.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_783 : f32 = u_xlat28.x;
  u_xlat10.z = (x_783 + 0.50196081399917602539f);
  let x_786 : vec3<f32> = u_xlat10;
  let x_787 : vec3<f32> = u_xlat10;
  let x_789 : vec4<f32> = u_xlat2;
  let x_791 : vec3<f32> = ((x_786 * x_787) + vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec3<f32> = u_xlat6;
  let x_795 : vec3<f32> = u_xlat6;
  let x_797 : vec4<f32> = u_xlat2;
  let x_799 : vec3<f32> = ((x_794 * x_795) + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec3<f32> = u_xlat11;
  let x_805 : vec3<f32> = (vec3<f32>(x_802.x, x_802.y, x_802.z) + x_804);
  let x_806 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec3<f32> = u_xlat9;
  let x_809 : vec4<f32> = u_xlat4;
  let x_811 : vec3<f32> = (x_808 + vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec3<f32> = u_xlat3;
  let x_815 : vec4<f32> = u_xlat4;
  let x_817 : vec3<f32> = (x_814 + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec3<f32> = u_xlat8;
  let x_821 : vec4<f32> = u_xlat4;
  let x_823 : vec3<f32> = (x_820 + vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec3<f32> = u_xlat5;
  let x_827 : vec4<f32> = u_xlat4;
  let x_829 : vec3<f32> = (x_826 + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec3<f32> = u_xlat12;
  let x_833 : vec4<f32> = u_xlat4;
  let x_835 : vec3<f32> = (x_832 + vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec3<f32> = u_xlat10;
  let x_839 : vec4<f32> = u_xlat4;
  let x_841 : vec3<f32> = (x_838 + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec3<f32> = u_xlat6;
  let x_845 : vec4<f32> = u_xlat4;
  let x_847 : vec3<f32> = (x_844 + vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_851 : vec4<f32> = u_xlat4;
  u_xlat13 = (vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f));
  let x_856 : vec3<f32> = u_xlat13;
  let x_857 : vec3<f32> = u_xlat13;
  u_xlat13 = (x_856 * x_857);
  let x_859 : vec4<f32> = u_xlat2;
  let x_862 : vec3<f32> = u_xlat13;
  let x_864 : vec3<f32> = ((vec3<f32>(x_859.x, x_859.y, x_859.z) * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f)) + -(x_862));
  let x_865 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : vec4<f32> = u_xlat2;
  let x_870 : vec3<f32> = sqrt(abs(vec3<f32>(x_867.x, x_867.y, x_867.z)));
  let x_871 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat2;
  let x_877 : f32 = x_408.x_TaaVarianceClampScale;
  let x_879 : f32 = x_408.x_TaaVarianceClampScale;
  let x_881 : f32 = x_408.x_TaaVarianceClampScale;
  let x_882 : vec3<f32> = vec3<f32>(x_877, x_879, x_881);
  let x_887 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat4;
  let x_893 : vec4<f32> = u_xlat2;
  u_xlat13 = ((vec3<f32>(x_890.x, x_890.y, x_890.z) * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f)) + -(vec3<f32>(x_893.x, x_893.y, x_893.z)));
  let x_897 : vec4<f32> = u_xlat4;
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec3<f32> = ((vec3<f32>(x_897.x, x_897.y, x_897.z) * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f)) + vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat1;
  let x_907 : vec3<f32> = u_xlat11;
  let x_908 : vec3<f32> = min(vec3<f32>(x_905.x, x_905.y, x_905.z), x_907);
  let x_909 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat1;
  let x_913 : vec3<f32> = u_xlat11;
  let x_914 : vec3<f32> = max(vec3<f32>(x_911.x, x_911.y, x_911.z), x_913);
  let x_915 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat1;
  let x_919 : vec3<f32> = u_xlat9;
  let x_920 : vec3<f32> = max(vec3<f32>(x_917.x, x_917.y, x_917.z), x_919);
  let x_921 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat4;
  let x_925 : vec3<f32> = u_xlat9;
  let x_926 : vec3<f32> = min(vec3<f32>(x_923.x, x_923.y, x_923.z), x_925);
  let x_927 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec3<f32> = u_xlat3;
  let x_930 : vec4<f32> = u_xlat4;
  let x_932 : vec3<f32> = min(x_929, vec3<f32>(x_930.x, x_930.y, x_930.z));
  let x_933 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec4<f32> = u_xlat1;
  let x_937 : vec3<f32> = u_xlat3;
  let x_938 : vec3<f32> = max(vec3<f32>(x_935.x, x_935.y, x_935.z), x_937);
  let x_939 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat1;
  let x_943 : vec3<f32> = u_xlat8;
  let x_944 : vec3<f32> = max(vec3<f32>(x_941.x, x_941.y, x_941.z), x_943);
  let x_945 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : vec4<f32> = u_xlat4;
  let x_949 : vec3<f32> = u_xlat8;
  u_xlat3 = min(vec3<f32>(x_947.x, x_947.y, x_947.z), x_949);
  let x_951 : vec3<f32> = u_xlat3;
  let x_952 : vec3<f32> = u_xlat5;
  u_xlat3 = min(x_951, x_952);
  let x_954 : vec4<f32> = u_xlat1;
  let x_956 : vec3<f32> = u_xlat5;
  let x_957 : vec3<f32> = max(vec3<f32>(x_954.x, x_954.y, x_954.z), x_956);
  let x_958 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_960 : vec4<f32> = u_xlat1;
  let x_962 : vec3<f32> = u_xlat12;
  let x_963 : vec3<f32> = max(vec3<f32>(x_960.x, x_960.y, x_960.z), x_962);
  let x_964 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec3<f32> = u_xlat3;
  let x_967 : vec3<f32> = u_xlat12;
  u_xlat3 = min(x_966, x_967);
  let x_969 : vec3<f32> = u_xlat3;
  let x_970 : vec3<f32> = u_xlat10;
  u_xlat3 = min(x_969, x_970);
  let x_972 : vec4<f32> = u_xlat1;
  let x_974 : vec3<f32> = u_xlat10;
  let x_975 : vec3<f32> = max(vec3<f32>(x_972.x, x_972.y, x_972.z), x_974);
  let x_976 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec4<f32> = u_xlat1;
  let x_980 : vec3<f32> = u_xlat6;
  let x_981 : vec3<f32> = max(vec3<f32>(x_978.x, x_978.y, x_978.z), x_980);
  let x_982 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec3<f32> = u_xlat3;
  let x_985 : vec3<f32> = u_xlat6;
  u_xlat3 = min(x_984, x_985);
  let x_987 : vec3<f32> = u_xlat13;
  let x_988 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_987, x_988);
  let x_990 : vec3<f32> = u_xlat3;
  let x_991 : vec3<f32> = u_xlat7;
  u_xlat3 = max(x_990, x_991);
  let x_993 : vec4<f32> = u_xlat2;
  let x_995 : vec4<f32> = u_xlat1;
  let x_997 : vec3<f32> = min(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1000 : vec4<f32> = u_xlat1;
  let x_1002 : vec3<f32> = u_xlat3;
  let x_1003 : vec3<f32> = min(vec3<f32>(x_1000.x, x_1000.y, x_1000.z), x_1002);
  let x_1004 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1007 : f32 = u_xlat1.x;
  u_xlat28.x = (x_1007 + 1.0f);
  let x_1011 : f32 = u_xlat28.x;
  u_xlat28.x = (1.0f / x_1011);
  let x_1014 : vec2<f32> = u_xlat28;
  let x_1016 : vec4<f32> = u_xlat1;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.x, x_1014.x) * vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1022 : f32 = u_xlat11.x;
  u_xlat28.x = (x_1022 + 1.0f);
  let x_1026 : f32 = u_xlat28.x;
  u_xlat28.x = (1.0f / x_1026);
  let x_1029 : vec3<f32> = u_xlat11;
  let x_1030 : vec2<f32> = u_xlat28;
  let x_1033 : vec4<f32> = u_xlat1;
  let x_1036 : vec3<f32> = ((x_1029 * vec3<f32>(x_1030.x, x_1030.x, x_1030.x)) + -(vec3<f32>(x_1033.x, x_1033.y, x_1033.z)));
  let x_1037 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec2<f32> = vs_TEXCOORD0;
  u_xlat28 = (x_1039 + vec2<f32>(-0.5f, -0.5f));
  let x_1042 : vec3<f32> = u_xlat0;
  let x_1045 : vec2<f32> = u_xlat28;
  let x_1046 : vec2<f32> = (-(vec2<f32>(x_1042.x, x_1042.y)) + x_1045);
  let x_1047 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1046.x, x_1046.y, x_1047.z);
  let x_1050 : vec3<f32> = u_xlat0;
  let x_1054 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f) < abs(vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.x)));
  u_xlatb0 = vec2<bool>(x_1054.x, x_1054.y);
  let x_1057 : bool = u_xlatb0.y;
  let x_1059 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_1057 | x_1059);
  let x_1063 : bool = u_xlatb0.x;
  if (x_1063) {
    x_1064 = 1.0f;
  } else {
    let x_1070 : f32 = x_408.x_TaaFrameInfluence;
    x_1064 = x_1070;
  }
  let x_1071 : f32 = x_1064;
  u_xlat0.x = x_1071;
  let x_1073 : vec3<f32> = u_xlat0;
  let x_1075 : vec4<f32> = u_xlat2;
  let x_1078 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1073.x, x_1073.x, x_1073.x) * vec3<f32>(x_1075.x, x_1075.y, x_1075.z)) + vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1082 : f32 = u_xlat0.x;
  u_xlat42 = (-(x_1082) + 1.0f);
  let x_1085 : f32 = u_xlat42;
  u_xlat42 = (1.0f / x_1085);
  let x_1087 : vec3<f32> = u_xlat0;
  let x_1089 : f32 = u_xlat42;
  u_xlat14 = ((vec2<f32>(x_1087.z, x_1087.y) * vec2<f32>(x_1089, x_1089)) + vec2<f32>(-0.50196081399917602539f, -0.50196081399917602539f));
  let x_1096 : f32 = u_xlat0.x;
  let x_1097 : f32 = u_xlat42;
  let x_1100 : f32 = u_xlat14.y;
  u_xlat1.x = ((x_1096 * x_1097) + -(x_1100));
  let x_1104 : vec3<f32> = u_xlat0;
  let x_1106 : f32 = u_xlat42;
  let x_1109 : vec2<f32> = u_xlat14;
  let x_1111 : vec2<f32> = ((vec2<f32>(x_1104.x, x_1104.x) * vec2<f32>(x_1106, x_1106)) + vec2<f32>(x_1109.y, x_1109.x));
  let x_1112 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1112.x, x_1111.x, x_1111.y, x_1112.w);
  let x_1115 : f32 = u_xlat14.x;
  let x_1118 : f32 = u_xlat1.x;
  u_xlat2.w = (-(x_1115) + x_1118);
  let x_1123 : f32 = u_xlat14.x;
  let x_1126 : f32 = u_xlat2.y;
  u_xlat2.x = (-(x_1123) + x_1126);
  let x_1131 : vec4<f32> = u_xlat2;
  let x_1134 : vec3<f32> = max(vec3<f32>(x_1131.x, x_1131.z, x_1131.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1135 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
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


