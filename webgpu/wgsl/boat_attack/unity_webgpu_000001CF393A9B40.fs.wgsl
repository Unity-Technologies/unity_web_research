diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Lut_Params : vec4<f32>,
  /* @offset(64) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(80) */
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(96) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(112) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(128) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(144) */
  x_Grain_Params : vec2<f32>,
  /* @offset(160) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(176) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_232 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_498 : f32;
  var x_510 : f32;
  var x_522 : f32;
  var x_667 : f32;
  var x_679 : f32;
  var x_691 : f32;
  var x_890 : f32;
  var x_902 : f32;
  var x_914 : f32;
  var x_1002 : f32;
  var x_1014 : f32;
  var x_1026 : f32;
  var x_1081 : f32;
  var x_1093 : f32;
  var x_1105 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_44 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
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
    u_xlat11 = (1.0f / x_115);
    let x_118 : f32 = u_xlat6.x;
    let x_119 : f32 = u_xlat11;
    u_xlat6.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat6;
    let x_129 : vec2<f32> = u_xlat10;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_136);
    let x_138 : f32 = u_xlat16;
    let x_140 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_158);
    let x_160 : f32 = u_xlat7;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat7 = (x_166 * x_168);
    let x_171 : f32 = u_xlat7;
    u_xlat12 = ((x_171 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_176 : f32 = u_xlat7;
    let x_177 : f32 = u_xlat12;
    u_xlat12 = ((x_176 * x_177) + 0.18014100193977355957f);
    let x_181 : f32 = u_xlat7;
    let x_182 : f32 = u_xlat12;
    u_xlat12 = ((x_181 * x_182) + -0.33029949665069580078f);
    let x_186 : f32 = u_xlat7;
    let x_187 : f32 = u_xlat12;
    u_xlat7 = ((x_186 * x_187) + 0.99986600875854492188f);
    let x_191 : f32 = u_xlat7;
    let x_193 : f32 = u_xlat2.x;
    u_xlat12 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat12;
    u_xlat12 = ((x_200 * -2.0f) + 1.57079637050628662109f);
    let x_205 : bool = u_xlatb17;
    let x_206 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_206, x_205);
    let x_209 : f32 = u_xlat2.x;
    let x_210 : f32 = u_xlat7;
    let x_212 : f32 = u_xlat12;
    u_xlat2.x = ((x_209 * x_210) + x_212);
    let x_216 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_216, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_223 < -(x_225));
    let x_230 : bool = u_xlatb1.x;
    if (x_230) {
      let x_236 : f32 = u_xlat2.x;
      x_232 = -(x_236);
    } else {
      let x_240 : f32 = u_xlat2.x;
      x_232 = x_240;
    }
    let x_241 : f32 = x_232;
    u_xlat1.x = x_241;
    let x_243 : f32 = u_xlat16;
    let x_245 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_243 * x_245) + -1.0f);
    let x_249 : vec4<f32> = u_xlat0;
    let x_251 : vec3<f32> = u_xlat1;
    let x_254 : vec2<f32> = u_xlat10;
    let x_255 : vec2<f32> = ((vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_251.x, x_251.x)) + x_254);
    let x_256 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_255.x, x_255.y, x_256.z);
  }
  let x_260 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_266 : vec4<f32> = x_25.x_RTHandleScale;
  let x_268 : vec2<f32> = ((-(vec2<f32>(x_260.x, x_260.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_266.x, x_266.y));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat0;
  let x_273 : vec3<f32> = u_xlat6;
  let x_275 : vec2<f32> = min(vec2<f32>(x_271.x, x_271.y), vec2<f32>(x_273.x, x_273.y));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_288 : vec4<f32> = u_xlat0;
  let x_292 : f32 = x_25.x_GlobalMipBias.x;
  let x_293 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_288.x, x_288.y), x_292);
  let x_294 : vec3<f32> = vec3<f32>(x_293.x, x_293.y, x_293.z);
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_301 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_301);
  let x_303 : bool = u_xlatb15;
  if (x_303) {
    let x_306 : vec3<f32> = u_xlat6;
    let x_309 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_312 : vec2<f32> = (vec2<f32>(x_306.x, x_306.y) + -(vec2<f32>(x_309.x, x_309.y)));
    let x_313 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_312.x, x_312.y, x_313.z);
    let x_315 : vec3<f32> = u_xlat1;
    let x_319 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_321 : vec2<f32> = (abs(vec2<f32>(x_315.x, x_315.y)) * vec2<f32>(x_319.z, x_319.z));
    let x_322 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_322.x, x_321.x, x_321.y);
    let x_325 : f32 = u_xlat1.y;
    let x_328 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_325 * x_328);
    let x_332 : vec3<f32> = u_xlat1;
    let x_334 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_332.x, x_332.z), vec2<f32>(x_334.x, x_334.z));
    let x_337 : f32 = u_xlat15;
    u_xlat15 = (-(x_337) + 1.0f);
    let x_340 : f32 = u_xlat15;
    u_xlat15 = max(x_340, 0.0f);
    let x_342 : f32 = u_xlat15;
    u_xlat15 = log2(x_342);
    let x_344 : f32 = u_xlat15;
    let x_346 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_344 * x_346);
    let x_348 : f32 = u_xlat15;
    u_xlat15 = exp2(x_348);
    let x_351 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_351.x, x_351.y, x_351.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_356 : f32 = u_xlat15;
    let x_358 : vec3<f32> = u_xlat1;
    let x_361 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_356, x_356, x_356) * x_358) + vec3<f32>(x_361.x, x_361.y, x_361.z));
    let x_364 : vec4<f32> = u_xlat0;
    let x_366 : vec3<f32> = u_xlat1;
    let x_367 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) * x_366);
    let x_368 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  }
  let x_370 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = x_25.x_Lut_Params;
  let x_376 : vec3<f32> = (vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_374.w, x_374.w, x_374.w));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_384 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_392 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec3<f32> = u_xlat1;
  let x_395 : vec4<f32> = u_xlat2;
  let x_400 : vec3<f32> = ((x_394 * vec3<f32>(x_395.x, x_395.y, x_395.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat0;
  let x_408 : vec3<f32> = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec3<f32> = u_xlat1;
  let x_412 : vec4<f32> = u_xlat0;
  let x_417 : vec3<f32> = ((x_411 * vec3<f32>(x_412.x, x_412.y, x_412.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_418 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat2;
  let x_422 : vec4<f32> = u_xlat0;
  let x_424 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) / vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat0;
  let x_431 : vec3<f32> = (vec3<f32>(x_427.x, x_427.y, x_427.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_432 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat0;
  let x_436 : vec3<f32> = (vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat0;
  let x_443 : vec3<f32> = clamp(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_448 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_448);
  let x_450 : bool = u_xlatb15;
  if (x_450) {
    let x_453 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_458 : vec4<f32> = u_xlat0;
    let x_460 : vec3<f32> = log2(vec3<f32>(x_458.x, x_458.y, x_458.z));
    let x_461 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
    let x_463 : vec4<f32> = u_xlat2;
    let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_468 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
    let x_470 : vec4<f32> = u_xlat2;
    let x_472 : vec3<f32> = exp2(vec3<f32>(x_470.x, x_470.y, x_470.z));
    let x_473 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
    let x_475 : vec4<f32> = u_xlat2;
    let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_483 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
    let x_488 : vec4<f32> = u_xlat0;
    let x_491 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_488.x, x_488.y, x_488.z, x_488.x));
    u_xlatb3 = vec3<bool>(x_491.x, x_491.y, x_491.z);
    let x_495 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_495;
    let x_497 : bool = u_xlatb3.x;
    if (x_497) {
      let x_502 : f32 = u_xlat1.x;
      x_498 = x_502;
    } else {
      let x_505 : f32 = u_xlat2.x;
      x_498 = x_505;
    }
    let x_506 : f32 = x_498;
    hlslcc_movcTemp.x = x_506;
    let x_509 : bool = u_xlatb3.y;
    if (x_509) {
      let x_514 : f32 = u_xlat1.y;
      x_510 = x_514;
    } else {
      let x_517 : f32 = u_xlat2.y;
      x_510 = x_517;
    }
    let x_518 : f32 = x_510;
    hlslcc_movcTemp.y = x_518;
    let x_521 : bool = u_xlatb3.z;
    if (x_521) {
      let x_526 : f32 = u_xlat1.z;
      x_522 = x_526;
    } else {
      let x_529 : f32 = u_xlat2.z;
      x_522 = x_529;
    }
    let x_530 : f32 = x_522;
    hlslcc_movcTemp.z = x_530;
    let x_532 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_532;
    let x_533 : vec3<f32> = u_xlat1;
    let x_536 : vec4<f32> = x_25.x_UserLut_Params;
    let x_538 : vec3<f32> = (vec3<f32>(x_533.z, x_533.x, x_533.y) * vec3<f32>(x_536.z, x_536.z, x_536.z));
    let x_539 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
    let x_542 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_542);
    let x_545 : vec4<f32> = x_25.x_UserLut_Params;
    let x_547 : vec2<f32> = (vec2<f32>(x_545.x, x_545.y) * vec2<f32>(0.5f, 0.5f));
    let x_548 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_547.x, x_548.y, x_548.z, x_547.y);
    let x_550 : vec4<f32> = u_xlat2;
    let x_553 : vec4<f32> = x_25.x_UserLut_Params;
    let x_556 : vec4<f32> = u_xlat2;
    let x_558 : vec2<f32> = ((vec2<f32>(x_550.y, x_550.z) * vec2<f32>(x_553.x, x_553.y)) + vec2<f32>(x_556.x, x_556.w));
    let x_559 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_559.x, x_558.x, x_558.y, x_559.w);
    let x_561 : f32 = u_xlat15;
    let x_563 : f32 = x_25.x_UserLut_Params.y;
    let x_566 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_561 * x_563) + x_566);
    let x_573 : vec4<f32> = u_xlat2;
    let x_575 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_573.x, x_573.z), 0.0f);
    u_xlat3 = vec3<f32>(x_575.x, x_575.y, x_575.z);
    let x_579 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_579;
    u_xlat4.y = 0.0f;
    let x_582 : vec4<f32> = u_xlat2;
    let x_584 : vec2<f32> = u_xlat4;
    let x_585 : vec2<f32> = (vec2<f32>(x_582.x, x_582.z) + x_584);
    let x_586 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
    let x_591 : vec4<f32> = u_xlat2;
    let x_593 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_591.x, x_591.y), 0.0f);
    let x_594 : vec3<f32> = vec3<f32>(x_593.x, x_593.y, x_593.z);
    let x_595 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
    let x_598 : f32 = u_xlat1.z;
    let x_600 : f32 = x_25.x_UserLut_Params.z;
    let x_602 : f32 = u_xlat15;
    u_xlat15 = ((x_598 * x_600) + -(x_602));
    let x_605 : vec3<f32> = u_xlat3;
    let x_607 : vec4<f32> = u_xlat2;
    let x_609 : vec3<f32> = (-(x_605) + vec3<f32>(x_607.x, x_607.y, x_607.z));
    let x_610 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
    let x_612 : f32 = u_xlat15;
    let x_614 : vec4<f32> = u_xlat2;
    let x_617 : vec3<f32> = u_xlat3;
    let x_618 : vec3<f32> = ((vec3<f32>(x_612, x_612, x_612) * vec3<f32>(x_614.x, x_614.y, x_614.z)) + x_617);
    let x_619 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
    let x_621 : vec3<f32> = u_xlat1;
    let x_623 : vec4<f32> = u_xlat2;
    let x_625 : vec3<f32> = (-(x_621) + vec3<f32>(x_623.x, x_623.y, x_623.z));
    let x_626 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
    let x_629 : vec4<f32> = x_25.x_UserLut_Params;
    let x_631 : vec4<f32> = u_xlat2;
    let x_634 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_629.w, x_629.w, x_629.w) * vec3<f32>(x_631.x, x_631.y, x_631.z)) + x_634);
    let x_636 : vec3<f32> = u_xlat1;
    let x_639 : vec3<f32> = (x_636 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_640 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
    let x_642 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_642 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_646 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_646 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_650 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_650));
    let x_653 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_653 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_657 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_657);
    let x_661 : vec3<f32> = u_xlat1;
    let x_663 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_661.x, x_661.y, x_661.z, x_661.x));
    u_xlatb1 = vec3<bool>(x_663.x, x_663.y, x_663.z);
    let x_666 : bool = u_xlatb1.x;
    if (x_666) {
      let x_671 : f32 = u_xlat2.x;
      x_667 = x_671;
    } else {
      let x_674 : f32 = u_xlat3.x;
      x_667 = x_674;
    }
    let x_675 : f32 = x_667;
    u_xlat0.x = x_675;
    let x_678 : bool = u_xlatb1.y;
    if (x_678) {
      let x_683 : f32 = u_xlat2.y;
      x_679 = x_683;
    } else {
      let x_686 : f32 = u_xlat3.y;
      x_679 = x_686;
    }
    let x_687 : f32 = x_679;
    u_xlat0.y = x_687;
    let x_690 : bool = u_xlatb1.z;
    if (x_690) {
      let x_695 : f32 = u_xlat2.z;
      x_691 = x_695;
    } else {
      let x_698 : f32 = u_xlat3.z;
      x_691 = x_698;
    }
    let x_699 : f32 = x_691;
    u_xlat0.z = x_699;
  }
  let x_701 : vec4<f32> = u_xlat0;
  let x_704 : vec4<f32> = x_25.x_Lut_Params;
  let x_706 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(x_704.z, x_704.z, x_704.z));
  let x_707 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_706.x, x_706.y, x_707.z, x_706.z);
  let x_710 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_710);
  let x_713 : vec4<f32> = x_25.x_Lut_Params;
  let x_715 : vec2<f32> = (vec2<f32>(x_713.x, x_713.y) * vec2<f32>(0.5f, 0.5f));
  let x_716 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_715.x, x_715.y, x_716.z);
  let x_718 : vec4<f32> = u_xlat0;
  let x_721 : vec4<f32> = x_25.x_Lut_Params;
  let x_724 : vec3<f32> = u_xlat1;
  let x_726 : vec2<f32> = ((vec2<f32>(x_718.x, x_718.y) * vec2<f32>(x_721.x, x_721.y)) + vec2<f32>(x_724.x, x_724.y));
  let x_727 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_727.x, x_726.x, x_726.y);
  let x_729 : f32 = u_xlat15;
  let x_731 : f32 = x_25.x_Lut_Params.y;
  let x_734 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_729 * x_731) + x_734);
  let x_741 : vec3<f32> = u_xlat1;
  let x_743 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_741.x, x_741.z), 0.0f);
  let x_744 : vec3<f32> = vec3<f32>(x_743.x, x_743.y, x_743.z);
  let x_745 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_748 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_748;
  u_xlat0.y = 0.0f;
  let x_751 : vec4<f32> = u_xlat0;
  let x_753 : vec3<f32> = u_xlat1;
  let x_755 : vec2<f32> = (vec2<f32>(x_751.x, x_751.y) + vec2<f32>(x_753.x, x_753.z));
  let x_756 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
  let x_761 : vec4<f32> = u_xlat0;
  let x_763 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_761.x, x_761.y), 0.0f);
  u_xlat1 = vec3<f32>(x_763.x, x_763.y, x_763.z);
  let x_766 : f32 = u_xlat0.z;
  let x_768 : f32 = x_25.x_Lut_Params.z;
  let x_770 : f32 = u_xlat15;
  u_xlat0.x = ((x_766 * x_768) + -(x_770));
  let x_775 : vec4<f32> = u_xlat2;
  let x_778 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_775.x, x_775.y, x_775.z)) + x_778);
  let x_780 : vec4<f32> = u_xlat0;
  let x_782 : vec3<f32> = u_xlat5;
  let x_784 : vec4<f32> = u_xlat2;
  let x_786 : vec3<f32> = ((vec3<f32>(x_780.x, x_780.x, x_780.x) * x_782) + vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec2<f32> = vs_TEXCOORD0;
  let x_792 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_796 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_798 : vec2<f32> = ((x_789 * vec2<f32>(x_792.x, x_792.y)) + vec2<f32>(x_796.z, x_796.w));
  let x_799 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_798.x, x_798.y, x_799.z);
  let x_806 : vec3<f32> = u_xlat1;
  let x_809 : f32 = x_25.x_GlobalMipBias.x;
  let x_810 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_806.x, x_806.y), x_809);
  u_xlat15 = x_810.w;
  let x_812 : f32 = u_xlat15;
  u_xlat15 = (x_812 + -0.5f);
  let x_814 : f32 = u_xlat15;
  let x_815 : f32 = u_xlat15;
  u_xlat15 = (x_814 + x_815);
  let x_817 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_817.x, x_817.y, x_817.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_826 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_826);
  let x_831 : f32 = x_25.x_Grain_Params.y;
  let x_833 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_831 * -(x_833)) + 1.0f);
  let x_838 : f32 = u_xlat15;
  let x_840 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_838, x_838, x_838) * vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec3<f32> = u_xlat6;
  let x_846 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_843 * vec3<f32>(x_846.x, x_846.x, x_846.x));
  let x_849 : vec3<f32> = u_xlat6;
  let x_850 : vec3<f32> = u_xlat1;
  let x_853 : vec4<f32> = u_xlat0;
  let x_855 : vec3<f32> = ((x_849 * vec3<f32>(x_850.x, x_850.x, x_850.x)) + vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_861 : vec4<f32> = u_xlat0;
  let x_864 : vec3<f32> = log2(abs(vec3<f32>(x_861.x, x_861.y, x_861.z)));
  let x_865 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : vec4<f32> = u_xlat2;
  let x_869 : vec3<f32> = (vec3<f32>(x_867.x, x_867.y, x_867.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_870 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec4<f32> = u_xlat2;
  let x_874 : vec3<f32> = exp2(vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat2;
  let x_880 : vec3<f32> = ((vec3<f32>(x_877.x, x_877.y, x_877.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_881 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_884 : vec4<f32> = u_xlat0;
  let x_886 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_884.x, x_884.y, x_884.z, x_884.x));
  u_xlatb0 = vec3<bool>(x_886.x, x_886.y, x_886.z);
  let x_889 : bool = u_xlatb0.x;
  if (x_889) {
    let x_894 : f32 = u_xlat1.x;
    x_890 = x_894;
  } else {
    let x_897 : f32 = u_xlat2.x;
    x_890 = x_897;
  }
  let x_898 : f32 = x_890;
  u_xlat0.x = x_898;
  let x_901 : bool = u_xlatb0.y;
  if (x_901) {
    let x_906 : f32 = u_xlat1.y;
    x_902 = x_906;
  } else {
    let x_909 : f32 = u_xlat2.y;
    x_902 = x_909;
  }
  let x_910 : f32 = x_902;
  u_xlat0.y = x_910;
  let x_913 : bool = u_xlatb0.z;
  if (x_913) {
    let x_918 : f32 = u_xlat1.z;
    x_914 = x_918;
  } else {
    let x_921 : f32 = u_xlat2.z;
    x_914 = x_921;
  }
  let x_922 : f32 = x_914;
  u_xlat0.z = x_922;
  let x_924 : vec2<f32> = vs_TEXCOORD0;
  let x_927 : vec4<f32> = x_25.x_Dithering_Params;
  let x_931 : vec4<f32> = x_25.x_Dithering_Params;
  let x_933 : vec2<f32> = ((x_924 * vec2<f32>(x_927.x, x_927.y)) + vec2<f32>(x_931.z, x_931.w));
  let x_934 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_933.x, x_933.y, x_934.z);
  let x_941 : vec3<f32> = u_xlat1;
  let x_944 : f32 = x_25.x_GlobalMipBias.x;
  let x_945 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_941.x, x_941.y), x_944);
  u_xlat15 = x_945.w;
  let x_947 : f32 = u_xlat15;
  u_xlat15 = ((x_947 * 2.0f) + -1.0f);
  let x_951 : f32 = u_xlat15;
  u_xlatb1.x = (x_951 >= 0.0f);
  let x_955 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_955);
  let x_958 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_958)) + 1.0f);
  let x_962 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_962);
  let x_964 : f32 = u_xlat15;
  u_xlat15 = (-(x_964) + 1.0f);
  let x_967 : f32 = u_xlat15;
  let x_969 : f32 = u_xlat1.x;
  u_xlat15 = (x_967 * x_969);
  let x_971 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_971.x, x_971.y, x_971.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_974 : vec4<f32> = u_xlat0;
  let x_977 : vec3<f32> = log2(abs(vec3<f32>(x_974.x, x_974.y, x_974.z)));
  let x_978 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat2;
  let x_982 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_983 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : vec4<f32> = u_xlat2;
  let x_987 : vec3<f32> = exp2(vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : vec4<f32> = u_xlat2;
  let x_993 : vec3<f32> = ((vec3<f32>(x_990.x, x_990.y, x_990.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_994 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec4<f32> = u_xlat0;
  let x_998 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_996.x, x_996.y, x_996.z, x_996.x));
  u_xlatb0 = vec3<bool>(x_998.x, x_998.y, x_998.z);
  let x_1001 : bool = u_xlatb0.x;
  if (x_1001) {
    let x_1006 : f32 = u_xlat1.x;
    x_1002 = x_1006;
  } else {
    let x_1009 : f32 = u_xlat2.x;
    x_1002 = x_1009;
  }
  let x_1010 : f32 = x_1002;
  u_xlat0.x = x_1010;
  let x_1013 : bool = u_xlatb0.y;
  if (x_1013) {
    let x_1018 : f32 = u_xlat1.y;
    x_1014 = x_1018;
  } else {
    let x_1021 : f32 = u_xlat2.y;
    x_1014 = x_1021;
  }
  let x_1022 : f32 = x_1014;
  u_xlat0.y = x_1022;
  let x_1025 : bool = u_xlatb0.z;
  if (x_1025) {
    let x_1030 : f32 = u_xlat1.z;
    x_1026 = x_1030;
  } else {
    let x_1033 : f32 = u_xlat2.z;
    x_1026 = x_1033;
  }
  let x_1034 : f32 = x_1026;
  u_xlat0.z = x_1034;
  let x_1036 : f32 = u_xlat15;
  let x_1041 : vec4<f32> = u_xlat0;
  let x_1043 : vec3<f32> = ((vec3<f32>(x_1036, x_1036, x_1036) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1044 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1049 : vec4<f32> = u_xlat0;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1049.x, x_1049.y, x_1049.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1052 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat2;
  let x_1056 : vec3<f32> = (vec3<f32>(x_1054.x, x_1054.y, x_1054.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1057 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat2;
  let x_1062 : vec3<f32> = log2(abs(vec3<f32>(x_1059.x, x_1059.y, x_1059.z)));
  let x_1063 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1065 : vec4<f32> = u_xlat2;
  let x_1067 : vec3<f32> = (vec3<f32>(x_1065.x, x_1065.y, x_1065.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1068 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1070 : vec4<f32> = u_xlat2;
  let x_1072 : vec3<f32> = exp2(vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1073 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1075 : vec4<f32> = u_xlat0;
  let x_1077 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1075.x));
  u_xlatb0 = vec3<bool>(x_1077.x, x_1077.y, x_1077.z);
  let x_1080 : bool = u_xlatb0.x;
  if (x_1080) {
    let x_1085 : f32 = u_xlat1.x;
    x_1081 = x_1085;
  } else {
    let x_1088 : f32 = u_xlat2.x;
    x_1081 = x_1088;
  }
  let x_1089 : f32 = x_1081;
  u_xlat0.x = x_1089;
  let x_1092 : bool = u_xlatb0.y;
  if (x_1092) {
    let x_1097 : f32 = u_xlat1.y;
    x_1093 = x_1097;
  } else {
    let x_1100 : f32 = u_xlat2.y;
    x_1093 = x_1100;
  }
  let x_1101 : f32 = x_1093;
  u_xlat0.y = x_1101;
  let x_1104 : bool = u_xlatb0.z;
  if (x_1104) {
    let x_1109 : f32 = u_xlat1.z;
    x_1105 = x_1109;
  } else {
    let x_1112 : f32 = u_xlat2.z;
    x_1105 = x_1112;
  }
  let x_1113 : f32 = x_1105;
  u_xlat0.z = x_1113;
  let x_1117 : vec4<f32> = u_xlat0;
  let x_1120 : vec3<f32> = max(vec3<f32>(x_1117.x, x_1117.y, x_1117.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1121 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
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


