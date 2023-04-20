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
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_228 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_503 : f32;
  var x_515 : f32;
  var x_527 : f32;
  var x_678 : f32;
  var x_690 : f32;
  var x_702 : f32;
  var x_839 : f32;
  var x_852 : f32;
  var x_864 : f32;
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
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_79);
  let x_81 : bool = u_xlatb6;
  if (x_81) {
    let x_85 : vec4<f32> = u_xlat1;
    let x_88 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat6 = (vec2<f32>(x_85.x, x_85.x) * vec2<f32>(x_88.x, x_88.y));
    let x_93 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_93);
    let x_100 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat6.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat6.y;
    u_xlat11 = (1.0f / x_113);
    let x_116 : f32 = u_xlat6.x;
    let x_117 : f32 = u_xlat11;
    u_xlat6.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat6;
    let x_127 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_132);
    let x_134 : f32 = u_xlat16;
    let x_136 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_139 * x_141);
    let x_145 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_145), 1.0f);
    let x_151 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_151), 1.0f);
    let x_154 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_154);
    let x_156 : f32 = u_xlat7;
    let x_158 : f32 = u_xlat2.x;
    u_xlat2.x = (x_156 * x_158);
    let x_162 : f32 = u_xlat2.x;
    let x_164 : f32 = u_xlat2.x;
    u_xlat7 = (x_162 * x_164);
    let x_167 : f32 = u_xlat7;
    u_xlat12 = ((x_167 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_172 : f32 = u_xlat7;
    let x_173 : f32 = u_xlat12;
    u_xlat12 = ((x_172 * x_173) + 0.18014100193977355957f);
    let x_177 : f32 = u_xlat7;
    let x_178 : f32 = u_xlat12;
    u_xlat12 = ((x_177 * x_178) + -0.33029949665069580078f);
    let x_182 : f32 = u_xlat7;
    let x_183 : f32 = u_xlat12;
    u_xlat7 = ((x_182 * x_183) + 0.99986600875854492188f);
    let x_187 : f32 = u_xlat7;
    let x_189 : f32 = u_xlat2.x;
    u_xlat12 = (x_187 * x_189);
    let x_193 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_193));
    let x_196 : f32 = u_xlat12;
    u_xlat12 = ((x_196 * -2.0f) + 1.57079637050628662109f);
    let x_201 : bool = u_xlatb17;
    let x_202 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_202, x_201);
    let x_205 : f32 = u_xlat2.x;
    let x_206 : f32 = u_xlat7;
    let x_208 : f32 = u_xlat12;
    u_xlat2.x = ((x_205 * x_206) + x_208);
    let x_212 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_212, 1.0f);
    let x_219 : f32 = u_xlat1.x;
    let x_221 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_219 < -(x_221));
    let x_226 : bool = u_xlatb1.x;
    if (x_226) {
      let x_232 : f32 = u_xlat2.x;
      x_228 = -(x_232);
    } else {
      let x_236 : f32 = u_xlat2.x;
      x_228 = x_236;
    }
    let x_237 : f32 = x_228;
    u_xlat1.x = x_237;
    let x_239 : f32 = u_xlat16;
    let x_241 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_239 * x_241) + -1.0f);
    let x_245 : vec4<f32> = u_xlat0;
    let x_247 : vec4<f32> = u_xlat1;
    let x_250 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_245.x, x_245.y) * vec2<f32>(x_247.x, x_247.x)) + x_250);
  }
  let x_254 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_260 : vec4<f32> = x_25.x_RTHandleScale;
  let x_262 : vec2<f32> = ((-(vec2<f32>(x_254.x, x_254.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_260.x, x_260.y));
  let x_263 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat0;
  let x_267 : vec2<f32> = u_xlat6;
  let x_268 : vec2<f32> = min(vec2<f32>(x_265.x, x_265.y), x_267);
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
  let x_281 : vec4<f32> = u_xlat0;
  let x_285 : f32 = x_25.x_GlobalMipBias.x;
  let x_286 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_281.x, x_281.y), x_285);
  let x_287 : vec3<f32> = vec3<f32>(x_286.x, x_286.y, x_286.z);
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_292 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_297 : vec4<f32> = x_25.x_RTHandleScale;
  let x_299 : vec2<f32> = ((-(vec2<f32>(x_292.x, x_292.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_297.x, x_297.y));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_300.y, x_300.z, x_299.y);
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : vec2<f32> = u_xlat6;
  let x_305 : vec2<f32> = min(vec2<f32>(x_302.x, x_302.w), x_304);
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_306.y, x_306.z, x_305.y);
  let x_312 : vec4<f32> = u_xlat1;
  let x_315 : f32 = x_25.x_GlobalMipBias.x;
  let x_316 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_312.x, x_312.w), x_315);
  u_xlat2 = x_316;
  let x_320 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_320);
  let x_322 : bool = u_xlatb15;
  if (x_322) {
    let x_325 : vec4<f32> = u_xlat2;
    let x_327 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_325.w, x_325.w, x_325.w) * vec3<f32>(x_327.x, x_327.y, x_327.z));
    let x_330 : vec3<f32> = u_xlat3;
    let x_333 : vec3<f32> = (x_330 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_334 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  }
  let x_336 : vec4<f32> = u_xlat2;
  let x_340 : vec4<f32> = x_25.x_Bloom_Params;
  let x_342 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_340.x, x_340.x, x_340.x));
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = x_25.x_Bloom_Params;
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_348.y, x_348.z, x_348.w)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_359 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_359);
  let x_361 : bool = u_xlatb15;
  if (x_361) {
    let x_364 : vec2<f32> = u_xlat6;
    let x_366 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_369 : vec2<f32> = (x_364 + -(vec2<f32>(x_366.x, x_366.y)));
    let x_370 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
    let x_372 : vec4<f32> = u_xlat1;
    let x_376 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_378 : vec2<f32> = (abs(vec2<f32>(x_372.x, x_372.y)) * vec2<f32>(x_376.z, x_376.z));
    let x_379 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_379.x, x_378.x, x_378.y, x_379.w);
    let x_382 : f32 = u_xlat1.y;
    let x_385 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_382 * x_385);
    let x_389 : vec4<f32> = u_xlat1;
    let x_391 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_389.x, x_389.z), vec2<f32>(x_391.x, x_391.z));
    let x_394 : f32 = u_xlat15;
    u_xlat15 = (-(x_394) + 1.0f);
    let x_397 : f32 = u_xlat15;
    u_xlat15 = max(x_397, 0.0f);
    let x_399 : f32 = u_xlat15;
    u_xlat15 = log2(x_399);
    let x_401 : f32 = u_xlat15;
    let x_403 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_401 * x_403);
    let x_405 : f32 = u_xlat15;
    u_xlat15 = exp2(x_405);
    let x_408 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_412 : vec3<f32> = (-(vec3<f32>(x_408.x, x_408.y, x_408.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_413 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
    let x_415 : f32 = u_xlat15;
    let x_417 : vec4<f32> = u_xlat1;
    let x_421 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_423 : vec3<f32> = ((vec3<f32>(x_415, x_415, x_415) * vec3<f32>(x_417.x, x_417.y, x_417.z)) + vec3<f32>(x_421.x, x_421.y, x_421.z));
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
    let x_426 : vec4<f32> = u_xlat0;
    let x_428 : vec4<f32> = u_xlat1;
    let x_430 : vec3<f32> = (vec3<f32>(x_426.x, x_426.y, x_426.z) * vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_431 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  }
  let x_433 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = x_25.x_Lut_Params;
  let x_439 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_437.w, x_437.w, x_437.w));
  let x_440 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat0;
  let x_446 : vec3<f32> = clamp(vec3<f32>(x_442.x, x_442.y, x_442.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_451 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_451);
  let x_453 : bool = u_xlatb15;
  if (x_453) {
    let x_456 : vec4<f32> = u_xlat0;
    let x_460 : vec3<f32> = (vec3<f32>(x_456.x, x_456.y, x_456.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_461 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
    let x_463 : vec4<f32> = u_xlat0;
    let x_465 : vec3<f32> = log2(vec3<f32>(x_463.x, x_463.y, x_463.z));
    let x_466 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
    let x_468 : vec4<f32> = u_xlat2;
    let x_472 : vec3<f32> = (vec3<f32>(x_468.x, x_468.y, x_468.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_473 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
    let x_475 : vec4<f32> = u_xlat2;
    let x_477 : vec3<f32> = exp2(vec3<f32>(x_475.x, x_475.y, x_475.z));
    let x_478 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_480 : vec4<f32> = u_xlat2;
    let x_487 : vec3<f32> = ((vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_488 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
    let x_493 : vec4<f32> = u_xlat0;
    let x_496 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_493.x, x_493.y, x_493.z, x_493.x));
    u_xlatb3 = vec3<bool>(x_496.x, x_496.y, x_496.z);
    let x_500 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_500;
    let x_502 : bool = u_xlatb3.x;
    if (x_502) {
      let x_507 : f32 = u_xlat1.x;
      x_503 = x_507;
    } else {
      let x_510 : f32 = u_xlat2.x;
      x_503 = x_510;
    }
    let x_511 : f32 = x_503;
    hlslcc_movcTemp.x = x_511;
    let x_514 : bool = u_xlatb3.y;
    if (x_514) {
      let x_519 : f32 = u_xlat1.y;
      x_515 = x_519;
    } else {
      let x_522 : f32 = u_xlat2.y;
      x_515 = x_522;
    }
    let x_523 : f32 = x_515;
    hlslcc_movcTemp.y = x_523;
    let x_526 : bool = u_xlatb3.z;
    if (x_526) {
      let x_531 : f32 = u_xlat1.z;
      x_527 = x_531;
    } else {
      let x_534 : f32 = u_xlat2.z;
      x_527 = x_534;
    }
    let x_535 : f32 = x_527;
    hlslcc_movcTemp.z = x_535;
    let x_537 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_537;
    let x_538 : vec4<f32> = u_xlat1;
    let x_541 : vec4<f32> = x_25.x_UserLut_Params;
    let x_543 : vec3<f32> = (vec3<f32>(x_538.z, x_538.x, x_538.y) * vec3<f32>(x_541.z, x_541.z, x_541.z));
    let x_544 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
    let x_547 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_547);
    let x_550 : vec4<f32> = x_25.x_UserLut_Params;
    let x_552 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) * vec2<f32>(0.5f, 0.5f));
    let x_553 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_552.x, x_553.y, x_553.z, x_552.y);
    let x_555 : vec4<f32> = u_xlat2;
    let x_558 : vec4<f32> = x_25.x_UserLut_Params;
    let x_561 : vec4<f32> = u_xlat2;
    let x_563 : vec2<f32> = ((vec2<f32>(x_555.y, x_555.z) * vec2<f32>(x_558.x, x_558.y)) + vec2<f32>(x_561.x, x_561.w));
    let x_564 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_564.x, x_563.x, x_563.y, x_564.w);
    let x_566 : f32 = u_xlat15;
    let x_568 : f32 = x_25.x_UserLut_Params.y;
    let x_571 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_566 * x_568) + x_571);
    let x_578 : vec4<f32> = u_xlat2;
    let x_580 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_578.x, x_578.z), 0.0f);
    u_xlat3 = vec3<f32>(x_580.x, x_580.y, x_580.z);
    let x_584 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_584;
    u_xlat4.y = 0.0f;
    let x_587 : vec4<f32> = u_xlat2;
    let x_589 : vec2<f32> = u_xlat4;
    let x_590 : vec2<f32> = (vec2<f32>(x_587.x, x_587.z) + x_589);
    let x_591 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
    let x_596 : vec4<f32> = u_xlat2;
    let x_598 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_596.x, x_596.y), 0.0f);
    let x_599 : vec3<f32> = vec3<f32>(x_598.x, x_598.y, x_598.z);
    let x_600 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
    let x_603 : f32 = u_xlat1.z;
    let x_605 : f32 = x_25.x_UserLut_Params.z;
    let x_607 : f32 = u_xlat15;
    u_xlat15 = ((x_603 * x_605) + -(x_607));
    let x_610 : vec3<f32> = u_xlat3;
    let x_612 : vec4<f32> = u_xlat2;
    let x_614 : vec3<f32> = (-(x_610) + vec3<f32>(x_612.x, x_612.y, x_612.z));
    let x_615 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
    let x_617 : f32 = u_xlat15;
    let x_619 : vec4<f32> = u_xlat2;
    let x_622 : vec3<f32> = u_xlat3;
    let x_623 : vec3<f32> = ((vec3<f32>(x_617, x_617, x_617) * vec3<f32>(x_619.x, x_619.y, x_619.z)) + x_622);
    let x_624 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
    let x_626 : vec4<f32> = u_xlat1;
    let x_629 : vec4<f32> = u_xlat2;
    let x_631 : vec3<f32> = (-(vec3<f32>(x_626.x, x_626.y, x_626.z)) + vec3<f32>(x_629.x, x_629.y, x_629.z));
    let x_632 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
    let x_635 : vec4<f32> = x_25.x_UserLut_Params;
    let x_637 : vec4<f32> = u_xlat2;
    let x_640 : vec4<f32> = u_xlat1;
    let x_642 : vec3<f32> = ((vec3<f32>(x_635.w, x_635.w, x_635.w) * vec3<f32>(x_637.x, x_637.y, x_637.z)) + vec3<f32>(x_640.x, x_640.y, x_640.z));
    let x_643 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
    let x_645 : vec4<f32> = u_xlat1;
    let x_649 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_650 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
    let x_652 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_652.x, x_652.y, x_652.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_657 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_657 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_661 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_661));
    let x_664 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_664 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_668 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_668);
    let x_672 : vec4<f32> = u_xlat1;
    let x_674 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_672.x, x_672.y, x_672.z, x_672.x));
    u_xlatb1 = vec3<bool>(x_674.x, x_674.y, x_674.z);
    let x_677 : bool = u_xlatb1.x;
    if (x_677) {
      let x_682 : f32 = u_xlat2.x;
      x_678 = x_682;
    } else {
      let x_685 : f32 = u_xlat3.x;
      x_678 = x_685;
    }
    let x_686 : f32 = x_678;
    u_xlat0.x = x_686;
    let x_689 : bool = u_xlatb1.y;
    if (x_689) {
      let x_694 : f32 = u_xlat2.y;
      x_690 = x_694;
    } else {
      let x_697 : f32 = u_xlat3.y;
      x_690 = x_697;
    }
    let x_698 : f32 = x_690;
    u_xlat0.y = x_698;
    let x_701 : bool = u_xlatb1.z;
    if (x_701) {
      let x_706 : f32 = u_xlat2.z;
      x_702 = x_706;
    } else {
      let x_709 : f32 = u_xlat3.z;
      x_702 = x_709;
    }
    let x_710 : f32 = x_702;
    u_xlat0.z = x_710;
  }
  let x_712 : vec4<f32> = u_xlat0;
  let x_715 : vec4<f32> = x_25.x_Lut_Params;
  let x_717 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_715.z, x_715.z, x_715.z));
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_717.z);
  let x_721 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_721);
  let x_724 : vec4<f32> = x_25.x_Lut_Params;
  let x_726 : vec2<f32> = (vec2<f32>(x_724.x, x_724.y) * vec2<f32>(0.5f, 0.5f));
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
  let x_729 : vec4<f32> = u_xlat0;
  let x_732 : vec4<f32> = x_25.x_Lut_Params;
  let x_735 : vec4<f32> = u_xlat1;
  let x_737 : vec2<f32> = ((vec2<f32>(x_729.x, x_729.y) * vec2<f32>(x_732.x, x_732.y)) + vec2<f32>(x_735.x, x_735.y));
  let x_738 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_738.x, x_737.x, x_737.y, x_738.w);
  let x_740 : f32 = u_xlat15;
  let x_742 : f32 = x_25.x_Lut_Params.y;
  let x_745 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_740 * x_742) + x_745);
  let x_752 : vec4<f32> = u_xlat1;
  let x_754 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_752.x, x_752.z), 0.0f);
  let x_755 : vec3<f32> = vec3<f32>(x_754.x, x_754.y, x_754.z);
  let x_756 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_759 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_759;
  u_xlat0.y = 0.0f;
  let x_762 : vec4<f32> = u_xlat0;
  let x_764 : vec4<f32> = u_xlat1;
  let x_766 : vec2<f32> = (vec2<f32>(x_762.x, x_762.y) + vec2<f32>(x_764.x, x_764.z));
  let x_767 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
  let x_772 : vec4<f32> = u_xlat0;
  let x_774 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_772.x, x_772.y), 0.0f);
  let x_775 : vec3<f32> = vec3<f32>(x_774.x, x_774.y, x_774.z);
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_779 : f32 = u_xlat0.z;
  let x_781 : f32 = x_25.x_Lut_Params.z;
  let x_783 : f32 = u_xlat15;
  u_xlat0.x = ((x_779 * x_781) + -(x_783));
  let x_788 : vec4<f32> = u_xlat2;
  let x_791 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_788.x, x_788.y, x_788.z)) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat0;
  let x_796 : vec3<f32> = u_xlat5;
  let x_798 : vec4<f32> = u_xlat2;
  let x_800 : vec3<f32> = ((vec3<f32>(x_794.x, x_794.x, x_794.x) * x_796) + vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat0;
  let x_805 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat0;
  let x_811 : vec3<f32> = log2(abs(vec3<f32>(x_808.x, x_808.y, x_808.z)));
  let x_812 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat2;
  let x_816 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_817 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat2;
  let x_821 : vec3<f32> = exp2(vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : vec4<f32> = u_xlat2;
  let x_827 : vec3<f32> = ((vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_828 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_831 : vec4<f32> = u_xlat0;
  let x_833 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_831.x, x_831.y, x_831.z, x_831.x));
  u_xlatb0 = vec3<bool>(x_833.x, x_833.y, x_833.z);
  let x_838 : bool = u_xlatb0.x;
  if (x_838) {
    let x_843 : f32 = u_xlat1.x;
    x_839 = x_843;
  } else {
    let x_846 : f32 = u_xlat2.x;
    x_839 = x_846;
  }
  let x_847 : f32 = x_839;
  SV_Target0.x = x_847;
  let x_851 : bool = u_xlatb0.y;
  if (x_851) {
    let x_856 : f32 = u_xlat1.y;
    x_852 = x_856;
  } else {
    let x_859 : f32 = u_xlat2.y;
    x_852 = x_859;
  }
  let x_860 : f32 = x_852;
  SV_Target0.y = x_860;
  let x_863 : bool = u_xlatb0.z;
  if (x_863) {
    let x_868 : f32 = u_xlat1.z;
    x_864 = x_868;
  } else {
    let x_871 : f32 = u_xlat2.z;
    x_864 = x_871;
  }
  let x_872 : f32 = x_864;
  SV_Target0.z = x_872;
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


