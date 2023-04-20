diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_BloomTexture_TexelSize : vec4<f32>,
  /* @offset(64) */
  x_Lut_Params : vec4<f32>,
  /* @offset(80) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(96) */
  x_Bloom_Params : vec4<f32>,
  /* @offset(112) */
  x_Bloom_RGBM : f32,
  /* @offset(128) */
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(144) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(160) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(192) */
  x_Grain_Params : vec2<f32>,
  /* @offset(208) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(224) */
  x_Bloom_Texture_TexelSize : vec4<f32>,
  /* @offset(240) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat14 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat17 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_216 : f32;
  var x_248 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_794 : f32;
  var x_806 : f32;
  var x_818 : f32;
  var x_987 : f32;
  var x_999 : f32;
  var x_1011 : f32;
  var x_1266 : f32;
  var x_1278 : f32;
  var x_1290 : f32;
  var x_1347 : f32;
  var x_1359 : f32;
  var x_1371 : f32;
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
  u_xlat14 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
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
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb8 = (0.0f < x_79);
  let x_81 : bool = u_xlatb8;
  if (x_81) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat8.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat8.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat8.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat8.y;
    u_xlat15 = (1.0f / x_115);
    let x_118 : f32 = u_xlat8.x;
    let x_119 : f32 = u_xlat15;
    u_xlat8.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat8;
    let x_129 : vec2<f32> = u_xlat14;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat22 = (1.0f / x_136);
    let x_138 : f32 = u_xlat22;
    let x_140 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat22 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat9 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_158);
    let x_160 : f32 = u_xlat9;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat9 = (x_166 * x_168);
    let x_171 : f32 = u_xlat9;
    u_xlat16.x = ((x_171 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_177 : f32 = u_xlat9;
    let x_179 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_177 * x_179) + 0.18014100193977355957f);
    let x_184 : f32 = u_xlat9;
    let x_186 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_184 * x_186) + -0.33029949665069580078f);
    let x_191 : f32 = u_xlat9;
    let x_193 : f32 = u_xlat16.x;
    u_xlat9 = ((x_191 * x_193) + 0.99986600875854492188f);
    let x_197 : f32 = u_xlat9;
    let x_199 : f32 = u_xlat2.x;
    u_xlat16.x = (x_197 * x_199);
    let x_204 : f32 = u_xlat1.x;
    u_xlatb23 = (1.0f < abs(x_204));
    let x_208 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_208 * -2.0f) + 1.57079637050628662109f);
    let x_214 : bool = u_xlatb23;
    if (x_214) {
      let x_220 : f32 = u_xlat16.x;
      x_216 = x_220;
    } else {
      x_216 = 0.0f;
    }
    let x_222 : f32 = x_216;
    u_xlat16.x = x_222;
    let x_225 : f32 = u_xlat2.x;
    let x_226 : f32 = u_xlat9;
    let x_229 : f32 = u_xlat16.x;
    u_xlat2.x = ((x_225 * x_226) + x_229);
    let x_233 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_233, 1.0f);
    let x_240 : f32 = u_xlat1.x;
    let x_242 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_240 < -(x_242));
    let x_247 : bool = u_xlatb1.x;
    if (x_247) {
      let x_252 : f32 = u_xlat2.x;
      x_248 = -(x_252);
    } else {
      let x_256 : f32 = u_xlat2.x;
      x_248 = x_256;
    }
    let x_257 : f32 = x_248;
    u_xlat1.x = x_257;
    let x_259 : f32 = u_xlat22;
    let x_261 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_259 * x_261) + -1.0f);
    let x_265 : vec4<f32> = u_xlat0;
    let x_267 : vec4<f32> = u_xlat1;
    let x_270 : vec2<f32> = u_xlat14;
    let x_271 : vec2<f32> = ((vec2<f32>(x_265.x, x_265.y) * vec2<f32>(x_267.x, x_267.x)) + x_270);
    let x_272 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_271.x, x_271.y, x_272.z);
  }
  let x_276 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_282 : vec4<f32> = x_25.x_RTHandleScale;
  let x_284 : vec2<f32> = ((-(vec2<f32>(x_276.x, x_276.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_282.x, x_282.y));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_285.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec3<f32> = u_xlat8;
  let x_291 : vec2<f32> = min(vec2<f32>(x_287.x, x_287.y), vec2<f32>(x_289.x, x_289.y));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_292.z, x_292.w);
  let x_304 : vec4<f32> = u_xlat0;
  let x_308 : f32 = x_25.x_GlobalMipBias.x;
  let x_309 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_304.x, x_304.y), x_308);
  let x_310 : vec3<f32> = vec3<f32>(x_309.x, x_309.y, x_309.z);
  let x_311 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_315 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_320 : vec4<f32> = x_25.x_RTHandleScale;
  let x_322 : vec2<f32> = ((-(vec2<f32>(x_315.x, x_315.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_320.x, x_320.y));
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_322.x, x_323.y, x_323.z, x_322.y);
  let x_325 : vec4<f32> = u_xlat1;
  let x_327 : vec3<f32> = u_xlat8;
  let x_329 : vec2<f32> = min(vec2<f32>(x_325.x, x_325.w), vec2<f32>(x_327.x, x_327.y));
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_330.y, x_330.z, x_329.y);
  let x_332 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  let x_339 : vec2<f32> = ((vec2<f32>(x_332.x, x_332.w) * vec2<f32>(x_336.z, x_336.w)) + vec2<f32>(0.5f, 0.5f));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_340.y, x_340.z, x_339.y);
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : vec2<f32> = floor(vec2<f32>(x_342.x, x_342.w));
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat1;
  let x_349 : vec2<f32> = fract(vec2<f32>(x_347.x, x_347.w));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_350.y, x_350.z, x_349.y);
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat3 = ((-(vec4<f32>(x_352.x, x_352.w, x_352.x, x_352.w)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_360 : vec4<f32> = u_xlat1;
  let x_362 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_360.x, x_360.w, x_360.x, x_360.w) * x_362) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat16 = ((vec2<f32>(x_366.x, x_366.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_372 : vec4<f32> = u_xlat1;
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec2<f32> = (vec2<f32>(x_372.x, x_372.w) * vec2<f32>(x_374.x, x_374.w));
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_379.x, x_379.y) * x_381) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_386.x, x_386.w, x_386.x, x_386.w) * x_388) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_392 : vec2<f32> = u_xlat16;
  let x_395 : vec2<f32> = (-(x_392) + vec2<f32>(1.0f, 1.0f));
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_396.y, x_396.z, x_395.y);
  let x_398 : vec4<f32> = u_xlat3;
  let x_401 : vec4<f32> = u_xlat1;
  let x_403 : vec2<f32> = (-(vec2<f32>(x_398.x, x_398.y)) + vec2<f32>(x_401.x, x_401.w));
  let x_404 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_403.x, x_404.y, x_404.z, x_403.y);
  let x_406 : vec4<f32> = u_xlat3;
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : vec2<f32> = (-(vec2<f32>(x_406.z, x_406.w)) + vec2<f32>(x_409.x, x_409.w));
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_411.x, x_412.y, x_412.z, x_411.y);
  let x_415 : vec2<f32> = u_xlat16;
  let x_416 : vec4<f32> = u_xlat3;
  u_xlat17 = (x_415 + vec2<f32>(x_416.z, x_416.w));
  let x_419 : vec4<f32> = u_xlat1;
  let x_421 : vec4<f32> = u_xlat3;
  let x_423 : vec2<f32> = (vec2<f32>(x_419.x, x_419.w) + vec2<f32>(x_421.x, x_421.y));
  let x_424 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
  let x_426 : vec2<f32> = u_xlat17;
  let x_430 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_426.x, x_426.y));
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
  let x_433 : vec2<f32> = u_xlat16;
  let x_434 : vec4<f32> = u_xlat4;
  let x_437 : vec2<f32> = ((x_433 * vec2<f32>(x_434.x, x_434.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_438.x, x_438.y, x_437.x, x_437.y);
  let x_440 : vec4<f32> = u_xlat3;
  let x_441 : vec2<f32> = vec2<f32>(x_440.x, x_440.y);
  u_xlat16 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_441.x, x_441.y));
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec2<f32> = u_xlat16;
  let x_450 : vec2<f32> = ((vec2<f32>(x_446.x, x_446.w) * x_448) + vec2<f32>(1.0f, 1.0f));
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
  let x_454 : vec4<f32> = u_xlat2;
  let x_456 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_454.x, x_454.y, x_454.x, x_454.y) + vec4<f32>(x_456.z, x_456.w, x_456.x, x_456.w));
  let x_459 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_459 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_462 : vec4<f32> = u_xlat5;
  let x_464 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_462 * vec4<f32>(x_464.x, x_464.y, x_464.x, x_464.y));
  let x_467 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_467, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_475 : vec4<f32> = u_xlat5;
  let x_477 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_475.x, x_475.y), 0.0f);
  u_xlat6 = x_477;
  let x_481 : vec4<f32> = u_xlat5;
  let x_483 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_481.z, x_481.w), 0.0f);
  u_xlat5 = x_483;
  let x_484 : vec4<f32> = u_xlat3;
  let x_486 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_484.x, x_484.x, x_484.x, x_484.x) * x_486);
  let x_488 : vec2<f32> = u_xlat17;
  let x_490 : vec4<f32> = u_xlat6;
  let x_492 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_488.x, x_488.x, x_488.x, x_488.x) * x_490) + x_492);
  let x_494 : vec4<f32> = u_xlat2;
  let x_496 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_494.x, x_494.y, x_494.x, x_494.y) + vec4<f32>(x_496.z, x_496.y, x_496.x, x_496.y));
  let x_499 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_499 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_501 : vec4<f32> = u_xlat2;
  let x_503 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat2 = (x_501 * vec4<f32>(x_503.x, x_503.y, x_503.x, x_503.y));
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_506, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_511 : vec4<f32> = u_xlat2;
  let x_513 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_511.x, x_511.y), 0.0f);
  u_xlat4 = x_513;
  let x_517 : vec4<f32> = u_xlat2;
  let x_519 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_517.z, x_517.w), 0.0f);
  u_xlat2 = x_519;
  let x_520 : vec4<f32> = u_xlat2;
  let x_521 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_520 * vec4<f32>(x_521.x, x_521.x, x_521.x, x_521.x));
  let x_524 : vec2<f32> = u_xlat17;
  let x_526 : vec4<f32> = u_xlat4;
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_524.x, x_524.x, x_524.x, x_524.x) * x_526) + x_528);
  let x_530 : vec4<f32> = u_xlat2;
  let x_531 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_530 * vec4<f32>(x_531.y, x_531.y, x_531.y, x_531.y));
  let x_534 : vec2<f32> = u_xlat17;
  let x_536 : vec4<f32> = u_xlat5;
  let x_538 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_534.y, x_534.y, x_534.y, x_534.y) * x_536) + x_538);
  let x_543 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb21 = (0.0f < x_543);
  let x_545 : bool = u_xlatb21;
  if (x_545) {
    let x_548 : vec4<f32> = u_xlat2;
    let x_550 : vec4<f32> = u_xlat2;
    let x_552 : vec3<f32> = (vec3<f32>(x_548.w, x_548.w, x_548.w) * vec3<f32>(x_550.x, x_550.y, x_550.z));
    let x_553 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
    let x_555 : vec4<f32> = u_xlat3;
    let x_559 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_560 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  }
  let x_562 : vec4<f32> = u_xlat2;
  let x_566 : vec4<f32> = x_25.x_Bloom_Params;
  let x_568 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_566.x, x_566.x, x_566.x));
  let x_569 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat2;
  let x_574 : vec4<f32> = x_25.x_Bloom_Params;
  let x_577 : vec4<f32> = u_xlat0;
  let x_579 : vec3<f32> = ((vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_574.y, x_574.z, x_574.w)) + vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_585 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_585);
  let x_587 : bool = u_xlatb21;
  if (x_587) {
    let x_590 : vec3<f32> = u_xlat8;
    let x_593 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_596 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) + -(vec2<f32>(x_593.x, x_593.y)));
    let x_597 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
    let x_599 : vec4<f32> = u_xlat1;
    let x_603 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_605 : vec2<f32> = (abs(vec2<f32>(x_599.x, x_599.y)) * vec2<f32>(x_603.z, x_603.z));
    let x_606 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_606.x, x_605.x, x_605.y, x_606.w);
    let x_609 : f32 = u_xlat1.y;
    let x_612 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_609 * x_612);
    let x_616 : vec4<f32> = u_xlat1;
    let x_618 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_616.x, x_616.z), vec2<f32>(x_618.x, x_618.z));
    let x_621 : f32 = u_xlat21;
    u_xlat21 = (-(x_621) + 1.0f);
    let x_624 : f32 = u_xlat21;
    u_xlat21 = max(x_624, 0.0f);
    let x_626 : f32 = u_xlat21;
    u_xlat21 = log2(x_626);
    let x_628 : f32 = u_xlat21;
    let x_630 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_628 * x_630);
    let x_632 : f32 = u_xlat21;
    u_xlat21 = exp2(x_632);
    let x_635 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_639 : vec3<f32> = (-(vec3<f32>(x_635.x, x_635.y, x_635.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_640 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
    let x_642 : f32 = u_xlat21;
    let x_644 : vec4<f32> = u_xlat1;
    let x_648 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_650 : vec3<f32> = ((vec3<f32>(x_642, x_642, x_642) * vec3<f32>(x_644.x, x_644.y, x_644.z)) + vec3<f32>(x_648.x, x_648.y, x_648.z));
    let x_651 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
    let x_653 : vec4<f32> = u_xlat0;
    let x_655 : vec4<f32> = u_xlat1;
    let x_657 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655.x, x_655.y, x_655.z));
    let x_658 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  }
  let x_660 : vec4<f32> = u_xlat0;
  let x_664 : vec4<f32> = x_25.x_Lut_Params;
  let x_666 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_664.w, x_664.w, x_664.w));
  let x_667 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat0;
  let x_673 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_674 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat0;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_684 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat1;
  let x_688 : vec4<f32> = u_xlat2;
  let x_693 : vec3<f32> = ((vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(x_688.x, x_688.y, x_688.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_694 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat0;
  let x_701 : vec3<f32> = ((vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_702 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat1;
  let x_706 : vec4<f32> = u_xlat0;
  let x_711 : vec3<f32> = ((vec3<f32>(x_704.x, x_704.y, x_704.z) * vec3<f32>(x_706.x, x_706.y, x_706.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_712 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat2;
  let x_716 : vec4<f32> = u_xlat0;
  let x_718 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) / vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat0;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_726 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_731 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat0;
  let x_737 : vec3<f32> = clamp(vec3<f32>(x_733.x, x_733.y, x_733.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_738 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_742 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_742);
  let x_744 : bool = u_xlatb21;
  if (x_744) {
    let x_747 : vec4<f32> = u_xlat0;
    let x_751 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_752 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
    let x_754 : vec4<f32> = u_xlat0;
    let x_756 : vec3<f32> = log2(vec3<f32>(x_754.x, x_754.y, x_754.z));
    let x_757 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
    let x_759 : vec4<f32> = u_xlat2;
    let x_763 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_764 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
    let x_766 : vec4<f32> = u_xlat2;
    let x_768 : vec3<f32> = exp2(vec3<f32>(x_766.x, x_766.y, x_766.z));
    let x_769 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
    let x_771 : vec4<f32> = u_xlat2;
    let x_778 : vec3<f32> = ((vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_779 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
    let x_784 : vec4<f32> = u_xlat0;
    let x_787 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_784.x, x_784.y, x_784.z, x_784.x));
    u_xlatb3 = vec3<bool>(x_787.x, x_787.y, x_787.z);
    let x_791 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_791;
    let x_793 : bool = u_xlatb3.x;
    if (x_793) {
      let x_798 : f32 = u_xlat1.x;
      x_794 = x_798;
    } else {
      let x_801 : f32 = u_xlat2.x;
      x_794 = x_801;
    }
    let x_802 : f32 = x_794;
    hlslcc_movcTemp.x = x_802;
    let x_805 : bool = u_xlatb3.y;
    if (x_805) {
      let x_810 : f32 = u_xlat1.y;
      x_806 = x_810;
    } else {
      let x_813 : f32 = u_xlat2.y;
      x_806 = x_813;
    }
    let x_814 : f32 = x_806;
    hlslcc_movcTemp.y = x_814;
    let x_817 : bool = u_xlatb3.z;
    if (x_817) {
      let x_822 : f32 = u_xlat1.z;
      x_818 = x_822;
    } else {
      let x_825 : f32 = u_xlat2.z;
      x_818 = x_825;
    }
    let x_826 : f32 = x_818;
    hlslcc_movcTemp.z = x_826;
    let x_828 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_828;
    let x_829 : vec4<f32> = u_xlat1;
    let x_832 : vec4<f32> = x_25.x_UserLut_Params;
    let x_834 : vec3<f32> = (vec3<f32>(x_829.z, x_829.x, x_829.y) * vec3<f32>(x_832.z, x_832.z, x_832.z));
    let x_835 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
    let x_838 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_838);
    let x_841 : vec4<f32> = x_25.x_UserLut_Params;
    let x_843 : vec2<f32> = (vec2<f32>(x_841.x, x_841.y) * vec2<f32>(0.5f, 0.5f));
    let x_844 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_843.x, x_844.y, x_844.z, x_843.y);
    let x_846 : vec4<f32> = u_xlat2;
    let x_849 : vec4<f32> = x_25.x_UserLut_Params;
    let x_852 : vec4<f32> = u_xlat2;
    let x_854 : vec2<f32> = ((vec2<f32>(x_846.y, x_846.z) * vec2<f32>(x_849.x, x_849.y)) + vec2<f32>(x_852.x, x_852.w));
    let x_855 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_855.x, x_854.x, x_854.y, x_855.w);
    let x_857 : f32 = u_xlat21;
    let x_859 : f32 = x_25.x_UserLut_Params.y;
    let x_862 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_857 * x_859) + x_862);
    let x_869 : vec4<f32> = u_xlat2;
    let x_871 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_869.x, x_869.z), 0.0f);
    let x_872 : vec3<f32> = vec3<f32>(x_871.x, x_871.y, x_871.z);
    let x_873 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
    let x_876 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_876;
    u_xlat4.y = 0.0f;
    let x_879 : vec4<f32> = u_xlat2;
    let x_881 : vec4<f32> = u_xlat4;
    let x_883 : vec2<f32> = (vec2<f32>(x_879.x, x_879.z) + vec2<f32>(x_881.x, x_881.y));
    let x_884 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_883.x, x_883.y, x_884.z, x_884.w);
    let x_889 : vec4<f32> = u_xlat2;
    let x_891 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_889.x, x_889.y), 0.0f);
    let x_892 : vec3<f32> = vec3<f32>(x_891.x, x_891.y, x_891.z);
    let x_893 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
    let x_896 : f32 = u_xlat1.z;
    let x_898 : f32 = x_25.x_UserLut_Params.z;
    let x_900 : f32 = u_xlat21;
    u_xlat21 = ((x_896 * x_898) + -(x_900));
    let x_903 : vec4<f32> = u_xlat3;
    let x_906 : vec4<f32> = u_xlat2;
    let x_908 : vec3<f32> = (-(vec3<f32>(x_903.x, x_903.y, x_903.z)) + vec3<f32>(x_906.x, x_906.y, x_906.z));
    let x_909 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
    let x_911 : f32 = u_xlat21;
    let x_913 : vec4<f32> = u_xlat2;
    let x_916 : vec4<f32> = u_xlat3;
    let x_918 : vec3<f32> = ((vec3<f32>(x_911, x_911, x_911) * vec3<f32>(x_913.x, x_913.y, x_913.z)) + vec3<f32>(x_916.x, x_916.y, x_916.z));
    let x_919 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
    let x_921 : vec4<f32> = u_xlat1;
    let x_924 : vec4<f32> = u_xlat2;
    let x_926 : vec3<f32> = (-(vec3<f32>(x_921.x, x_921.y, x_921.z)) + vec3<f32>(x_924.x, x_924.y, x_924.z));
    let x_927 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
    let x_930 : vec4<f32> = x_25.x_UserLut_Params;
    let x_932 : vec4<f32> = u_xlat2;
    let x_935 : vec4<f32> = u_xlat1;
    let x_937 : vec3<f32> = ((vec3<f32>(x_930.w, x_930.w, x_930.w) * vec3<f32>(x_932.x, x_932.y, x_932.z)) + vec3<f32>(x_935.x, x_935.y, x_935.z));
    let x_938 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
    let x_940 : vec4<f32> = u_xlat1;
    let x_944 : vec3<f32> = (vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_945 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
    let x_947 : vec4<f32> = u_xlat1;
    let x_951 : vec3<f32> = (vec3<f32>(x_947.x, x_947.y, x_947.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_952 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
    let x_954 : vec4<f32> = u_xlat3;
    let x_958 : vec3<f32> = (vec3<f32>(x_954.x, x_954.y, x_954.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_959 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
    let x_961 : vec4<f32> = u_xlat3;
    let x_964 : vec3<f32> = log2(abs(vec3<f32>(x_961.x, x_961.y, x_961.z)));
    let x_965 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
    let x_967 : vec4<f32> = u_xlat3;
    let x_971 : vec3<f32> = (vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_972 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
    let x_974 : vec4<f32> = u_xlat3;
    let x_976 : vec3<f32> = exp2(vec3<f32>(x_974.x, x_974.y, x_974.z));
    let x_977 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
    let x_981 : vec4<f32> = u_xlat1;
    let x_983 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_981.x, x_981.y, x_981.z, x_981.x));
    u_xlatb1 = vec3<bool>(x_983.x, x_983.y, x_983.z);
    let x_986 : bool = u_xlatb1.x;
    if (x_986) {
      let x_991 : f32 = u_xlat2.x;
      x_987 = x_991;
    } else {
      let x_994 : f32 = u_xlat3.x;
      x_987 = x_994;
    }
    let x_995 : f32 = x_987;
    u_xlat0.x = x_995;
    let x_998 : bool = u_xlatb1.y;
    if (x_998) {
      let x_1003 : f32 = u_xlat2.y;
      x_999 = x_1003;
    } else {
      let x_1006 : f32 = u_xlat3.y;
      x_999 = x_1006;
    }
    let x_1007 : f32 = x_999;
    u_xlat0.y = x_1007;
    let x_1010 : bool = u_xlatb1.z;
    if (x_1010) {
      let x_1015 : f32 = u_xlat2.z;
      x_1011 = x_1015;
    } else {
      let x_1018 : f32 = u_xlat3.z;
      x_1011 = x_1018;
    }
    let x_1019 : f32 = x_1011;
    u_xlat0.z = x_1019;
  }
  let x_1021 : vec4<f32> = u_xlat0;
  let x_1024 : vec4<f32> = x_25.x_Lut_Params;
  let x_1026 : vec3<f32> = (vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * vec3<f32>(x_1024.z, x_1024.z, x_1024.z));
  let x_1027 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1026.z);
  let x_1030 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1030);
  let x_1033 : vec4<f32> = x_25.x_Lut_Params;
  let x_1035 : vec2<f32> = (vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(0.5f, 0.5f));
  let x_1036 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat0;
  let x_1041 : vec4<f32> = x_25.x_Lut_Params;
  let x_1044 : vec4<f32> = u_xlat1;
  let x_1046 : vec2<f32> = ((vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(x_1041.x, x_1041.y)) + vec2<f32>(x_1044.x, x_1044.y));
  let x_1047 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1047.x, x_1046.x, x_1046.y, x_1047.w);
  let x_1049 : f32 = u_xlat21;
  let x_1051 : f32 = x_25.x_Lut_Params.y;
  let x_1054 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1049 * x_1051) + x_1054);
  let x_1061 : vec4<f32> = u_xlat1;
  let x_1063 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1061.x, x_1061.z), 0.0f);
  let x_1064 : vec3<f32> = vec3<f32>(x_1063.x, x_1063.y, x_1063.z);
  let x_1065 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1068 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1068;
  u_xlat0.y = 0.0f;
  let x_1071 : vec4<f32> = u_xlat0;
  let x_1073 : vec4<f32> = u_xlat1;
  let x_1075 : vec2<f32> = (vec2<f32>(x_1071.x, x_1071.y) + vec2<f32>(x_1073.x, x_1073.z));
  let x_1076 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
  let x_1081 : vec4<f32> = u_xlat0;
  let x_1083 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1081.x, x_1081.y), 0.0f);
  let x_1084 : vec3<f32> = vec3<f32>(x_1083.x, x_1083.y, x_1083.z);
  let x_1085 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
  let x_1088 : f32 = u_xlat0.z;
  let x_1090 : f32 = x_25.x_Lut_Params.z;
  let x_1092 : f32 = u_xlat21;
  u_xlat0.x = ((x_1088 * x_1090) + -(x_1092));
  let x_1097 : vec4<f32> = u_xlat2;
  let x_1100 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1097.x, x_1097.y, x_1097.z)) + vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat0;
  let x_1105 : vec3<f32> = u_xlat7;
  let x_1107 : vec4<f32> = u_xlat2;
  let x_1109 : vec3<f32> = ((vec3<f32>(x_1103.x, x_1103.x, x_1103.x) * x_1105) + vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : vec2<f32> = vs_TEXCOORD0;
  let x_1115 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1119 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1121 : vec2<f32> = ((x_1112 * vec2<f32>(x_1115.x, x_1115.y)) + vec2<f32>(x_1119.z, x_1119.w));
  let x_1122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
  let x_1129 : vec4<f32> = u_xlat1;
  let x_1132 : f32 = x_25.x_GlobalMipBias.x;
  let x_1133 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1129.x, x_1129.y), x_1132);
  u_xlat21 = x_1133.w;
  let x_1135 : f32 = u_xlat21;
  u_xlat21 = (x_1135 + -0.5f);
  let x_1137 : f32 = u_xlat21;
  let x_1138 : f32 = u_xlat21;
  u_xlat21 = (x_1137 + x_1138);
  let x_1140 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1140.x, x_1140.y, x_1140.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1149 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1149);
  let x_1154 : f32 = x_25.x_Grain_Params.y;
  let x_1156 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1154 * -(x_1156)) + 1.0f);
  let x_1161 : f32 = u_xlat21;
  let x_1163 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1161, x_1161, x_1161) * vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1166 : vec3<f32> = u_xlat8;
  let x_1169 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_1166 * vec3<f32>(x_1169.x, x_1169.x, x_1169.x));
  let x_1172 : vec3<f32> = u_xlat8;
  let x_1173 : vec4<f32> = u_xlat1;
  let x_1176 : vec4<f32> = u_xlat0;
  let x_1178 : vec3<f32> = ((x_1172 * vec3<f32>(x_1173.x, x_1173.x, x_1173.x)) + vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec4<f32> = u_xlat0;
  let x_1183 : vec3<f32> = sqrt(vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : vec2<f32> = vs_TEXCOORD0;
  let x_1189 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1193 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1195 : vec2<f32> = ((x_1186 * vec2<f32>(x_1189.x, x_1189.y)) + vec2<f32>(x_1193.z, x_1193.w));
  let x_1196 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
  let x_1203 : vec4<f32> = u_xlat1;
  let x_1206 : f32 = x_25.x_GlobalMipBias.x;
  let x_1207 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1203.x, x_1203.y), x_1206);
  u_xlat21 = x_1207.w;
  let x_1209 : f32 = u_xlat21;
  u_xlat21 = ((x_1209 * 2.0f) + -1.0f);
  let x_1213 : f32 = u_xlat21;
  u_xlatb1.x = (x_1213 >= 0.0f);
  let x_1217 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1217);
  let x_1220 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1220)) + 1.0f);
  let x_1224 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1224);
  let x_1226 : f32 = u_xlat21;
  u_xlat21 = (-(x_1226) + 1.0f);
  let x_1229 : f32 = u_xlat21;
  let x_1231 : f32 = u_xlat1.x;
  u_xlat21 = (x_1229 * x_1231);
  let x_1233 : vec4<f32> = u_xlat0;
  let x_1235 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.y, x_1233.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec4<f32> = u_xlat0;
  let x_1240 : vec3<f32> = log2(vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : vec4<f32> = u_xlat2;
  let x_1245 : vec3<f32> = (vec3<f32>(x_1243.x, x_1243.y, x_1243.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1246 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1248 : vec4<f32> = u_xlat2;
  let x_1250 : vec3<f32> = exp2(vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1253 : vec4<f32> = u_xlat2;
  let x_1256 : vec3<f32> = ((vec3<f32>(x_1253.x, x_1253.y, x_1253.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1257 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1260 : vec4<f32> = u_xlat0;
  let x_1262 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1260.x));
  u_xlatb0 = vec3<bool>(x_1262.x, x_1262.y, x_1262.z);
  let x_1265 : bool = u_xlatb0.x;
  if (x_1265) {
    let x_1270 : f32 = u_xlat1.x;
    x_1266 = x_1270;
  } else {
    let x_1273 : f32 = u_xlat2.x;
    x_1266 = x_1273;
  }
  let x_1274 : f32 = x_1266;
  u_xlat0.x = x_1274;
  let x_1277 : bool = u_xlatb0.y;
  if (x_1277) {
    let x_1282 : f32 = u_xlat1.y;
    x_1278 = x_1282;
  } else {
    let x_1285 : f32 = u_xlat2.y;
    x_1278 = x_1285;
  }
  let x_1286 : f32 = x_1278;
  u_xlat0.y = x_1286;
  let x_1289 : bool = u_xlatb0.z;
  if (x_1289) {
    let x_1294 : f32 = u_xlat1.z;
    x_1290 = x_1294;
  } else {
    let x_1297 : f32 = u_xlat2.z;
    x_1290 = x_1297;
  }
  let x_1298 : f32 = x_1290;
  u_xlat0.z = x_1298;
  let x_1300 : f32 = u_xlat21;
  let x_1305 : vec4<f32> = u_xlat0;
  let x_1307 : vec3<f32> = ((vec3<f32>(x_1300, x_1300, x_1300) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
  let x_1308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
  let x_1310 : vec4<f32> = u_xlat0;
  let x_1312 : vec3<f32> = (vec3<f32>(x_1310.x, x_1310.y, x_1310.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1313 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec4<f32> = u_xlat0;
  let x_1317 : vec3<f32> = (vec3<f32>(x_1315.x, x_1315.y, x_1315.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1318 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
  let x_1320 : vec4<f32> = u_xlat2;
  let x_1322 : vec3<f32> = (vec3<f32>(x_1320.x, x_1320.y, x_1320.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
  let x_1325 : vec4<f32> = u_xlat2;
  let x_1328 : vec3<f32> = log2(abs(vec3<f32>(x_1325.x, x_1325.y, x_1325.z)));
  let x_1329 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
  let x_1331 : vec4<f32> = u_xlat2;
  let x_1333 : vec3<f32> = (vec3<f32>(x_1331.x, x_1331.y, x_1331.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
  let x_1336 : vec4<f32> = u_xlat2;
  let x_1338 : vec3<f32> = exp2(vec3<f32>(x_1336.x, x_1336.y, x_1336.z));
  let x_1339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
  let x_1341 : vec4<f32> = u_xlat0;
  let x_1343 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1341.x));
  u_xlatb0 = vec3<bool>(x_1343.x, x_1343.y, x_1343.z);
  let x_1346 : bool = u_xlatb0.x;
  if (x_1346) {
    let x_1351 : f32 = u_xlat1.x;
    x_1347 = x_1351;
  } else {
    let x_1354 : f32 = u_xlat2.x;
    x_1347 = x_1354;
  }
  let x_1355 : f32 = x_1347;
  u_xlat0.x = x_1355;
  let x_1358 : bool = u_xlatb0.y;
  if (x_1358) {
    let x_1363 : f32 = u_xlat1.y;
    x_1359 = x_1363;
  } else {
    let x_1366 : f32 = u_xlat2.y;
    x_1359 = x_1366;
  }
  let x_1367 : f32 = x_1359;
  u_xlat0.y = x_1367;
  let x_1370 : bool = u_xlatb0.z;
  if (x_1370) {
    let x_1375 : f32 = u_xlat1.z;
    x_1371 = x_1375;
  } else {
    let x_1378 : f32 = u_xlat2.z;
    x_1371 = x_1378;
  }
  let x_1379 : f32 = x_1371;
  u_xlat0.z = x_1379;
  let x_1383 : vec4<f32> = u_xlat0;
  let x_1386 : vec3<f32> = max(vec3<f32>(x_1383.x, x_1383.y, x_1383.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1387 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
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


